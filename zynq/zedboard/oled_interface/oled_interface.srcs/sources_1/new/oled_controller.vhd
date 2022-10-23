library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.NUMERIC_STD.ALL;

entity oled_controller is
    Port ( 
           -- input --
           clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           
           -- output --
           oled_spi_clock : out STD_LOGIC;
           oled_spi_data : out STD_LOGIC;
           oled_vdd : out STD_LOGIC;
           oled_vbat : out STD_LOGIC;
           oled_reset_n : out STD_LOGIC;
           oled_dc_n : out STD_LOGIC;   
           
           -- input 2 --
           send_data_map : in STD_LOGIC_VECTOR(7 downto 0);      
           send_data_valid : in STD_LOGIC;
           send_done : out STD_LOGIC
           );
end oled_controller;

architecture Behavioral of oled_controller is

    ----------------------------------- Types ----------------------------------
    type STATE_TYPE is (IDLE, 
                        INIT, 
                        DELAY,
                        RESET_STATE,
                        CHARGE_PUMP_1, 
                        CHARGE_PUMP_2,
                        WAIT_SPI, 
                        PRE_CHARGE_1, 
                        PRE_CHARGE_2,
                        VBAT_ON,
                        CONTRAST_1,
                        CONTRAST_2,
                        SEG_REMAP,
                        SCAN_DIR,
                        COM_PIN_1,
                        COM_PIN_2,
                        DISPLAY_ON,
                       -- FULL_DISPLAY,
                        PAGE_ADDR_1,
                        PAGE_ADDR_2,
                        PAGE_ADDR_3,
                        COLUMN_ADDR,
                        SEND_DATA,
                        DONE
                        );
    
    ---------------------------------- Signals ---------------------------------
    
    signal state : STATE_TYPE := IDLE;  
    signal next_state : STATE_TYPE := IDLE;
    
    signal byte_counter : INTEGER := 8;
    signal column_address : INTEGER := 8;
      
    signal delay_done : STD_LOGIC := '0';  
    signal delay_start : STD_LOGIC := '0';  
    signal spi_load_data : STD_LOGIC := '0';  
    signal spi_done : STD_LOGIC := '0';  
    signal temp_send_done : STD_LOGIC := '0';  
    signal spi_data : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');  
    signal current_page : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');  
    signal char_bitmap : STD_LOGIC_VECTOR (63 downto 0) := (others => '0');  

    --------------------------------- Headers ----------------------------------

    component delay_gen 
        Port ( clock : in STD_LOGIC;
               delay_en : in STD_LOGIC;
               delay_done : out STD_LOGIC
            );
    end component;
    
    ----------------------------------------------------------------------------
    
    component character_ROM
    Port ( address : in STD_LOGIC_VECTOR (7 downto 0);
           data : out STD_LOGIC_VECTOR (63 downto 0));
    end component;

    ----------------------------------------------------------------------------

    component SPI_Control
        Port ( clock : in STD_LOGIC;
               reset : in STD_LOGIC;
               data_in : in STD_LOGIC_VECTOR (7 downto 0); 
               load_data : in STD_LOGIC; -- signal indicates new data for transmission
               spi_data : out STD_LOGIC;
               spi_clock : out STD_LOGIC; -- 10MHz max
               done_sent : out STD_LOGIC); -- signal indicates data has been sent over SPI interface
    end component;

begin

----------------------------------- State Machine ----------------------------------- 
     
     
    process (clock) 
    begin
        if rising_edge(clock) then
            if reset = '1' then
                state <= IDLE;
                next_state <= IDLE;
                oled_vdd <= '1';
                oled_vbat <= '1';
                oled_reset_n <= '1';
                oled_dc_n <= '1';
                delay_start <= '0';
                spi_load_data <= '0';
                spi_data <= (others => '0');
                current_page <= (others => '0');
                byte_counter <= 8;
                temp_send_done <= '0';
                
            else 
                case state is
                
                    when IDLE =>
                        oled_vbat <= '1';
                        oled_reset_n <= '1';
                        oled_dc_n <= '0';
                        oled_vdd <= '0'; -- this module power is active low !!!
                        state <= INIT; -- because we wanna use delay several times
                        
                        
                    when DELAY =>
                        delay_start <= '1';
                        
                        if delay_done = '1' then
                            state <= next_state;
                            delay_start <= '0';
                        end if;
                        
                        
                    when INIT =>
                        spi_data <=  x"ae";
                        spi_load_data <= '1';
                        if spi_done = '1' then
                            spi_load_data <= '0';
                            spi_data <= (others => '0');
                            oled_reset_n <= '0';
                            state <= DELAY;
                            next_state <= RESET_STATE;
                        end if;
                        
                        
                    when RESET_STATE => 
                            oled_reset_n <= '1';
                            next_state <= CHARGE_PUMP_1;
                            state <= DELAY;
                            
                            
                    when CHARGE_PUMP_1 => 
                        spi_data <=  x"8d";
                        spi_load_data <= '1';
                        if spi_done = '1' then
                            spi_load_data <= '0';
                            state <= WAIT_SPI;
                            next_state <= CHARGE_PUMP_2;
                        end if;
                        
                        
                    when WAIT_SPI => 
                        if spi_done = '0' then
                            state <= next_state;
                        end if;
                        
                        
                    when CHARGE_PUMP_2 => 
                        spi_data <=  x"14";
                        spi_load_data <= '1';
                        if spi_done = '1' then
                            spi_load_data <= '0';
                            state <= WAIT_SPI;
                            next_state <= PRE_CHARGE_1;
                        end if;
                        
                        
                    when PRE_CHARGE_1 => 
                        spi_data <=  x"d9";
                        spi_load_data <= '1';
                        if spi_done = '1' then
                            spi_load_data <= '0';
                            state <= WAIT_SPI;
                            next_state <= PRE_CHARGE_2;
                        end if;
                        
                        
                    when PRE_CHARGE_2 => 
                        spi_data <=  x"f1";
                        spi_load_data <= '1';
                        if spi_done = '1' then
                            spi_load_data <= '0';
                            state <= WAIT_SPI;
                            next_state <= VBAT_ON;
                        end if;
                        

                    when VBAT_ON => 
                        oled_vbat <= '0';
                        state <= DELAY;
                        next_state <= CONTRAST_1;
                        

                    when CONTRAST_1 => 
                        spi_data <=  x"81";
                        spi_load_data <= '1';
                        if spi_done = '1' then
                            spi_load_data <= '0';
                            state <= WAIT_SPI;
                            next_state <= CONTRAST_2;
                        end if;
                        

                    when CONTRAST_2 => 
                        spi_data <=  x"ff";
                        spi_load_data <= '1';
                        if spi_done = '1' then
                            spi_load_data <= '0';
                            state <= WAIT_SPI;
                            next_state <= SEG_REMAP;
                        end if;
                        

                    when SEG_REMAP => 
                        spi_data <=  x"a0";
                        spi_load_data <= '1';
                        if spi_done = '1' then
                            spi_load_data <= '0';
                            state <= WAIT_SPI;
                            next_state <= SCAN_DIR;
                        end if;
                        

                    when SCAN_DIR => 
                        spi_data <=  x"c0";
                        spi_load_data <= '1';
                        if spi_done = '1' then
                            spi_load_data <= '0';
                            state <= WAIT_SPI;
                            next_state <= COM_PIN_1;
                        end if;
                        

                    when COM_PIN_1 => 
                        spi_data <=  x"da";
                        spi_load_data <= '1';
                        if spi_done = '1' then
                            spi_load_data <= '0';
                            state <= WAIT_SPI;
                            next_state <= COM_PIN_2;
                        end if;
                        

                    when COM_PIN_2 => 
                        spi_data <=  x"00";
                        spi_load_data <= '1';
                        if spi_done = '1' then
                            spi_load_data <= '0';
                            state <= WAIT_SPI;
                            next_state <= DISPLAY_ON;
                        end if;


                    when DISPLAY_ON => 
                        spi_data <=  x"af";
                        spi_load_data <= '1';
                        if spi_done = '1' then
                            spi_load_data <= '0';
                            state <= WAIT_SPI;
                            next_state <= PAGE_ADDR_1;
                        end if;


--                    when FULL_DISPLAY => 
--                        spi_data <=  x"a5";
--                        spi_load_data <= '1';
--                        if spi_done = '1' then
--                            spi_load_data <= '0';
--                            state <= WAIT_SPI;
--                            next_state <=  DONE;
--                        end if;
                        
                        
                    when PAGE_ADDR_1 => 
                        spi_data <=  x"22";
                        spi_load_data <= '1';
                        oled_dc_n <= '0';
                        if spi_done = '1' then
                            spi_load_data <= '0';
                            state <= WAIT_SPI;
                            next_state <=  PAGE_ADDR_2;
                        end if;
                        
                        
                        
                    when PAGE_ADDR_2 => 
                        spi_data <=  current_page;
                        spi_load_data <= '1';
                        if spi_done = '1' then
                            spi_load_data <= '0';
                            current_page <= std_logic_vector(unsigned(current_page) + 1);
                            state <= WAIT_SPI;
                            next_state <=  PAGE_ADDR_3;
                        end if;
                        
                        
                    when PAGE_ADDR_3 => 
                        spi_data <=  current_page;
                        spi_load_data <= '1';
                        if spi_done = '1' then
                            spi_load_data <= '0';
                            state <= WAIT_SPI;
                            next_state <=  PAGE_ADDR_3;
                        end if;
                        
                        
                    when COLUMN_ADDR => 
                        spi_data <=  x"10"; -- column address 1, starting from 0
                        spi_load_data <= '1';
                        if spi_done = '1' then
                            spi_load_data <= '0';
                            state <= WAIT_SPI;
                            next_state <=  DONE;
                        end if;

                        
                     when DONE =>
                        temp_send_done <= '0';
                        if send_data_valid = '1' and column_address /= 128 and temp_send_done = '0' then
                            state <= SEND_DATA;
                            byte_counter <= 8;
                        elsif send_data_valid = '1' and column_address = 128 and temp_send_done = '0' then
                            state <= PAGE_ADDR_1;
                            column_address <= 0;
                            byte_counter <= 8;
                        end if;
                        
                        
                     when SEND_DATA =>
                        spi_data <= char_bitmap((byte_counter * 8) - 1 downto (byte_counter * 8) - 8);
                        spi_load_data <= '1';
                        oled_dc_n <= '1';
                        if spi_done = '1' then
                            column_address <= column_address + 1;
                            spi_load_data <= '0';
                            state <= WAIT_SPI;
                            if (byte_counter /= 1) then
                                byte_counter <= byte_counter - 1;
                                next_state <= SEND_DATA;
                            else 
                                next_state <= DONE;
                                temp_send_done <= '1';
                            end if;
                        end if;

                    when others => 
                        state <= IDLE;
                        
                        
                end case;
            end if;
        end if;
    
    
    end process;


----------------------------------- Port mapping ----------------------------------- 

   SPI_HANDLER : SPI_Control Port MAP ( clock => clock,
                                        reset => reset,
                                        data_in => spi_data,
                                        load_data => spi_load_data,
                                        spi_data => oled_spi_data,
                                        spi_clock => oled_spi_clock,
                                        done_sent => spi_done);
    send_done <= temp_send_done;
------------------------------------------------------------------------------------ 

    ADDRESS_MAPPER : character_ROM Port MAP ( address => send_data_map,
                                              data => char_bitmap);

------------------------------------------------------------------------------------ 
   DELAY_GENERATE : delay_gen Port MAP ( clock => clock,
                                delay_en => delay_start,
                                delay_done => delay_done);
                                          
end Behavioral;
