----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/03/2022 06:20:16 PM
-- Design Name: 
-- Module Name: tb_data_generator - Behavioral
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

entity tb_data_generator is
--  Port ( );
end tb_data_generator;

architecture Behavioral of tb_data_generator is

    signal clk : std_logic := '0';
    signal reset_n : std_logic := '0';
    signal data : STD_LOGIC_VECTOR (23 downto 0);
    signal arrow_left : std_logic := '0';
    signal arrow_right : std_logic := '0';
    signal arrow_up : std_logic := '0';
    signal arrow_down : std_logic := '0';
    signal pause_button : std_logic := '0';
    signal data_valid : std_logic;
    signal data_ready : std_logic := '0';
    signal sof : std_logic;
    signal eol : std_logic;
    
    component data_generator
        Port ( i_clk : in STD_LOGIC;
               i_reset_n : in STD_LOGIC;
               o_data : out STD_LOGIC_VECTOR (23 downto 0);
               i_arrow_left : in STD_LOGIC;
               i_arrow_right : in STD_LOGIC;
               i_arrow_up : in STD_LOGIC;
               i_arrow_down : in STD_LOGIC;
               i_pause_button : in STD_LOGIC;
               o_data_valid : out STD_LOGIC;
               i_data_ready : in STD_LOGIC;
               o_sof : out STD_LOGIC; -- Start Of Frame | Tuser signal
               o_eol : out STD_LOGIC); -- End Of Line | Tlast signal
     end component;
     
begin
    
    UUT : data_generator Port Map ( i_clk => clk,
               i_reset_n => reset_n,
               o_data => data,
               i_arrow_left => arrow_left,
               i_arrow_right => arrow_right,
               i_arrow_up => arrow_up,
               i_arrow_down => arrow_down,
               i_pause_button => pause_button,
               o_data_valid => data_valid,
               i_data_ready => data_ready,
               o_sof => sof,
               o_eol => eol);
               
               
    clk <= not clk after 5 ns;
               
    process
    begin
    
        reset_n <= '0'; -- reset the circuit
        wait for 100 ns;
        
        reset_n <= '1';
        wait for 20000 ns;

        arrow_up <= '1';
        wait;
        
    end process;
    
end Behavioral;
