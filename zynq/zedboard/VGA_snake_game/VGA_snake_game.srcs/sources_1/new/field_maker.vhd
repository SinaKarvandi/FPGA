library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity field_maker is
    Generic(g_width       : integer;
            g_height      : integer;
            g_square_size : integer
           );
    Port(i_clk                   : in  STD_LOGIC;
         i_reset_n               : in  STD_LOGIC;
         o_change_graphic_buffer : out STD_LOGIC;
         o_change_color          : out STD_LOGIC_VECTOR(11 downto 0);
         o_change_graphic_row    : out STD_LOGIC_VECTOR(31 downto 0);
         o_change_graphic_column : out STD_LOGIC_VECTOR(31 downto 0)
        );
end field_maker;

architecture Behavioral of field_maker is

    ----------------------------------- Types ----------------------------------
    type STATE_TYPE is (IDLE,
                        INITIALIZE_UP_EDGE,
                        INITIALIZE_DOWN_EDGE,
                        INITIALIZE_LEFT_EDGE,
                        INITIALIZE_RIGHT_EDGE,
                        DONE
                       );

    ---------------------------------- Signals ----------------------------------
    signal state          : STATE_TYPE := IDLE;
    signal is_initialized : STD_LOGIC  := '0';
    signal height         : INTEGER    := 0;
    signal width          : INTEGER    := 0;

begin

    process(i_clk)
    begin
        if (rising_edge(i_clk)) then
            if i_reset_n = '0' then
                is_initialized          <= '0';
                state                   <= IDLE;
                width                   <= 0;
                height                  <= 0;
                o_change_graphic_buffer <= '1';
            else
                case state is

                    when IDLE =>
                        if is_initialized = '0' then
                            is_initialized          <= '1';
                            state                   <= INITIALIZE_UP_EDGE;
                            width                   <= 0;
                            height                  <= 0;
                            o_change_graphic_buffer <= '0';
                        end if;

                    when INITIALIZE_UP_EDGE =>
                        -- perform the initialization of up edge of monitor
                        o_change_color          <= x"f00";
                        o_change_graphic_row    <= std_logic_vector(to_unsigned(width, 32));
                        o_change_graphic_column <= (others => '0');

                        if (width < (g_width / g_square_size) - 1) then
                            width <= width + 1;
                        else
                            width <= 0;
                            state <= INITIALIZE_DOWN_EDGE;
                        end if;

                    when INITIALIZE_DOWN_EDGE =>
                        -- perform the initialization of down edge of monitor
                        o_change_color          <= x"ff0";
                        o_change_graphic_row    <= std_logic_vector(to_unsigned(width, 32));
                        o_change_graphic_column <= std_logic_vector(to_unsigned((g_height / g_square_size), 32));

                        if (width < (g_width / g_square_size) - 1) then
                            width <= width + 1;
                        else
                            width <= 0;
                            state <= INITIALIZE_LEFT_EDGE;
                        end if;

                    when INITIALIZE_LEFT_EDGE =>
                        -- perform the initialization of left edge of monitor
                        o_change_color          <= x"00f";
                        o_change_graphic_column <= std_logic_vector(to_unsigned(height, 32));
                        o_change_graphic_row    <= (others => '0');

                        if (height < (g_height / g_square_size) - 1) then
                            height <= height + 1;
                        else
                            height <= 0;
                            state  <= INITIALIZE_RIGHT_EDGE;
                        end if;

                    when INITIALIZE_RIGHT_EDGE =>
                        -- perform the initialization of right edge of monitor
                        o_change_color          <= x"0ff";
                        o_change_graphic_column <= std_logic_vector(to_unsigned(height, 32));
                        o_change_graphic_row    <= std_logic_vector(to_unsigned((g_width / g_square_size), 32) - 1);

                        -- perform the initialization of left edge of monitor
                        if (height < (g_height / g_square_size) - 1) then
                            height <= height + 1;
                        else
                            height <= 0;
                            state  <= DONE;
                        end if;

                    when DONE =>
                        o_change_graphic_buffer <= '1';
                        state                   <= IDLE;
                end case;
            end if;
        end if;
    end process;

end Behavioral;
