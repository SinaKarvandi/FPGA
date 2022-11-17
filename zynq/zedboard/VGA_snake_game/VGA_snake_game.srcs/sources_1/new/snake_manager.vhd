library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity snake_manager is
    Generic(g_width       : integer;
            g_height      : integer;
            g_square_size : integer;
            g_snake_len   : integer
           );
    Port(i_clk                    : in  STD_LOGIC;
         i_reset_n                : in  STD_LOGIC;
         i_start_snake            : in  STD_LOGIC;
         i_perform_movement       : in  STD_LOGIC;
         i_new_head_index_row     : in  STD_LOGIC_VECTOR(31 downto 0); -- new head of snake (row)
         i_new_head_index_column  : in  STD_LOGIC_VECTOR(31 downto 0); -- new head of snake (column)

         o_action_completed       : out STD_LOGIC;
         o_perform_change_to_gmem : out STD_LOGIC;
         o_index_row              : out STD_LOGIC_VECTOR(31 downto 0); -- index to array (row)
         o_index_column           : out STD_LOGIC_VECTOR(31 downto 0); -- index to array (column)
         o_color                  : out STD_LOGIC_VECTOR(11 downto 0)
        );
end snake_manager;

architecture Behavioral of snake_manager is

    ----------------------------------- Types ----------------------------------
    type STATE_TYPE is (IDLE,
                        INIT_SNAKE,
                        WAIT_FOR_MOVING_SNAKE,
                        CREATING_SNAKE_COMPLETED,
                        WAIT_FOR_GETTING_TAIL_1,
                        WAIT_FOR_GETTING_TAIL_2,
                        REMOVE_THE_TAIL,
                        PERFORM_MOVING_THE_SNAKE,
                        FINISHED_MOVING_SNAKE
                       );

    ---------------------------------- Signals ----------------------------------

    signal state : STATE_TYPE := IDLE;

    signal snake_length_counter : INTEGER := 0;

    signal we   : std_logic                     := '0';
    signal addr : std_logic_vector(9 downto 0)  := (others => '0');
    signal di   : std_logic_vector(63 downto 0) := (others => '0');
    signal do   : std_logic_vector(63 downto 0) := (others => '0');

    ------------------------------- Instantiation -------------------------------

    component bram_wf
        port(
            clk  : in  std_logic;
            we   : in  std_logic;
            en   : in  std_logic;
            addr : in  std_logic_vector(9 downto 0);
            di   : in  std_logic_vector(63 downto 0);
            do   : out std_logic_vector(63 downto 0)
        );
    end component;

begin

    ------------------------------- Port map -------------------------------

    bram : bram_wf
        port map(
            clk  => i_clk,
            we   => we,
            en   => '1',
            addr => addr,
            di   => di,
            do   => do
        );

    ------------------------------- Logic -------------------------------
    process(i_clk)
        variable temp_index_column : std_logic_vector(31 downto 0) := (others => '0');
        variable temp_index_row    : std_logic_vector(31 downto 0) := (others => '0');
    begin
        if (rising_edge(i_clk)) then

            if (i_reset_n = '0') then
                snake_length_counter     <= 0;
                we                       <= '0';
                addr                     <= (others => '0');
                di                       <= (others => '0');
                do                       <= (others => '0');
                o_perform_change_to_gmem <= '0';
                state                    <= IDLE;
                o_action_completed       <= '0';

            else
                -- perform snake move affairs
                case state is

                    when IDLE =>
                        o_action_completed <= '0';
                        -- perform snake initialization
                        if i_start_snake = '1' then
                            state                <= INIT_SNAKE;
                            snake_length_counter <= 0;
                        end if;

                    when INIT_SNAKE =>

                        -- initialize the snake
                        o_color              <= x"f0f";
                        snake_length_counter <= snake_length_counter + 1;

                        temp_index_column := std_logic_vector(to_unsigned(((g_height / g_square_size) / 2) - (g_snake_len / 2) + snake_length_counter, 32));
                        temp_index_row    := std_logic_vector(to_unsigned((g_width / g_square_size) / 2, 32) - 1);

                        -- enable mem write
                        o_perform_change_to_gmem <= '1';

                        -- send output to the graphic mem
                        o_index_column <= temp_index_column;
                        o_index_row    <= temp_index_row;

                        -- save the state of the snake
                        we   <= '1';
                        addr <= std_logic_vector(to_unsigned(snake_length_counter, 10));
                        di   <= temp_index_row & temp_index_column;

                        -- check if it's ended or not
                        if g_snake_len = snake_length_counter then
                            state   <= CREATING_SNAKE_COMPLETED;
                            o_color <= x"902";
                        end if;

                    when CREATING_SNAKE_COMPLETED =>
                        o_perform_change_to_gmem <= '0';
                        o_action_completed       <= '1';
                        state                    <= WAIT_FOR_MOVING_SNAKE;
                        we                       <= '0';
                        addr                     <= (others => '0');

                    when WAIT_FOR_MOVING_SNAKE =>

                        o_action_completed       <= '0';
                        o_perform_change_to_gmem <= '0';
                        do    <= (others => '0');

                        if i_perform_movement = '1' then
                            state <= PERFORM_MOVING_THE_SNAKE;
                        end if;

                    when PERFORM_MOVING_THE_SNAKE =>

                        we    <= '0';
                        di    <= (others => '0');
                        addr  <= std_logic_vector(to_unsigned(snake_length_counter - 1, 10));
                        state <= WAIT_FOR_GETTING_TAIL_1;

                    when WAIT_FOR_GETTING_TAIL_1 =>

                        state <= WAIT_FOR_GETTING_TAIL_2;

                    when WAIT_FOR_GETTING_TAIL_2 =>

                        state <= REMOVE_THE_TAIL;

                    when REMOVE_THE_TAIL =>

                        o_perform_change_to_gmem <= '1';
                        o_index_row              <= do(63 downto 32);
                        o_index_column           <= do(31 downto 0);
                        o_color                  <= x"000";

                        state <= FINISHED_MOVING_SNAKE;

                    when FINISHED_MOVING_SNAKE =>

                        o_perform_change_to_gmem <= '0';
                        o_action_completed       <= '1';
                        state                    <= WAIT_FOR_MOVING_SNAKE;

                end case;
            end if;
        end if;
    end process;

end Behavioral;
