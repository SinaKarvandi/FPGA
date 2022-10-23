library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity delay_gen is
    Port ( clock : in STD_LOGIC;
           delay_en : in STD_LOGIC;
           delay_done : out STD_LOGIC
        );
end delay_gen;

architecture Behavioral of delay_gen is
    
    signal counter : integer := 0;

begin
    
    -----------------------------------------------------------------------
    process (clock)
    begin
        if rising_edge(clock) then
            if delay_en = '1' and counter /= 200000 then
                counter <= counter + 1;
            else 
                counter <= 0;
            end if;
        end if;
    end process;
    
    -----------------------------------------------------------------------
    
    process (clock)
    begin
        if rising_edge(clock) then
            if delay_en = '1' and counter = 200000 then
                delay_done <= '1';
            else 
                delay_done <= '0';
            end if;
        end if;
    end process;
    -----------------------------------------------------------------------

end Behavioral;
