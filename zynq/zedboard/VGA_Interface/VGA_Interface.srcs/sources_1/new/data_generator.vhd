library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

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

    --------------------------------- Constants --------------------------------
    constant LINE_SIZE : integer := 1920;
    constant FRAME_SIZE : integer := 1920 * 1080;

    ----------------------------------- Types ----------------------------------

    type STATE_TYPE is (IDLE, SEND_DATA, END_LINE);
    
    ---------------------------------- Signal ----------------------------------
    signal state : STATE_TYPE;  
    signal line_pixel_counter : INTEGER := 0;  
    signal data_counter : INTEGER := 0;  

begin

    ---------------------------------- Color Map ----------------------------------
    process
    begin
        if line_pixel_counter >= 0 and line_pixel_counter < 640 then
            o_data <= x"0000ff";
        elsif line_pixel_counter >= 640 and line_pixel_counter < 1280 then
            o_data <= x"00ff00";
        else 
            o_data <= x"ff0000";
        end if;
    end process;
    
    
    ---------------------------------- Data Sender ----------------------------------
    process (i_clk)
    begin
        if rising_edge(i_clk) then
            if i_reset_n = '0' then
                state <= IDLE;
                line_pixel_counter <= 0;
                data_counter <= 0;
                o_data_valid <= '0';
                o_sof <= '0';
                o_eol <= '0';
            else 
                case state is
                
                    when IDLE =>
                        o_sof <= '1'; -- making the Start Of Frame (high)
                        o_data_valid <= '1';
                        state <= SEND_DATA;
                        
                    when SEND_DATA =>
                        if i_data_ready = '1' then -- because we need to make sure AXI is ready to get the data
                            o_sof <= '0';
                            line_pixel_counter <= line_pixel_counter + 1;
                            data_counter <= data_counter + 1; -- count of data that we sent
                        end if;
                        if line_pixel_counter = LINE_SIZE - 2 then
                            o_eol <= '1'; -- we've reached to the end of line
                            state <= END_LINE;
                        end if;
                        
                    when END_LINE =>
                        if i_data_ready = '1' then -- because we need to make sure AXI is ready to get the data
                            o_eol <= '0';
                            line_pixel_counter <= 0;
                            data_counter <= data_counter + 1; -- count of data that we sent
                        end if;
                        
                        if (data_counter = FRAME_SIZE - 1) then -- check if we send the last signal
                            state <= IDLE;   
                            o_data_valid <= '0';
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
