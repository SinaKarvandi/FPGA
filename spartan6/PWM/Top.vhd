----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:12:01 09/06/2019 
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
    Port ( Input1 : in  STD_LOGIC;
           Input2 : in  STD_LOGIC;
           Output1 : out  STD_LOGIC;
           Output2 : out  STD_LOGIC;
           Output3 : out  STD_LOGIC;
           Output4 : out  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC);
end top;

architecture Behavioral of top is
-------------------------------------------------------------------------
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
--------------------------------------------------------------------------
	COMPONENT MyDebouncer
	PORT(
		Clk : IN std_logic;
		Input : IN std_logic;          
		Output : OUT std_logic
		);
	END COMPONENT;
-------------------------- Variables definition --------------------------
	signal counter : integer range 0 to 1000005;
	signal PWM 	: std_logic ; --- to send output to the LED
	signal My40MHzClk 	: std_logic ;
	signal DutyCycle : integer range 0 to 1000005 := 1;

--------------------------------------------------------------------------
	signal TempDebounceUp 	: std_logic := '0' ;
	signal TempDebounceDown : std_logic ;
	signal temp1 : std_logic ;
	signal temp2 : std_logic ;
--------------------------------------------------------------------------
begin

-------------------------- Clk Manager  --------------------------
	Inst_MyClkManager: MyClkManager PORT MAP(
		CLKIN_IN =>  Clk,
		RST_IN => '0',
		CLKFX_OUT => My40MHzClk	, -- This will be used in our design (Converted from ClkIn to 40 Mhz My40MHzClk)
		CLKIN_IBUFG_OUT => open	,
		CLK0_OUT =>	open			,
		LOCKED_OUT => open

	);
-------------------------- Debouncer --------------------------

Inst_MyDebouncer: MyDebouncer PORT MAP(
		Clk =>My40MHzClk,
		Input => Input1,
		Output => TempDebounceUp
	);

Inst_MyDebouncer2: MyDebouncer PORT MAP(
		Clk =>My40MHzClk,
		Input => Input2,
		Output => TempDebounceDown
	);
-------------------------- Debounce Checker ------------------------


process (My40MHzClk) begin
	if rising_edge(My40MHzClk) then
	-- Detecting edge of Button
		 temp1 <= TempDebounceUp;
		 if temp1 = '0' and TempDebounceUp = '1' then
			temp1 <= '0';
			if DutyCycle < 40 then
				DutyCycle <= DutyCycle + 1;
			end if;
		 end if;
--------------------------------------------------------------------

		 temp2 <= TempDebounceDown;
		 if temp2 = '0' and TempDebounceDown = '1' then
			temp2 <= '0';
			if DutyCycle > 0 then
				DutyCycle <= DutyCycle - 1;
			end if;
		 end if;
		 
		 
	end if;
end process;

--
--DutyCycle <= DutyCycle + 4 when TempDebounceUp = '1' else
--				 DutyCycle - 4 when TempDebounceDown = '1' else
--				 DutyCycle ;

-------------------------------------------------------------------

process (My40MHzClk) begin
	if rising_edge(My40MHzClk) then
-------------------------------------------------
		if Rst = '0' then 
			counter <= 0;
			PWM <= '0';
		else 
-------------------------------------------------
			if counter > 40 then 
				counter <= 0;
				PWM <= '1';
			else
-------------------------------------------------
				counter <= counter + 1;
				if Counter > DutyCycle then --- Duty Cycle should be less than 40 because of (counter > 40)
					PWM <= '1';
				else 
					PWM <= '0';
				end if;
-------------------------------------------------
			end if;
-------------------------------------------------
		end if;
	end if;



end process;

Output1 <= PWM;
Output2 <= PWM;
Output3 <= PWM;
Output4 <= PWM;



end Behavioral;

