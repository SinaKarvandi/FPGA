library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_oled_controller is
end tb_oled_controller;
    
architecture Behavioral of tb_oled_controller is

--------------------------- Signals ---------------------------

    signal clk : STD_LOGIC := '0';
    signal reset : STD_LOGIC := '0';
    signal oled_spi_clock : STD_LOGIC := '0';
    signal oled_spi_data : STD_LOGIC := '0';
    signal oled_vdd : STD_LOGIC := '0';
    signal oled_vbat : STD_LOGIC := '0';
    signal oled_reset_n : STD_LOGIC := '0';
    signal oled_dc_n : STD_LOGIC := '0';
    
------------------------- instantiate ------------------------- 

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
               oled_dc_n : out STD_LOGIC         
               );
    end component;
--------------------------------------------------------------- 

begin

----------------------------- Test ---------------------------- 

    process
    begin
        reset <= '1';
        wait for 50 ns;
        reset <= '0';
        wait;
    end process;

-------------------------- Clock Gen -------------------------- 
    process 
    begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;
    
-------------------------- Port Map -------------------------- 

    UUT : oled_controller Port Map (
    
               -- input --
               clock => clk,
               reset => reset,
               
               -- output --
               oled_spi_clock => oled_spi_clock,
               oled_spi_data => oled_spi_data,
               oled_vdd => oled_vdd,
               oled_vbat => oled_vbat,
               oled_reset_n => oled_reset_n,
               oled_dc_n => oled_dc_n         
               );

end Behavioral;
