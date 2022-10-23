library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
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
               oled_dc_n : out STD_LOGIC
               );
end top;

architecture Behavioral of top is
    
    signal test1 : STD_LOGIC := '0';  
    signal test2 : STD_LOGIC := '0';  
    
    signal send_done : STD_LOGIC := '0';  
    signal send_data_valid : STD_LOGIC := '0';  
    signal send_data_map : STD_LOGIC_VECTOR(7 downto 0) := x"41";

    component oled_controller
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
    end component;

begin

    process (clock)
    begin
    
        if (rising_edge(clock)) then
            if reset = '1' then
                test1 <= '0';
            elsif test1 = '0' then 
                send_data_map  <= x"41";
                send_data_valid <= '1';
                test1 <= '1';
            elsif send_done = '1' then
                send_data_valid <= '0';
                --test1 <= '0';
            end if;
         end if;
    end process;
    
    ---------------------------- port map ---------------------------- 
    OLED_CONTROL_MODULE : oled_controller Port Map ( 
                           -- input --
                           clock => clock,
                           reset => reset,
                           
                           -- output --
                           oled_spi_clock => oled_spi_clock,
                           oled_spi_data => oled_spi_data,
                           oled_vdd => oled_vdd,
                           oled_vbat => oled_vbat,
                           oled_reset_n => oled_reset_n,
                           oled_dc_n => oled_dc_n,   
                           
                           -- input 2 --
                           send_data_map => send_data_map,     
                           send_data_valid => send_data_valid,
                           send_done => send_done
               );

end Behavioral;
