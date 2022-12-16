library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity next_move is
    Generic(g_system_clock : integer
           );
    Port(i_clk               : in  STD_LOGIC;
         i_reset_n           : in  STD_LOGIC;
         i_enable            : in  STD_LOGIC;
         i_up_arrow          : in  STD_LOGIC;
         i_down_arrow        : in  STD_LOGIC;
         i_left_arrow        : in  STD_LOGIC;
         i_right_arrow       : in  STD_LOGIC;
         o_perform_next_move : out STD_LOGIC;
         o_led               : out STD_LOGIC_VECTOR(4 downto 0);
         o_output_mask       : out STD_LOGIC_VECTOR(3 downto 0));
end next_move;

architecture Behavioral of next_move is

    signal time_counter : INTEGER := 0;

    ------------------------------------------ Edge Detector ------------------------------------------ 
    signal up_arrow_pre_activated : std_logic := '0';
    signal up_arrow_rising        : std_logic := '0';
    signal up_arrow_holder        : std_logic := '0';

    signal down_arrow_pre_activated : std_logic := '0';
    signal down_arrow_rising        : std_logic := '0';
    signal down_arrow_holder        : std_logic := '0';

    signal right_arrow_pre_activated : std_logic := '0';
    signal right_arrow_rising        : std_logic := '0';
    signal right_arrow_holder        : std_logic := '0';

    signal left_arrow_pre_activated : std_logic := '0';
    signal left_arrow_rising        : std_logic := '0';
    signal left_arrow_holder        : std_logic := '0';

    signal clear_holders         : std_logic                    := '0';
    signal last_moving_direction : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');

begin

    ------------------------------------------ LED Debugger ------------------------------------------- 
    o_led(0) <= up_arrow_holder;
    o_led(1) <= down_arrow_holder;
    o_led(2) <= left_arrow_holder;
    o_led(3) <= right_arrow_holder;
    -- for test, should be removed
    --o_led(4) <= up_arrow_holder or down_arrow_holder or left_arrow_holder or right_arrow_holder;

    ------------------------------------------ Edge Detector ------------------------------------------ 
    up_arrow_pre_activated <= i_up_arrow when rising_edge(i_clk);
    up_arrow_rising        <= (not up_arrow_pre_activated) and i_up_arrow;

    down_arrow_pre_activated <= i_down_arrow when rising_edge(i_clk);
    down_arrow_rising        <= (not down_arrow_pre_activated) and i_down_arrow;

    right_arrow_pre_activated <= i_right_arrow when rising_edge(i_clk);
    right_arrow_rising        <= (not right_arrow_pre_activated) and i_right_arrow;

    left_arrow_pre_activated <= i_left_arrow when rising_edge(i_clk);
    left_arrow_rising        <= (not left_arrow_pre_activated) and i_left_arrow;

    process(i_clk)
    begin
        if rising_edge(i_clk) then
            if i_enable = '1' then
                if clear_holders = '1' then
                    up_arrow_holder    <= '0';
                    down_arrow_holder  <= '0';
                    left_arrow_holder  <= '0';
                    right_arrow_holder <= '0';

                end if;

                if (up_arrow_rising = '1') then
                    up_arrow_holder <= '1';
                elsif (down_arrow_rising = '1') then
                    down_arrow_holder <= '1';
                elsif (left_arrow_rising = '1') then
                    left_arrow_holder <= '1';
                elsif (right_arrow_rising = '1') then
                    right_arrow_holder <= '1';
                end if;
            end if;
        end if;

    end process;

    ------------------------------------------ Timing Handler ------------------------------------------ 
    process(i_clk)
    begin
        if rising_edge(i_clk) then
            if i_enable = '1' then
                if i_reset_n = '0' then
                    time_counter        <= 0;
                    o_output_mask       <= (others => '0');
                    o_perform_next_move <= '0';
                    clear_holders       <= '0';
                elsif time_counter = g_system_clock then
                    --elsif time_counter = 1000 then
                    time_counter <= 0;

                    if (up_arrow_holder = '1' or down_arrow_holder = '1' or left_arrow_holder = '1' or right_arrow_holder = '1') then
                        clear_holders <= '1';

                        o_perform_next_move <= '1';

                        if (up_arrow_holder = '1') then
                            o_output_mask         <= "1000";
                            last_moving_direction <= "1000";
                        elsif (down_arrow_holder = '1') then
                            o_output_mask         <= "0100";
                            last_moving_direction <= "0100";
                        elsif (left_arrow_holder = '1') then
                            o_output_mask         <= "0010";
                            last_moving_direction <= "0010";
                        elsif (right_arrow_holder = '1') then
                            o_output_mask         <= "0001";
                            last_moving_direction <= "0001";
                        end if;
                    else
                        --- nothing is pressed, we will send the last direction to move the snake
                        clear_holders <= '0';
                        if last_moving_direction = "0000" then
                            o_perform_next_move <= '0';
                        else
                            o_perform_next_move <= '1';
                            o_output_mask       <= last_moving_direction;
                        end if;

                    end if;

                else
                    clear_holders       <= '0';
                    o_perform_next_move <= '0';
                    time_counter        <= time_counter + 1;
                end if;
            end if;
        end if;
    end process;

end Behavioral;
