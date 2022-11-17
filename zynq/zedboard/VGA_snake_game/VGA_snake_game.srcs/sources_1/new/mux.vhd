library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dispaly_control_mux is
    Port(i_data    : in  STD_LOGIC_VECTOR(23 downto 0);
         i_control : in  STD_LOGIC;
         o_data    : out STD_LOGIC_VECTOR(23 downto 0));
end dispaly_control_mux;

architecture Behavioral of dispaly_control_mux is

begin

    o_data <= i_data when (i_control = '1') else (others => '0');
    -- o_data <= i_data; -- not working in some monitors

end Behavioral;
