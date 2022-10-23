library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SPI_Control is
    Port ( clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (7 downto 0); 
           load_data : in STD_LOGIC; -- signal indicates new data for transmission
           spi_data : out STD_LOGIC;
           spi_clock : out STD_LOGIC; -- 10MHz max
           done_sent : out STD_LOGIC); -- signal indicates data has been sent over SPI interface
end SPI_Control;

architecture Behavioral of SPI_Control is

    ----------------------------------- Types ----------------------------------

    type STATE_TYPE is (IDLE, SEND, DONE);
    
    ---------------------------------- Signal ----------------------------------
    signal state : STATE_TYPE;  
    signal counter : integer := 0;
    signal data_counter : integer := 0;
    signal spi_clock_temp : STD_LOGIC := '0';
    signal clock_enable : STD_LOGIC := '0';
    signal shift_reg :  STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    
begin
    
 ---------------------------------- Generate SPI Clock ----------------------------------
    process (clock)
    begin
        if (counter /= 4) then
            counter <= counter + 1;
        else 
            counter <= 0;
        end if;    
    end process;
    
    process (clock)
    begin
        if (counter = 4) then
            spi_clock_temp <= not spi_clock_temp;
        end if;
    end process;

 ------------------------------------- State Machine ------------------------------------
 
    process (spi_clock_temp)
    begin
        if falling_edge(spi_clock_temp) then
            if reset = '1' then
                state <= IDLE;
                data_counter <= 0;
                done_sent <= '0';
                clock_enable <= '0';
            else
                case state is
                
                    when IDLE =>
                        if (load_data = '1') then
                            shift_reg <= data_in;
                            data_counter <= 0;
                            state <= SEND;
                        end if;
                        
                    when SEND =>
                        spi_data <= shift_reg(7);
                        shift_reg <= shift_reg(6 downto 0) & '0';
                        clock_enable <= '1';
                        
                        if data_counter /= 7 then
                            data_counter <= data_counter + 1;
                        else 
                            state <= DONE;
                        end if;
                        
                    when DONE =>
                        state <= IDLE;
                        done_sent <= '1';
                        clock_enable <= '0';
                        
                        if (load_data = '1') then
                            done_sent <= '0';
                            state <= DONE;
                        end if;
                        
                    when others =>
                        state <= IDLE;
                        data_counter <= 0;
                        done_sent <= '0';
                        clock_enable <= '0';
                        
                end case;
            end if;
        end if;
    end process;
 
 ------------------------------------- Mapping Ports ------------------------------------
 
    spi_clock <= spi_clock_temp when clock_enable = '1' else '1';
 
 ----------------------------------------------------------------------------------------

end Behavioral;
