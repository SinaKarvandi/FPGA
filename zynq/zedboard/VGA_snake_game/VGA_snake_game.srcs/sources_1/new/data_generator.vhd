library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity data_generator is
    Port ( i_clk : in STD_LOGIC;
           i_reset_n : in STD_LOGIC;
           o_data : out STD_LOGIC_VECTOR (23 downto 0);
           i_arrow_left : in STD_LOGIC;
           i_arrow_right : in STD_LOGIC;
           i_arrow_up : in STD_LOGIC;
           i_arrow_down : in STD_LOGIC;
           o_led : out STD_LOGIC_VECTOR (4 downto 0);
           i_pause_button : in STD_LOGIC;
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
    constant SYSTEM_CLOCK_FREQUENCY : INTEGER := 148_500_000;

    ----------------------------------- Types ----------------------------------
    type STATE_TYPE is (SHOW_SCREEN,
                        PAUSE_SCREEN,
                        NOT_INITIALIZED,
                        IN_THE_MIDDLE_OF_INITIALIZATION,
                        CHANGING_STATE_EVENT
                        ); 
    -------------------------------- Debouncer ---------------------------------
    component debounce
          GENERIC(
            clk_freq    : INTEGER := 100_000_000;  --system clock frequency in Hz
            stable_time : INTEGER := 10);         --time button must remain stable in ms
          PORT(
            clk     : IN  STD_LOGIC;  --input clock
            reset_n : IN  STD_LOGIC;  --asynchronous active low reset
            button  : IN  STD_LOGIC;  --input signal to be debounced
            result  : OUT STD_LOGIC); --debounced end 
    end component;
    
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
               i_write : in STD_LOGIC;
               i_index_row : in STD_LOGIC_VECTOR(31 downto 0); -- index to array (row)
               i_index_column : in STD_LOGIC_VECTOR(31 downto 0); -- index to array (column)
               i_color : in STD_LOGIC_VECTOR(11 downto 0); -- if the 'i_write' is high, this is the color to be changed
               o_data : out STD_LOGIC_VECTOR(23 downto 0)
             );
    end component;
    
    --------------------------- Next Move Indicator ----------------------------
    
    component next_move
    Generic ( g_system_clock : integer 
    );
    Port ( i_clk : in STD_LOGIC;
           i_reset_n : in STD_LOGIC;
           i_enable : in STD_LOGIC;
           i_up_arrow : in STD_LOGIC;
           i_down_arrow : in STD_LOGIC;
           i_left_arrow : in STD_LOGIC;
           i_right_arrow : in STD_LOGIC;
           o_perform_next_move : out STD_LOGIC;
           o_led : out STD_LOGIC_VECTOR (4 downto 0);
           o_output_mask : out STD_LOGIC_VECTOR (3 downto 0));
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
    signal state : STATE_TYPE := NOT_INITIALIZED;
    
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
    signal is_initialize_completed : STD_LOGIC;
    
    signal stable_input_up : STD_LOGIC;
    signal stable_input_down : STD_LOGIC;
    signal stable_input_right : STD_LOGIC;
    signal stable_input_left : STD_LOGIC;
    signal stable_input_pause : STD_LOGIC;
    signal movement_input_mask : STD_LOGIC_VECTOR(3 downto 0);
    signal enable_movement : STD_LOGIC := '0';
    signal perform_movement : STD_LOGIC;

    signal snake_current_head_index_row : INTEGER := 0;
    signal snake_current_head_index_column : INTEGER := 0;
    
    signal pause_arrow_pre_activated : std_logic := '0';
    signal pause_arrow_rising : std_logic := '0';
    
begin

    -------------------------- Movement and pause button  ----------------------------
    o_led(4) <= not enable_movement;
    pause_arrow_pre_activated <= stable_input_pause when rising_edge(i_clk);
    pause_arrow_rising <= (not pause_arrow_pre_activated) and stable_input_pause;

    -------------------------- Port Map (Debouncer) ----------------------------
    stable_input_up <= i_arrow_up;
--    ubtn : debounce
--          GENERIC Map(
--            clk_freq    => SYSTEM_CLOCK_FREQUENCY,  --system clock frequency in Hz
--            stable_time => 10)         --time button must remain stable in ms
--          PORT MAP(
--            clk    => i_clk,  --input clock
--            reset_n => i_reset_n,  --asynchronous active low reset
--            button  => i_arrow_up,  --input signal to be debounced
--            result => stable_input_up); --debounced end 
            
    dbtn : debounce
          GENERIC Map(
            clk_freq    => SYSTEM_CLOCK_FREQUENCY,  --system clock frequency in Hz
            stable_time => 10)         --time button must remain stable in ms
          PORT MAP(
            clk    => i_clk,  --input clock
            reset_n => i_reset_n,  --asynchronous active low reset
            button  => i_arrow_down,  --input signal to be debounced
            result => stable_input_down); --debounced end 
            
    lbtn : debounce
          GENERIC Map(
            clk_freq    => SYSTEM_CLOCK_FREQUENCY,  --system clock frequency in Hz
            stable_time => 10)         --time button must remain stable in ms
          PORT MAP(
            clk    => i_clk,  --input clock
            reset_n => i_reset_n,  --asynchronous active low reset
            button  => i_arrow_left,  --input signal to be debounced
            result => stable_input_left); --debounced end 
            
    rbtn : debounce
          GENERIC Map(
            clk_freq    => SYSTEM_CLOCK_FREQUENCY,  --system clock frequency in Hz
            stable_time => 10)         --time button must remain stable in ms
          PORT MAP(
            clk    => i_clk,  --input clock
            reset_n => i_reset_n,  --asynchronous active low reset
            button  => i_arrow_right,  --input signal to be debounced
            result => stable_input_right); --debounced end
             
    pbtn : debounce
          GENERIC Map(
            clk_freq    => SYSTEM_CLOCK_FREQUENCY,  --system clock frequency in Hz
            stable_time => 10)         --time button must remain stable in ms
          PORT MAP(
            clk    => i_clk,  --input clock
            reset_n => i_reset_n,  --asynchronous active low reset
            button  => i_pause_button,  --input signal to be debounced
            result => stable_input_pause); --debounced end 
    
    ---------------------------- Next Move Indicator ------------------------------
      nmove : next_move 
        Generic Map ( g_system_clock => SYSTEM_CLOCK_FREQUENCY
        )
        Port Map ( i_clk => i_clk,
               i_reset_n => i_reset_n,
               i_enable => enable_movement,
               i_up_arrow => stable_input_up,
               i_down_arrow => stable_input_down,
               i_left_arrow => stable_input_left,
               i_right_arrow => stable_input_right,
               o_perform_next_move => perform_movement,
               o_led => o_led,
               o_output_mask => movement_input_mask);
    
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
        variable snake_current_head_index_row_temp : integer := 0;
        variable snake_current_head_index_column_temp : integer := 0;
    begin
        if (rising_edge(i_clk)) then
        
            if (i_reset_n = '0') then 
                state <= NOT_INITIALIZED;
                enable_movement <= '0'; 
                
                -- get the head of the snake
                snake_current_head_index_row <= (GLOBAL_WIDTH/GLOBAL_SQUARE_SIZE/2) - 1;
                snake_current_head_index_column <= ((GLOBAL_HEIGHT/GLOBAL_SQUARE_SIZE)/2) - (GLOBAL_SNAKE_LEN/2);
            else
                case state is
                    when NOT_INITIALIZED => 
                        -- initialize the design field
                        enable_movement <= '0';
                        state <= IN_THE_MIDDLE_OF_INITIALIZATION;
                        
                    when IN_THE_MIDDLE_OF_INITIALIZATION =>
                        -- writing the initial fields
                        perform_write <= '1';
                        index_row <= index_row_write;
                        index_column <= index_column_write;
                        color_write <= temp_color_write;
        
                        if is_initialize_completed = '1' then
                            state <= SHOW_SCREEN;
                            enable_movement <= '1';
                        end if;
                        
                    when PAUSE_SCREEN =>
                        enable_movement <= not enable_movement;
                        state <= SHOW_SCREEN;
                        
                    when CHANGING_STATE_EVENT =>
                        --- PERFORM MOVEMENT HEREEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE 
       
                        if movement_input_mask = "1000" then
                            -- up
                            snake_current_head_index_column_temp := snake_current_head_index_column - 1;
                            snake_current_head_index_row_temp := snake_current_head_index_row;
                            
                        elsif movement_input_mask = "0100" then
                            -- down
                            snake_current_head_index_column_temp := snake_current_head_index_column + 1;
                            snake_current_head_index_row_temp := snake_current_head_index_row;
                            
                        elsif movement_input_mask = "0010" then
                            -- left
                            snake_current_head_index_column_temp := snake_current_head_index_column;
                            snake_current_head_index_row_temp := snake_current_head_index_row - 1;
                                                        
                        elsif movement_input_mask = "0001" then
                            --right
                            snake_current_head_index_column_temp := snake_current_head_index_column;
                            snake_current_head_index_row_temp := snake_current_head_index_row + 1;                  
                        end if;
                        
                        perform_write <= '1';
                        --is_running <= '0';
                        snake_current_head_index_row <= snake_current_head_index_row_temp;
                        snake_current_head_index_column <= snake_current_head_index_column_temp;
                        
                        index_row <= std_logic_vector(to_unsigned((snake_current_head_index_row_temp), 32));
                        index_column <= std_logic_vector(to_unsigned((snake_current_head_index_column_temp), 32));
                        state <= SHOW_SCREEN;
                        color_write <= x"328";
                        
                    when others => -- like SHOW_SCREEN 
                        -- show the design fields
                        index_row <= index_row_read;
                        index_column <= index_column_read;
                        perform_write <= '0';
                        is_running <= '1';
                        
                        -- check for indicators of an "event" or a "pause"
                        if pause_arrow_rising = '1' then
                            state <= PAUSE_SCREEN;
                        elsif perform_movement = '1' then
                            state <= CHANGING_STATE_EVENT;
                        end if;
                        
                end case;        
            end if;        
        end if;
    end process;
    
    
end Behavioral;
