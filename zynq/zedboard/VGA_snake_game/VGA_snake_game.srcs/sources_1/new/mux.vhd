----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/23/2022 01:33:30 AM
-- Design Name: 
-- Module Name: mux - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux is
    Port ( i_data : in STD_LOGIC_VECTOR (23 downto 0);
           i_control : in STD_LOGIC;
           o_data : out STD_LOGIC_VECTOR (23 downto 0));
end mux;

architecture Behavioral of mux is

begin
    
    o_data <= i_data when (i_control = '1') else (others => '0');
    -- o_data <= i_data; -- not working in some monitors

end Behavioral;
