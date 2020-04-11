----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:01:21 09/06/2019 
-- Design Name: 
-- Module Name:    MyDebouncer - Behavioral 
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

entity MyDebouncer is
    Port ( Clk : in  STD_LOGIC;
			  Input : in  STD_LOGIC;
           Output : out  STD_LOGIC);
end MyDebouncer;

architecture Behavioral of MyDebouncer is
--------------------------------------------
	COMPONENT MyClkManager
	PORT(
		CLKIN_IN : IN std_logic;
		RST_IN : IN std_logic;          
		CLKFX_OUT : OUT std_logic;
		CLKIN_IBUFG_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic;
		LOCKED_OUT : OUT std_logic
		);
	END COMPONENT;
--------------------------------------------
-- Types
type Status is (IDLE , WAITTING , FINISHED);

-- For debouncer
signal State 	: Status :=  IDLE;
signal DebounceCounter : integer range 0 to 9999999;
signal Temp 	: std_logic ;

begin
-- ======================================= Debouncer ===================================
process (Clk) begin
	if rising_edge(Clk) then
				case State is 
----------------------------------------
				when IDLE =>
						temp <= '0'; -- It is because in our debouncer Temp should be 1 for one clk
						if Input = '1' then
							State <= IDLE;
						else
							State <= WAITTING;
							DebounceCounter <= 0;
						end if;
----------------------------------------
				when WAITTING =>
						if DebounceCounter > 2000000 then
							State <= FINISHED;
						else
							DebounceCounter <= DebounceCounter + 1;
						end if;		
-----------------------------------------												
				when FINISHED =>
						Temp <= '1';
						State <= IDLE;
						
-----------------------------------------						
			end case;
		end if;
end process;

Output <= Temp;
-- =====================================================================================


end Behavioral;

