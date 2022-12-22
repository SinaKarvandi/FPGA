library ieee;
use ieee.std_logic_1164.all;

entity tb_rand_gen is
end tb_rand_gen;

architecture tb of tb_rand_gen is

    component rand_gen
        Generic(g_width       : integer;
            g_height      : integer;
            g_square_size : integer;
            g_clock_freq   : integer;
            g_randomness_shift   : integer
           );
        port (i_clk                    : in std_logic;
              i_reset_n                : in std_logic;
              i_get_rand_on_next_cycle : in std_logic;
              o_rand1                  : out std_logic_vector (31 downto 0);
              o_rand2                  : out std_logic_vector (31 downto 0));
    end component;

    signal i_clk                    : std_logic;
    signal i_reset_n                : std_logic;
    signal i_get_rand_on_next_cycle : std_logic;
    signal o_rand1                  : std_logic_vector (31 downto 0);
    signal o_rand2                  : std_logic_vector (31 downto 0);

    constant TbPeriod : time := 10 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';
    
    
    constant GLOBAL_WIDTH           : INTEGER := 1920;
    constant GLOBAL_HEIGHT          : INTEGER := 1080;
    constant GLOBAL_SQUARE_SIZE     : INTEGER := 64;
    constant GLOBAL_SNAKE_LEN       : INTEGER := 4;
    constant SYSTEM_CLOCK_FREQUENCY : INTEGER := 148_500_000;
    
   -- Generics for the rand_gen design
   constant g_width : integer := GLOBAL_WIDTH;
   constant g_height : integer := GLOBAL_HEIGHT;
   constant g_square_size : integer := GLOBAL_SQUARE_SIZE;
   constant g_clock_freq : integer := SYSTEM_CLOCK_FREQUENCY;
   constant g_randomness_shift : integer := 8;

begin

    dut : rand_gen
    generic map (
         g_width => g_width,
         g_height => g_height,
         g_square_size => g_square_size,
         g_clock_freq => g_clock_freq,
         g_randomness_shift => g_randomness_shift
      )
    port map (i_clk                    => i_clk,
              i_reset_n                => i_reset_n,
              i_get_rand_on_next_cycle => i_get_rand_on_next_cycle,
              o_rand1                  => o_rand1,
              o_rand2                  => o_rand2);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that i_clk is really your main clock signal
    i_clk <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        i_get_rand_on_next_cycle <= '0';

        -- Reset generation
        -- EDIT: Check that i_reset_n is really your reset signal
        --i_reset_n <= '0';
        wait for 100 ns;
        i_reset_n <= '1';
        wait for 100 ns;
        
        
        i_get_rand_on_next_cycle <= '1';
        wait for 100000 ns;

        -- Stop the clock and hence terminate the simulation
        --TbSimEnded <= '1';
        --wait;
    end process;

end tb;