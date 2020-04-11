----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:31:14 08/15/2019 
-- Design Name: 
-- Module Name:    Bus - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MyBus is
    Port ( Din : in  STD_LOGIC_VECTOR (3 downto 0);
           Sel : in  STD_LOGIC_VECTOR (1 downto 0);
           Dout : out  STD_LOGIC);
end MyBus;

architecture Behavioral of MyBus is
	signal Temp : STD_LOGIC_VECTOR (3 downto 0);
begin

	process (Sel, Din) begin
	
		for i in 0 to 3 loop 
			if	i = to_integer(unsigned(Sel)) then
				Temp(i) <= Din(i);
			else
				Temp(i) <= 'Z';
				end if;
		end loop;
			
	end process;
	
	Dout <= Temp(0);
	Dout <= Temp(1);
	Dout <= Temp(2);
	Dout <= Temp(3);

end Behavioral;

