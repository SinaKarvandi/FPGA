----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:42:05 08/06/2019 
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
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Sum : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end top;

architecture Behavioral of top is

signal C : STD_LOGIC_VECTOR (3 downto 0);

component FA is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Sum : out  STD_LOGIC);
end component FA;


component HA is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Sum : out  STD_LOGIC);
end component HA;

begin

HA0 : HA
	port map (A(0), B(0) , C(0) , Sum(0));
	
--HA0 : HA
--	port map(
--				A => A(0),
--				B => B(0),
--				Cin => C(0),
--				Sum => Sum(0) 
--				);

FA1 : FA
	port map (A(1), B(1), C(0), C(1), Sum(1) );
	
FA2 : FA
	port map (A(2), B(2), C(1), C(2), Sum(2) );
	
FA3 : FA
	port map (A(3), B(3), C(2), C(3), Sum(3) );

Cout <= C(3);

end Behavioral;

