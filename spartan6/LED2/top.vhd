----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:47:11 08/02/2019 
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
           Reset : out  STD_LOGIC;
           Input0 : in  STD_LOGIC;
           Input1 : in  STD_LOGIC;
           Input2 : in  STD_LOGIC;
           Input3 : in  STD_LOGIC;
			  LED : out  STD_LOGIC_VECTOR (4 downto 0));
end top;

architecture Behavioral of top is

begin


LED(0) <= not(Input0);
LED(1) <= not(Input1);
LED(2) <= not(Input2);
LED(3) <= not(Input3);


end Behavioral;

