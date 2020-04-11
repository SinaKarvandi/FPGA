----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:24:31 08/16/2019 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port ( Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           Input : in  STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR (3 downto 0));
end top;



architecture Behavioral of top is
	-- Types
	type Status is (IDLE , WAITTING , FINISHED);

	-- Signal
	signal My40MHzClk : std_logic ;
	signal counter : integer range 0 to 9999999;
	signal State 	: Status :=  IDLE;
	signal Temp : std_logic  ;

	
	-- Components
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
	
	
begin



process (My40MHzClk) begin
	if rising_edge(My40MHzClk) then
				case State is 
----------------------------------------
				when IDLE =>
						if Input = '1' then
							State <= IDLE;
						else
							State <= WAITTING;
							Counter <= 0;
							Temp <= '0';
						end if;
----------------------------------------
				when WAITTING =>
						if Counter > 2000000 then
							State <= FINISHED;
						else
							Counter <= Counter + 1;
						end if;		
-----------------------------------------												
				when FINISHED =>
						Temp <= '1';
						--State <= IDLE;
						if Input = '0' then
						Temp <= '0';
						State <= FINISHED;
						end if;

-----------------------------------------						
			end case;
		end if;
end process;

Output(0) <=  Temp;
Output(1) <=  Temp;
Output(2) <=  Temp;
Output(3) <=  Temp;


	Inst_MyClkManager: MyClkManager PORT MAP(
		CLKIN_IN => Clk ,
		RST_IN => '0' ,
		CLKFX_OUT => My40MHzClk,
		CLKIN_IBUFG_OUT => open,
		CLK0_OUT => open,
		LOCKED_OUT => open
	);

end Behavioral;

