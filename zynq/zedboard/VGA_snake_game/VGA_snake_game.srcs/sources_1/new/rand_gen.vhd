library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.math_real.all;

entity rand_gen is
    Generic(g_width       : integer;
            g_height      : integer;
            g_square_size : integer;
            g_clock_freq   : integer
           );
    Port(i_clk                    : in  std_logic;
         i_reset_n                : in  std_logic;
         i_get_rand_on_next_cycle : in  std_logic;
         
         o_rand1       : out std_logic_vector(31 downto 0);
         o_rand2       : out std_logic_vector(31 downto 0)
        );
end rand_gen;

architecture Behavioral of rand_gen is

    ---------------------------------- Variables --------------------------------
    signal rand_gen : std_logic_vector(31 downto 0) := (others => '0'); -- 27 bit is needed for 100_000_000 Hz

    ---------------------------------- Constants --------------------------------
    
    CONSTANT c_i_size : integer := (g_width / g_square_size) + 1;
    CONSTANT c_j_size : integer := (g_height / g_square_size) + 1;
    
    ---------------------------------- Functions --------------------------------

begin


    process(i_clk)
    begin
        if (rising_edge(i_clk)) then
            if i_reset_n = '0' then
                rand_gen <= (others => '0');
            elsif unsigned(rand_gen) = g_clock_freq then
                rand_gen <= (others => '0');
            else
                rand_gen <= std_logic_vector( unsigned(rand_gen) + 3 );
            end if;
        end if;
    end process;
    
    ----------------------- Psudo-random generator ----------------------
    
    process(i_clk)
        variable rand1 : std_logic_vector(31 downto 0);
        variable rand2 : std_logic_vector(31 downto 0);
        
        variable rand1i : integer;
        variable rand2j : integer;
    begin
        if (rising_edge(i_clk)) then
          
            if i_reset_n = '0' then
                o_rand1 <= (others => '0');
                o_rand2 <= (others => '0');
            elsif i_get_rand_on_next_cycle = '1' then
                rand1 := "00000000000000000000000000" & rand_gen(5 downto 0);
                rand2 := "00000000000000000000000000" & rand_gen(10 downto 5);
                                
                rand1i := to_integer(signed(rand1));
                rand2j := to_integer(signed(rand2));
                
                if rand1i > c_i_size then
                    rand1i := rand1i mod c_i_size; 
                end if;
                
                
                if rand2j > c_j_size then
                    rand2j := rand2j mod c_j_size; 
                end if;
                
                if rand1i = 0 then
                    rand1i := 1;
                end if;
                
                if rand2j = 0 then
                    rand2j := 1;
                end if;
                
                if rand1i = c_i_size - 2 or rand1i = c_i_size - 1 or rand1i = c_i_size then
                    rand1i := c_i_size - 3;
                end if;
                
                if rand2j = c_j_size - 2 or rand2j = c_j_size - 1 or rand2j = c_j_size then
                    rand2j := c_j_size - 3;
                end if;                
                
                
                o_rand1 <=  std_logic_vector(to_unsigned(rand1i, o_rand1'length));
                o_rand2 <=  std_logic_vector(to_unsigned(rand2j, o_rand2'length));
            else 
                o_rand1 <= (others => '0');
                o_rand2 <= (others => '0');
            end if;
        end if;
    end process;
    
end Behavioral;
