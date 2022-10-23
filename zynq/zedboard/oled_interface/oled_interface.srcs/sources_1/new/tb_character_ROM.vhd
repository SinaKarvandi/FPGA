library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_character_ROM is
--  Port ( );
end tb_character_ROM;

architecture Behavioral of tb_character_ROM is
    
    signal address : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal data : STD_LOGIC_VECTOR (63 downto 0) := (others => '0');

    component character_ROM 
        Port ( address : in STD_LOGIC_VECTOR (7 downto 0);
               data : out STD_LOGIC_VECTOR (63 downto 0));
    end component;

begin

    process
    begin 
        
        address <= x"41";
        wait for 10 ns;
        
        address <= x"43";
        wait for 10 ns;
        
        address <= x"42";
        wait for 10 ns;
        
    
    end process;

    UUT : character_ROM Port map ( 
               address => address,
               data => data
               );
end Behavioral;
