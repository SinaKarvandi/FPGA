----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:24:50 08/02/2019 
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
           Datain0 : in  STD_LOGIC;
           Datain1 : in  STD_LOGIC;
           Datain2 : in  STD_LOGIC;
           Datain3 : in  STD_LOGIC;
           Dataout : out  STD_LOGIC_VECTOR (4 downto 0));
end top;

architecture Behavioral of top is
begin

Dataout(0) <= Datain0 and Datain1 and Datain2 and Datain3;
Dataout(1) <= Datain0 or Datain1 or Datain2 or Datain3;
Dataout(2) <= Datain0 xor Datain1 xor Datain2 xor Datain3;
Dataout(3) <= not(Datain0 and Datain1 and Datain2 and Datain3);

end Behavioral;

