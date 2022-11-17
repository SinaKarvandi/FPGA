library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity graphic_memory is
    Generic(g_width       : integer := 1920;
            g_height      : integer := 1080;
            g_square_size : integer := 64
           );
    Port(i_clk          : in  STD_LOGIC;
         i_reset_n      : in  STD_LOGIC;
         i_write        : in  STD_LOGIC;
         i_index_row    : in  STD_LOGIC_VECTOR(31 downto 0); -- index to array (row)
         i_index_column : in  STD_LOGIC_VECTOR(31 downto 0); -- index to array (column)
         i_color        : in  STD_LOGIC_VECTOR(11 downto 0); -- if the 'i_write' is high, this is the color to be changed
         o_data         : out STD_LOGIC_VECTOR(23 downto 0)
        );
end graphic_memory;

architecture Behavioral of graphic_memory is

    ---------------------------------- Signals ----------------------------------
    -- constant SQUARE_BUFFER_FRAME_SIZE : integer := (g_width / g_square_size)  * (g_height / g_square_size);  -- 1920/16 = 120 | 1080/16 ~= 67.5 ~= 68
    -- type mem is array (0 to SQUARE_BUFFER_FRAME_SIZE) of std_logic_vector(11 downto 0); -- each pixel has 3 color values
    type mem is array (0 to (g_width / g_square_size) + 1, 0 to (g_height / g_square_size) + 1) of std_logic_vector(11 downto 0);
    signal graphic_storage : mem;

begin

    --------------------------- Send the data from graphic memory -----------------------------

    process(i_clk)
        variable square_color : std_logic_vector(11 downto 0);
        --variable array_index : integer := 0;
    begin
        if (rising_edge(i_clk)) then
            -- compute the index to the memory array

            if (i_reset_n = '0') then
            -- nothing to do here

            elsif i_write = '1' then
                -- write to the graphic memory
                graphic_storage(to_integer(unsigned(i_index_row)), to_integer(unsigned(i_index_column))) <= i_color;

            elsif i_write = '0' then
                -- read the graphic memory
                square_color := graphic_storage(to_integer(unsigned(i_index_row)), to_integer(unsigned(i_index_column)));

                o_data <= "0000" & square_color(11 downto 8) & "0000" & square_color(7 downto 4) & "0000" & square_color(3 downto 0);

            end if;
        end if;
    end process;

    ------------------------------------------------------------------------------------------

end Behavioral;
