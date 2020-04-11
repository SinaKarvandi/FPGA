----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:53:01 08/15/2019 
-- Design Name: 
-- Module Name:    ClkDivider - Behavioral 
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

entity ClkDivider is
    Port ( 	ClkIn : in  STD_LOGIC;
	 
				Reset	:	in STD_LOGIC;
				Switch2 : in  STD_LOGIC;
				Switch3 : in  STD_LOGIC;
				Switch4 : in  STD_LOGIC;

				LED1 : out  STD_LOGIC;
				LED2 : out  STD_LOGIC;
				LED3 : out  STD_LOGIC;
				LED4 : out  STD_LOGIC);
end ClkDivider;

architecture Behavioral of ClkDivider is

	COMPONENT ClockManager
	PORT(
		CLKIN_IN : IN std_logic;
		RST_IN : IN std_logic;          
		CLKFX_OUT : OUT std_logic;
		CLKIN_IBUFG_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic;
		LOCKED_OUT : OUT std_logic
		);
	END COMPONENT;
	
	signal counter : integer range 0 to 9999999;
	signal temp 	: std_logic ;
	signal My40MHzClk 	: std_logic ;
begin

process (My40MHzClk) begin
	if rising_edge(My40MHzClk) then
		if Reset = '0' then 
			counter <= 0;
			temp <= '0';
		else 
		
			if counter = 9999999 then 
				counter <= 0;
				temp <= not temp;
			else
				counter <= counter + 1;
			end if;
		end if;
	end if;



end process;

LED1 <= temp;


  -- <name> <= <expression> when <condition> else
  --           <expression> when <condition> else
  --           <expression>;
  
  LED2 <= temp when Switch2 = '1' else '0';
  LED3 <= temp when Switch3 = '1' else '0';
  LED4 <= temp when Switch4 = '1' else '0';
			


	Inst_ClockManager: ClockManager PORT MAP(
		CLKIN_IN => ClkIn			,
		RST_IN => 	'0'			,
		CLKFX_OUT => My40MHzClk	, -- This will be used in our design (Converted from ClkIn to 40 Mhz My40MHzClk)
		CLKIN_IBUFG_OUT => open	,
		CLK0_OUT =>	open			,
		LOCKED_OUT => open
	);


end Behavioral;





