----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:22:10 08/19/2019 
-- Design Name: 
-- Module Name:    top - Behavioral 
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

entity top is
    Port ( Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Din : in  STD_LOGIC;
           Dout : out  STD_LOGIC);
end top;

architecture Behavioral of top is
type state_t is (s0, s1, s2, s3, s4, s5);
signal currentState, nextState : state_t;

begin
-- Pattrn "00110"
-- Flip-Flop 
process (Clk)
begin

	if	rising_edge(Clk) then 
		if (reset = '1') then 
			currentState <= s0;
		else 
			currentState <= nextState;
		end if;

	end if;
end process;

process (currentState, Din)
begin

	Dout <= '0';
	
	case currentState is 
		when s0 =>
			if	Din = '0' then
				nextState <= s1;
			end if;
		when s1 =>
			if	Din = '0' then
				nextState <= s2;
			end if;
			
		when s2 =>
			if	Din = '1' then
				nextState <= s3;
			end if;
			
		when s3 =>
			if	Din = '1' then
				nextState <= s4;
			end if;
					
		when s4 =>
			if	Din = '0' then
				nextState <= s5;
			end if;
					
		when s5 =>
			Dout <= '1';
			nextState <= s0;
	
	end case;
end process;


end Behavioral;

