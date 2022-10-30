library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity display_interface is
    Generic ( g_width : integer;
              g_height : integer;
              g_square_size : integer
        );
    Port ( i_clk : in STD_LOGIC;
           i_reset_n : in STD_LOGIC;
           i_pause : in STD_LOGIC;
           o_data : out STD_LOGIC_VECTOR (23 downto 0);
           o_data_valid : out STD_LOGIC;
           i_data_ready : in STD_LOGIC;
           o_sof : out STD_LOGIC; -- Start Of Frame | Tuser signal
           o_eol : out STD_LOGIC; -- End Of Line | Tlast signal
           o_index_row : out STD_LOGIC_VECTOR(31 downto 0); -- index to array (row)
           o_index_column : out STD_LOGIC_VECTOR(31 downto 0) -- index to array (column)
           );
end display_interface;

architecture Behavioral of display_interface is

    --------------------------------- Constants --------------------------------
    constant LINE_SIZE : integer := g_width;
    constant FRAME_SIZE : integer := g_width * g_height;
    
    ----------------------------------- Types ----------------------------------

    type STATE_TYPE is (IDLE, SEND_DATA, END_LINE);
    
    ---------------------------------- Signals ----------------------------------
    signal state : STATE_TYPE;  
    signal row_pixel_counter : INTEGER := 0;  
    signal column_pixel_counter : INTEGER := 0;  
    signal data_counter : INTEGER := 0;  

begin

    ----------------------------------- Port Map -----------------------------------
    o_index_row <= std_logic_vector(to_unsigned(row_pixel_counter, 32) / g_square_size); -- index to array (row)         
    o_index_column <= std_logic_vector(to_unsigned(column_pixel_counter, 32) / g_square_size); -- index to array (column)
    
    
    ---------------------------------- Data Sender ----------------------------------
    process (i_clk)
    begin
        if rising_edge(i_clk) then
            if i_reset_n = '0' then
                state <= IDLE;
                row_pixel_counter <= 0;
                column_pixel_counter <= 0;
                data_counter <= 0;
                o_data_valid <= '0';
                o_sof <= '0';
                o_eol <= '0';
                
            elsif i_pause = '0' then 
                case state is
                
                    when IDLE =>
                        o_sof <= '1'; -- making the Start Of Frame (high)
                        o_data_valid <= '1';
                        state <= SEND_DATA;
                        
                    when SEND_DATA =>
                        if i_data_ready = '1' then -- because we need to make sure AXI is ready to get the data
                            o_sof <= '0';
                            row_pixel_counter <= row_pixel_counter + 1;
                            data_counter <= data_counter + 1; -- count of data that we sent
                        end if;
                        if row_pixel_counter = LINE_SIZE - 2 then
                            o_eol <= '1'; -- we've reached to the end of line
                            state <= END_LINE;
                        end if;
                        
                    when END_LINE =>
                        if i_data_ready = '1' then -- because we need to make sure AXI is ready to get the data
                            o_eol <= '0';
                            row_pixel_counter <= 0;
                            column_pixel_counter <= column_pixel_counter + 1;
                            data_counter <= data_counter + 1; -- count of data that we sent
                        end if;
                        
                        if (data_counter = FRAME_SIZE - 1) then -- check if we send the last signal
                            state <= IDLE;   
                            o_data_valid <= '0';
                            column_pixel_counter <= 0;
                            data_counter <= 0;
                        else 
                            state <= SEND_DATA;
                        end if;
                        
                    when others =>
                    
                end case;
            end if;
        end if;
    end process;

end Behavioral;
