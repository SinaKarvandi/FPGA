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
         o_data         : out STD_LOGIC_VECTOR(23 downto 0);
         i_check_for_lost : in STD_LOGIC;
         o_lost         : out STD_LOGIC
        );
end graphic_memory;

architecture Behavioral of graphic_memory is

    ---------------------------------- Signals ----------------------------------
    -- constant SQUARE_BUFFER_FRAME_SIZE : integer := (g_width / g_square_size)  * (g_height / g_square_size);  -- 1920/16 = 120 | 1080/16 ~= 67.5 ~= 68
    -- type mem is array (0 to SQUARE_BUFFER_FRAME_SIZE) of std_logic_vector(11 downto 0); -- each pixel has 3 color values
    type mem is array (0 to (g_width / g_square_size) + 1, 0 to (g_height / g_square_size) + 1) of std_logic_vector(11 downto 0);
    signal graphic_storage : mem;
    
    signal is_reseting_started : std_logic := '0';
    signal reseting_i : integer := 0;
    signal reseting_j : integer := 0;
    
    signal draw_lost : std_logic := '0';
    
begin

    --------------------------- Send the data from graphic memory -----------------------------

    process(i_clk)
        variable square_color : std_logic_vector(11 downto 0);
        --variable array_index : integer := 0;
    begin
        if (rising_edge(i_clk)) then
            -- compute the index to the memory array
            if (i_reset_n = '0') then
                -- not lost anymore
                o_lost <= '0';
                draw_lost <= '0';
                
                -- reset each row
                if (reseting_i < (g_width / g_square_size) + 1) then
                    if (reseting_j < (g_height / g_square_size) + 1) then
                        graphic_storage(reseting_i, reseting_j) <= (others => '0');
                        reseting_j <= reseting_j + 1;   
                    else 
                        reseting_j <= 0;
                        reseting_i <= reseting_i + 1;
                    end if;
                else 
                    reseting_i <= 0;
                end if;
            
            elsif draw_lost = '1' then
            
                -- reset each row
                if (reseting_i < (g_width / g_square_size) + 1) then
                    if (reseting_j < (g_height / g_square_size) + 1) then
                        if reseting_j mod 2 = 0 or reseting_j mod 2 = 0 then
                            graphic_storage(reseting_i, reseting_j) <= x"00af70";
                        end if;
                        reseting_j <= reseting_j + 1;   
                    else 
                        reseting_j <= 0;
                        reseting_i <= reseting_i + 1;
                    end if;
                else 
                    reseting_i <= 0;
                    draw_lost <= '0';
                end if;
            
            elsif i_write = '1' then
                
                -- read the graphic memory to see if we lost or not
                square_color := graphic_storage(to_integer(unsigned(i_index_row)), to_integer(unsigned(i_index_column)));
                
                -- check if it's not equal to black color
                if i_check_for_lost = '1' and square_color /= "000000000000" then
                    o_lost <= '1';
                    reseting_i <= 0;
                    reseting_j <= 0;
                    draw_lost <= '1';
                else 
                    -- write to the graphic memory
                    graphic_storage(to_integer(unsigned(i_index_row)), to_integer(unsigned(i_index_column))) <= i_color;
                end if;
                

            elsif i_write = '0' then
                -- read the graphic memory
                square_color := graphic_storage(to_integer(unsigned(i_index_row)), to_integer(unsigned(i_index_column)));
                
                o_data <= "0000" & square_color(11 downto 8) & "0000" & square_color(7 downto 4) & "0000" & square_color(3 downto 0);

            end if;
        end if;
    end process;

    ------------------------------------------------------------------------------------------

end Behavioral;
