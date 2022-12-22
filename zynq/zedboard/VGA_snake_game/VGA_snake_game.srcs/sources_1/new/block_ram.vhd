-- Single-Port Block RAM Write-First Mode (recommended template)
--
-- File: bram_wf.vhd
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bram_wf is
    port(
        clk   : in  std_logic;
        rst_n : in  std_logic;
        we    : in  std_logic;
        en    : in  std_logic;
        addr  : in  std_logic_vector(9 downto 0);
        di    : in  std_logic_vector(63 downto 0);
        do    : out std_logic_vector(63 downto 0)
    );

end bram_wf;

architecture syn of bram_wf is

    type ram_type is array (1023 downto 0) of std_logic_vector(63 downto 0);
    signal RAM : ram_type := (others => (others => '0'));

    signal rst_enum : integer := 0;
begin

    process(clk)
    begin
        if clk'event and clk = '1' then
            if rst_n = '0' then
                if (rst_enum < 1024) then
                    RAM(rst_enum) <= (others => '0');
                    rst_enum      <= rst_enum + 1;
                else
                    rst_enum <= 0;
                end if;
            elsif en = '1' then
                if we = '1' then
                    RAM(to_integer(unsigned(addr))) <= di;
                    do                              <= di;
                else
                    do <= RAM(to_integer(unsigned(addr)));
                end if;
            end if;
        end if;
    end process;

end syn;
