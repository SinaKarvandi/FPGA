library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity data_generator is
    Port ( i_clk : in STD_LOGIC;
           i_reset_n : in STD_LOGIC;
           o_data : out STD_LOGIC_VECTOR (23 downto 0);
           o_data_valid : out STD_LOGIC;
           i_data_ready : in STD_LOGIC;
           o_sof : out STD_LOGIC; -- Start Of Frame | Tuser signal
           o_eol : out STD_LOGIC); -- End Of Line | Tlast signal
end data_generator;

architecture Behavioral of data_generator is
    
    -------------------------------- Constants ---------------------------------
    constant GLOBAL_WIDTH : INTEGER := 1920;
    constant GLOBAL_HEIGHT : INTEGER := 1080;
    constant GLOBAL_SQUARE_SIZE : INTEGER := 64;
    constant GLOBAL_SNAKE_LEN : INTEGER := 4;


    -------------------------- VGA Display Interface ---------------------------
    component display_interface
        Generic ( g_width : integer;
                  g_height : integer;
                  g_square_size : integer
            ); 
        Port ( i_clk : in STD_LOGIC;
               i_reset_n : in STD_LOGIC;
               i_pause : in STD_LOGIC;
               o_data_valid : out STD_LOGIC;
               i_data_ready : in STD_LOGIC;
               o_sof : out STD_LOGIC; -- Start Of Frame | Tuser signal
               o_eol : out STD_LOGIC; -- End Of Line | Tlast signal
               o_index_row : out STD_LOGIC_VECTOR(31 downto 0); -- index to array (row)
               o_index_column : out STD_LOGIC_VECTOR(31 downto 0) -- index to array (column)
               );
    end component;

    ------------------------------ Graphic Memory ------------------------------
    component graphic_memory 
        Generic ( g_width : integer;
              g_height : integer;
              g_square_size : integer
        );
        Port ( i_clk : in STD_LOGIC;
               i_reset_n : in STD_LOGIC;
               i_pause : in STD_LOGIC;
               i_write : in STD_LOGIC;
               i_index_row : in STD_LOGIC_VECTOR(31 downto 0); -- index to array (row)
               i_index_column : in STD_LOGIC_VECTOR(31 downto 0); -- index to array (column)
               i_color : in STD_LOGIC_VECTOR(11 downto 0); -- if the 'i_write' is high, this is the color to be changed
               o_data : out STD_LOGIC_VECTOR(23 downto 0)
             );
    end component;
    
    ---------------------------- Fields Initializer ----------------------------
    component field_maker 
        Generic ( g_width : integer;
                  g_height : integer;
                  g_square_size : integer;
                  g_snake_len : integer
               );
        Port ( i_clk : in STD_LOGIC;
               i_reset_n : in STD_LOGIC;
               o_change_graphic_buffer : out STD_LOGIC;
               o_change_color : out STD_LOGIC_VECTOR(11 downto 0);
               o_change_graphic_row : out STD_LOGIC_VECTOR(31 downto 0);
               o_change_graphic_column : out STD_LOGIC_VECTOR(31 downto 0)
               );
    end component;
        
    ---------------------------------- Signals ----------------------------------
    signal index_row : STD_LOGIC_VECTOR(31 downto 0);
    signal index_column : STD_LOGIC_VECTOR(31 downto 0);
    
    signal index_row_read : STD_LOGIC_VECTOR(31 downto 0);
    signal index_column_read : STD_LOGIC_VECTOR(31 downto 0);

    signal index_row_write : STD_LOGIC_VECTOR(31 downto 0);
    signal index_column_write : STD_LOGIC_VECTOR(31 downto 0);
    
    signal color_write : STD_LOGIC_VECTOR(11 downto 0);
    signal temp_color_write : STD_LOGIC_VECTOR(11 downto 0);
    signal perform_write : STD_LOGIC;
    
    signal is_running : STD_LOGIC := '0';
    signal is_initialized : STD_LOGIC := '0';
    signal is_initializing : STD_LOGIC := '0';
    signal is_initialize_completed : STD_LOGIC;

begin

    -------------------------- Port Map (VGA Interface) ----------------------------
    VGA_INTERFACE : display_interface
        Generic Map ( g_width => GLOBAL_WIDTH,
              g_height => GLOBAL_HEIGHT,
              g_square_size => GLOBAL_SQUARE_SIZE
        )
        Port Map ( i_clk => i_clk,
               i_reset_n => i_reset_n,
               i_pause => not is_running,
               o_data_valid => o_data_valid,
               i_data_ready => i_data_ready,
               o_sof => o_sof, -- Start Of Frame | Tuser signal
               o_eol => o_eol, -- End Of Line | Tlast signal
               o_index_row => index_row_read, -- index to array (row)
               o_index_column => index_column_read -- index to array (column)
               );
               
    -------------------------- Port Map (Graphic Memory) ---------------------------
    GRAPHIC_MEM : graphic_memory 
        Generic Map ( g_width => GLOBAL_WIDTH,
              g_height => GLOBAL_HEIGHT,
              g_square_size => GLOBAL_SQUARE_SIZE
        )
        Port Map( i_clk => i_clk,
               i_reset_n => i_reset_n,
               i_pause => not is_running,
               i_write => perform_write,
               i_index_row => index_row, -- index to array (row)
               i_index_column => index_column, -- index to array (column)
               i_color => color_write, -- if the 'i_write' is high, this is the color to be changed
               o_data => o_data
             );
             
    ------------------------------ Initializing Design ------------------------------
    FIELD_START : field_maker 
        Generic Map ( g_width => GLOBAL_WIDTH,
              g_height => GLOBAL_HEIGHT,
              g_square_size => GLOBAL_SQUARE_SIZE,
              g_snake_len => GLOBAL_SNAKE_LEN
        )
        Port Map ( i_clk => i_clk,
               i_reset_n => i_reset_n,
               o_change_graphic_buffer => is_initialize_completed,
               o_change_color => temp_color_write,
               o_change_graphic_row => index_row_write,
               o_change_graphic_column => index_column_write
               );
    
    ------------------------ Handling concurrent BUS access -------------------------
    process (i_clk)
    begin
        if (rising_edge(i_clk)) then
            if (i_reset_n = '0') then 
                is_initialized <= '0';
            elsif is_initialized = '0' then 
                -- initialize the design field
                is_initializing <= '1';
                is_initialized <= '1';
            elsif is_initializing = '1' then
                -- writing the initial fields
                perform_write <= '1';
                index_row <= index_row_write;
                index_column <= index_column_write;
                color_write <= temp_color_write;

                if is_initialize_completed = '1' then
                    is_initializing <= '0';
                end if;
            else 
                -- show the design field
                index_row <= index_row_read;
                index_column <= index_column_read;
                perform_write <= '0';
                is_running <= '1';
                
            end if;
        end if;
    end process;
    
    
end Behavioral;
