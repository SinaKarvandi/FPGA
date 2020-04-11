----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:40:47 07/28/2019 
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
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           input1 : in  STD_LOGIC_VECTOR (31 downto 0);
           input2 : in  STD_LOGIC_VECTOR (31 downto 0);
           input3 : in  STD_LOGIC_VECTOR (31 downto 0);
           input4 : in  STD_LOGIC_VECTOR (31 downto 0);
           and_res : out  STD_LOGIC_VECTOR (31 downto 0);
			  or_res : out  STD_LOGIC_VECTOR (31 downto 0);
			  xor_res : out  STD_LOGIC_VECTOR (31 downto 0);
			  nand_res: out  STD_LOGIC_VECTOR (31 downto 0));
end top;

architecture Behavioral of top is
begin

and_res <= input1 and input2 and input3 and input4;
or_res <= input1 or input2 or input3 or input4;
xor_res <= input1 xor input2 xor input3 xor input4;
nand_res <= not(input1 and input2 and input3 and input4);


end Behavioral;

