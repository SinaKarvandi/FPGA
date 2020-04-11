----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:08:42 08/15/2019 
-- Design Name: 
-- Module Name:    PriorityEncode - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PriorityEncode is
    Port ( DataIn : in  STD_LOGIC_VECTOR (3 downto 0);
           DataOut : out  STD_LOGIC_VECTOR (1 downto 0));
end PriorityEncode;

architecture Behavioral of PriorityEncode is
begin

process (DataIn)
	begin 
		if DataIn(0) = '1' then 
			DataOut <= "00";
		elsif DataIn(1) = '1' then 
			DataOut <= "01";
		elsif DataIn(2) = '1' then 
			DataOut <= "10";
		else
			DataOut <= "11";
		end if;
	
	end process;

end Behavioral;

