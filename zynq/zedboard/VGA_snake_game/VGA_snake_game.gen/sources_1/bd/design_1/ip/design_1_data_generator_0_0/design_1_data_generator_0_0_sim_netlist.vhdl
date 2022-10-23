-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Sun Oct 23 01:58:18 2022
-- Host        : DESKTOP-SEM2DAL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_data_generator_0_0 -prefix
--               design_1_data_generator_0_0_ design_1_data_generator_0_0_sim_netlist.vhdl
-- Design      : design_1_data_generator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_data_generator_0_0_data_generator is
  port (
    o_data : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_data_valid : out STD_LOGIC;
    o_sof : out STD_LOGIC;
    o_eol : out STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_data_ready : in STD_LOGIC;
    i_reset_n : in STD_LOGIC
  );
end design_1_data_generator_0_0_data_generator;

architecture STRUCTURE of design_1_data_generator_0_0_data_generator is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal data_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \data_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \data_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \data_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \data_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \data_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \data_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \data_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \data_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \data_counter0_carry__2_n_0\ : STD_LOGIC;
  signal \data_counter0_carry__2_n_1\ : STD_LOGIC;
  signal \data_counter0_carry__2_n_2\ : STD_LOGIC;
  signal \data_counter0_carry__2_n_3\ : STD_LOGIC;
  signal \data_counter0_carry__3_n_0\ : STD_LOGIC;
  signal \data_counter0_carry__3_n_1\ : STD_LOGIC;
  signal \data_counter0_carry__3_n_2\ : STD_LOGIC;
  signal \data_counter0_carry__3_n_3\ : STD_LOGIC;
  signal \data_counter0_carry__4_n_0\ : STD_LOGIC;
  signal \data_counter0_carry__4_n_1\ : STD_LOGIC;
  signal \data_counter0_carry__4_n_2\ : STD_LOGIC;
  signal \data_counter0_carry__4_n_3\ : STD_LOGIC;
  signal \data_counter0_carry__5_n_0\ : STD_LOGIC;
  signal \data_counter0_carry__5_n_1\ : STD_LOGIC;
  signal \data_counter0_carry__5_n_2\ : STD_LOGIC;
  signal \data_counter0_carry__5_n_3\ : STD_LOGIC;
  signal \data_counter0_carry__6_n_2\ : STD_LOGIC;
  signal \data_counter0_carry__6_n_3\ : STD_LOGIC;
  signal data_counter0_carry_n_0 : STD_LOGIC;
  signal data_counter0_carry_n_1 : STD_LOGIC;
  signal data_counter0_carry_n_2 : STD_LOGIC;
  signal data_counter0_carry_n_3 : STD_LOGIC;
  signal data_counter_0 : STD_LOGIC;
  signal \data_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[17]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[18]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[19]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[20]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[21]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[22]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[23]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[24]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[25]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[26]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[27]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[28]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[29]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[30]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[31]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal in9 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal line_pixel_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \line_pixel_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__2_n_0\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__2_n_1\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__2_n_2\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__2_n_3\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__3_n_0\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__3_n_1\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__3_n_2\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__3_n_3\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__4_n_0\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__4_n_1\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__4_n_2\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__4_n_3\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__5_n_0\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__5_n_1\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__5_n_2\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__5_n_3\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__6_n_2\ : STD_LOGIC;
  signal \line_pixel_counter0_carry__6_n_3\ : STD_LOGIC;
  signal line_pixel_counter0_carry_n_0 : STD_LOGIC;
  signal line_pixel_counter0_carry_n_1 : STD_LOGIC;
  signal line_pixel_counter0_carry_n_2 : STD_LOGIC;
  signal line_pixel_counter0_carry_n_3 : STD_LOGIC;
  signal line_pixel_counter1_in : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \line_pixel_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal line_pixel_counter_1 : STD_LOGIC;
  signal o_data2 : STD_LOGIC;
  signal o_data21_in : STD_LOGIC;
  signal \o_data2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \o_data2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \o_data2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \o_data2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \o_data2_carry__0_n_0\ : STD_LOGIC;
  signal \o_data2_carry__0_n_1\ : STD_LOGIC;
  signal \o_data2_carry__0_n_2\ : STD_LOGIC;
  signal \o_data2_carry__0_n_3\ : STD_LOGIC;
  signal \o_data2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \o_data2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \o_data2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \o_data2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \o_data2_carry__1_n_0\ : STD_LOGIC;
  signal \o_data2_carry__1_n_1\ : STD_LOGIC;
  signal \o_data2_carry__1_n_2\ : STD_LOGIC;
  signal \o_data2_carry__1_n_3\ : STD_LOGIC;
  signal \o_data2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal o_data2_carry_i_1_n_0 : STD_LOGIC;
  signal o_data2_carry_i_2_n_0 : STD_LOGIC;
  signal o_data2_carry_i_3_n_0 : STD_LOGIC;
  signal o_data2_carry_i_4_n_0 : STD_LOGIC;
  signal o_data2_carry_i_5_n_0 : STD_LOGIC;
  signal o_data2_carry_i_6_n_0 : STD_LOGIC;
  signal o_data2_carry_n_0 : STD_LOGIC;
  signal o_data2_carry_n_1 : STD_LOGIC;
  signal o_data2_carry_n_2 : STD_LOGIC;
  signal o_data2_carry_n_3 : STD_LOGIC;
  signal \o_data2_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \o_data2_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \o_data2_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \o_data2_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \o_data2_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \o_data2_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \o_data2_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \o_data2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \o_data2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \o_data2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \o_data2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \^o_data_valid\ : STD_LOGIC;
  signal o_data_valid_i_10_n_0 : STD_LOGIC;
  signal o_data_valid_i_11_n_0 : STD_LOGIC;
  signal o_data_valid_i_1_n_0 : STD_LOGIC;
  signal o_data_valid_i_2_n_0 : STD_LOGIC;
  signal o_data_valid_i_3_n_0 : STD_LOGIC;
  signal o_data_valid_i_4_n_0 : STD_LOGIC;
  signal o_data_valid_i_5_n_0 : STD_LOGIC;
  signal o_data_valid_i_6_n_0 : STD_LOGIC;
  signal o_data_valid_i_7_n_0 : STD_LOGIC;
  signal o_data_valid_i_8_n_0 : STD_LOGIC;
  signal o_data_valid_i_9_n_0 : STD_LOGIC;
  signal \^o_eol\ : STD_LOGIC;
  signal o_eol_i_1_n_0 : STD_LOGIC;
  signal o_eol_i_2_n_0 : STD_LOGIC;
  signal o_eol_i_3_n_0 : STD_LOGIC;
  signal o_eol_i_4_n_0 : STD_LOGIC;
  signal o_eol_i_5_n_0 : STD_LOGIC;
  signal o_eol_i_6_n_0 : STD_LOGIC;
  signal \^o_sof\ : STD_LOGIC;
  signal o_sof_i_1_n_0 : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_data_counter0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_data_counter0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_line_pixel_counter0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_line_pixel_counter0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_o_data2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_data2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_data2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_data2_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_o_data2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_data2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_data2_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_data2_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_3\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "end_line:10,send_data:01,idle:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "end_line:10,send_data:01,idle:00";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of data_counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \data_counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \data_counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \data_counter0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \data_counter0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \data_counter0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \data_counter0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \data_counter0_carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of line_pixel_counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \line_pixel_counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \line_pixel_counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \line_pixel_counter0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \line_pixel_counter0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \line_pixel_counter0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \line_pixel_counter0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \line_pixel_counter0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \line_pixel_counter[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \line_pixel_counter[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \line_pixel_counter[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \line_pixel_counter[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \line_pixel_counter[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \line_pixel_counter[14]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \line_pixel_counter[15]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \line_pixel_counter[16]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \line_pixel_counter[17]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \line_pixel_counter[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \line_pixel_counter[19]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \line_pixel_counter[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \line_pixel_counter[20]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \line_pixel_counter[21]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \line_pixel_counter[22]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \line_pixel_counter[23]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \line_pixel_counter[24]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \line_pixel_counter[25]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \line_pixel_counter[26]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \line_pixel_counter[27]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \line_pixel_counter[28]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \line_pixel_counter[29]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \line_pixel_counter[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \line_pixel_counter[30]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \line_pixel_counter[31]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \line_pixel_counter[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \line_pixel_counter[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \line_pixel_counter[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \line_pixel_counter[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \line_pixel_counter[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \line_pixel_counter[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \line_pixel_counter[9]_i_1\ : label is "soft_lutpair13";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of o_data2_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \o_data2_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \o_data2_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \o_data2_carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \o_data2_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \o_data2_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \o_data2_inferred__0/i__carry__1\ : label is 11;
  attribute SOFT_HLUTNM of \o_data[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_data[16]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of o_eol_i_5 : label is "soft_lutpair0";
begin
  o_data_valid <= \^o_data_valid\;
  o_eol <= \^o_eol\;
  o_sof <= \^o_sof\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFDFFFD"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_3_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_5_n_0,
      I4 => \FSM_sequential_state[0]_i_2_n_0\,
      I5 => \state__0\(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_4_n_0\,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => \FSM_sequential_state[0]_i_3_n_0\,
      I3 => o_eol_i_6_n_0,
      I4 => o_eol_i_3_n_0,
      I5 => o_eol_i_4_n_0,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => line_pixel_counter(0),
      I1 => line_pixel_counter(1),
      I2 => \state__0\(1),
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => \FSM_sequential_state[1]_i_4_n_0\,
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => o_eol_i_4_n_0,
      I1 => o_eol_i_3_n_0,
      I2 => o_eol_i_6_n_0,
      I3 => line_pixel_counter(0),
      I4 => line_pixel_counter(1),
      I5 => \state__0\(1),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => line_pixel_counter(28),
      I1 => line_pixel_counter(29),
      I2 => line_pixel_counter(26),
      I3 => line_pixel_counter(27),
      I4 => line_pixel_counter(31),
      I5 => line_pixel_counter(30),
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => line_pixel_counter(22),
      I1 => line_pixel_counter(23),
      I2 => line_pixel_counter(20),
      I3 => line_pixel_counter(21),
      I4 => line_pixel_counter(25),
      I5 => line_pixel_counter(24),
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0),
      R => o_data_valid_i_1_n_0
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1),
      R => o_data_valid_i_1_n_0
    );
data_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => data_counter0_carry_n_0,
      CO(2) => data_counter0_carry_n_1,
      CO(1) => data_counter0_carry_n_2,
      CO(0) => data_counter0_carry_n_3,
      CYINIT => \data_counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \data_counter_reg_n_0_[4]\,
      S(2) => \data_counter_reg_n_0_[3]\,
      S(1) => \data_counter_reg_n_0_[2]\,
      S(0) => \data_counter_reg_n_0_[1]\
    );
\data_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => data_counter0_carry_n_0,
      CO(3) => \data_counter0_carry__0_n_0\,
      CO(2) => \data_counter0_carry__0_n_1\,
      CO(1) => \data_counter0_carry__0_n_2\,
      CO(0) => \data_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \data_counter_reg_n_0_[8]\,
      S(2) => \data_counter_reg_n_0_[7]\,
      S(1) => \data_counter_reg_n_0_[6]\,
      S(0) => \data_counter_reg_n_0_[5]\
    );
\data_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_counter0_carry__0_n_0\,
      CO(3) => \data_counter0_carry__1_n_0\,
      CO(2) => \data_counter0_carry__1_n_1\,
      CO(1) => \data_counter0_carry__1_n_2\,
      CO(0) => \data_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \data_counter_reg_n_0_[12]\,
      S(2) => \data_counter_reg_n_0_[11]\,
      S(1) => \data_counter_reg_n_0_[10]\,
      S(0) => \data_counter_reg_n_0_[9]\
    );
\data_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_counter0_carry__1_n_0\,
      CO(3) => \data_counter0_carry__2_n_0\,
      CO(2) => \data_counter0_carry__2_n_1\,
      CO(1) => \data_counter0_carry__2_n_2\,
      CO(0) => \data_counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \data_counter_reg_n_0_[16]\,
      S(2) => \data_counter_reg_n_0_[15]\,
      S(1) => \data_counter_reg_n_0_[14]\,
      S(0) => \data_counter_reg_n_0_[13]\
    );
\data_counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_counter0_carry__2_n_0\,
      CO(3) => \data_counter0_carry__3_n_0\,
      CO(2) => \data_counter0_carry__3_n_1\,
      CO(1) => \data_counter0_carry__3_n_2\,
      CO(0) => \data_counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \data_counter_reg_n_0_[20]\,
      S(2) => \data_counter_reg_n_0_[19]\,
      S(1) => \data_counter_reg_n_0_[18]\,
      S(0) => \data_counter_reg_n_0_[17]\
    );
\data_counter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_counter0_carry__3_n_0\,
      CO(3) => \data_counter0_carry__4_n_0\,
      CO(2) => \data_counter0_carry__4_n_1\,
      CO(1) => \data_counter0_carry__4_n_2\,
      CO(0) => \data_counter0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3) => \data_counter_reg_n_0_[24]\,
      S(2) => \data_counter_reg_n_0_[23]\,
      S(1) => \data_counter_reg_n_0_[22]\,
      S(0) => \data_counter_reg_n_0_[21]\
    );
\data_counter0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_counter0_carry__4_n_0\,
      CO(3) => \data_counter0_carry__5_n_0\,
      CO(2) => \data_counter0_carry__5_n_1\,
      CO(1) => \data_counter0_carry__5_n_2\,
      CO(0) => \data_counter0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3) => \data_counter_reg_n_0_[28]\,
      S(2) => \data_counter_reg_n_0_[27]\,
      S(1) => \data_counter_reg_n_0_[26]\,
      S(0) => \data_counter_reg_n_0_[25]\
    );
\data_counter0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_counter0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_data_counter0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \data_counter0_carry__6_n_2\,
      CO(0) => \data_counter0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_data_counter0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2) => \data_counter_reg_n_0_[31]\,
      S(1) => \data_counter_reg_n_0_[30]\,
      S(0) => \data_counter_reg_n_0_[29]\
    );
\data_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"13"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \data_counter_reg_n_0_[0]\,
      I2 => \state__0\(1),
      O => data_counter(0)
    );
\data_counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(10),
      O => data_counter(10)
    );
\data_counter[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(11),
      O => data_counter(11)
    );
\data_counter[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(12),
      O => data_counter(12)
    );
\data_counter[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(13),
      O => data_counter(13)
    );
\data_counter[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(14),
      O => data_counter(14)
    );
\data_counter[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(15),
      O => data_counter(15)
    );
\data_counter[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(16),
      O => data_counter(16)
    );
\data_counter[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(17),
      O => data_counter(17)
    );
\data_counter[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(18),
      O => data_counter(18)
    );
\data_counter[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(19),
      O => data_counter(19)
    );
\data_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(1),
      O => data_counter(1)
    );
\data_counter[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(20),
      O => data_counter(20)
    );
\data_counter[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(21),
      O => data_counter(21)
    );
\data_counter[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(22),
      O => data_counter(22)
    );
\data_counter[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(23),
      O => data_counter(23)
    );
\data_counter[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(24),
      O => data_counter(24)
    );
\data_counter[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(25),
      O => data_counter(25)
    );
\data_counter[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(26),
      O => data_counter(26)
    );
\data_counter[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(27),
      O => data_counter(27)
    );
\data_counter[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(28),
      O => data_counter(28)
    );
\data_counter[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(29),
      O => data_counter(29)
    );
\data_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(2),
      O => data_counter(2)
    );
\data_counter[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(30),
      O => data_counter(30)
    );
\data_counter[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222388888888"
    )
        port map (
      I0 => i_data_ready,
      I1 => \state__0\(0),
      I2 => o_data_valid_i_5_n_0,
      I3 => o_data_valid_i_4_n_0,
      I4 => o_data_valid_i_3_n_0,
      I5 => \state__0\(1),
      O => data_counter_0
    );
\data_counter[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(31),
      O => data_counter(31)
    );
\data_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(3),
      O => data_counter(3)
    );
\data_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(4),
      O => data_counter(4)
    );
\data_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(5),
      O => data_counter(5)
    );
\data_counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(6),
      O => data_counter(6)
    );
\data_counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(7),
      O => data_counter(7)
    );
\data_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(8),
      O => data_counter(8)
    );
\data_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => o_data_valid_i_5_n_0,
      I2 => o_data_valid_i_4_n_0,
      I3 => o_data_valid_i_3_n_0,
      I4 => \state__0\(0),
      I5 => data0(9),
      O => data_counter(9)
    );
\data_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(0),
      Q => \data_counter_reg_n_0_[0]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(10),
      Q => \data_counter_reg_n_0_[10]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(11),
      Q => \data_counter_reg_n_0_[11]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(12),
      Q => \data_counter_reg_n_0_[12]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(13),
      Q => \data_counter_reg_n_0_[13]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(14),
      Q => \data_counter_reg_n_0_[14]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(15),
      Q => \data_counter_reg_n_0_[15]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(16),
      Q => \data_counter_reg_n_0_[16]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(17),
      Q => \data_counter_reg_n_0_[17]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(18),
      Q => \data_counter_reg_n_0_[18]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(19),
      Q => \data_counter_reg_n_0_[19]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(1),
      Q => \data_counter_reg_n_0_[1]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(20),
      Q => \data_counter_reg_n_0_[20]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(21),
      Q => \data_counter_reg_n_0_[21]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(22),
      Q => \data_counter_reg_n_0_[22]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(23),
      Q => \data_counter_reg_n_0_[23]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(24),
      Q => \data_counter_reg_n_0_[24]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(25),
      Q => \data_counter_reg_n_0_[25]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(26),
      Q => \data_counter_reg_n_0_[26]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(27),
      Q => \data_counter_reg_n_0_[27]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(28),
      Q => \data_counter_reg_n_0_[28]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(29),
      Q => \data_counter_reg_n_0_[29]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(2),
      Q => \data_counter_reg_n_0_[2]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(30),
      Q => \data_counter_reg_n_0_[30]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(31),
      Q => \data_counter_reg_n_0_[31]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(3),
      Q => \data_counter_reg_n_0_[3]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(4),
      Q => \data_counter_reg_n_0_[4]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(5),
      Q => \data_counter_reg_n_0_[5]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(6),
      Q => \data_counter_reg_n_0_[6]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(7),
      Q => \data_counter_reg_n_0_[7]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(8),
      Q => \data_counter_reg_n_0_[8]\,
      R => o_data_valid_i_1_n_0
    );
\data_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => data_counter_0,
      D => data_counter(9),
      Q => \data_counter_reg_n_0_[9]\,
      R => o_data_valid_i_1_n_0
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(22),
      I1 => line_pixel_counter(23),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(20),
      I1 => line_pixel_counter(21),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(18),
      I1 => line_pixel_counter(19),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(16),
      I1 => line_pixel_counter(17),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(30),
      I1 => line_pixel_counter(31),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(28),
      I1 => line_pixel_counter(29),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(26),
      I1 => line_pixel_counter(27),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(24),
      I1 => line_pixel_counter(25),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(10),
      I1 => line_pixel_counter(11),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(8),
      I1 => line_pixel_counter(9),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(14),
      I1 => line_pixel_counter(15),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(12),
      I1 => line_pixel_counter(13),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => line_pixel_counter(10),
      I1 => line_pixel_counter(11),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => line_pixel_counter(8),
      I1 => line_pixel_counter(9),
      O => \i__carry_i_6_n_0\
    );
line_pixel_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => line_pixel_counter0_carry_n_0,
      CO(2) => line_pixel_counter0_carry_n_1,
      CO(1) => line_pixel_counter0_carry_n_2,
      CO(0) => line_pixel_counter0_carry_n_3,
      CYINIT => line_pixel_counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(4 downto 1),
      S(3 downto 0) => line_pixel_counter(4 downto 1)
    );
\line_pixel_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => line_pixel_counter0_carry_n_0,
      CO(3) => \line_pixel_counter0_carry__0_n_0\,
      CO(2) => \line_pixel_counter0_carry__0_n_1\,
      CO(1) => \line_pixel_counter0_carry__0_n_2\,
      CO(0) => \line_pixel_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(8 downto 5),
      S(3 downto 0) => line_pixel_counter(8 downto 5)
    );
\line_pixel_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_pixel_counter0_carry__0_n_0\,
      CO(3) => \line_pixel_counter0_carry__1_n_0\,
      CO(2) => \line_pixel_counter0_carry__1_n_1\,
      CO(1) => \line_pixel_counter0_carry__1_n_2\,
      CO(0) => \line_pixel_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(12 downto 9),
      S(3 downto 0) => line_pixel_counter(12 downto 9)
    );
\line_pixel_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_pixel_counter0_carry__1_n_0\,
      CO(3) => \line_pixel_counter0_carry__2_n_0\,
      CO(2) => \line_pixel_counter0_carry__2_n_1\,
      CO(1) => \line_pixel_counter0_carry__2_n_2\,
      CO(0) => \line_pixel_counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(16 downto 13),
      S(3 downto 0) => line_pixel_counter(16 downto 13)
    );
\line_pixel_counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_pixel_counter0_carry__2_n_0\,
      CO(3) => \line_pixel_counter0_carry__3_n_0\,
      CO(2) => \line_pixel_counter0_carry__3_n_1\,
      CO(1) => \line_pixel_counter0_carry__3_n_2\,
      CO(0) => \line_pixel_counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(20 downto 17),
      S(3 downto 0) => line_pixel_counter(20 downto 17)
    );
\line_pixel_counter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_pixel_counter0_carry__3_n_0\,
      CO(3) => \line_pixel_counter0_carry__4_n_0\,
      CO(2) => \line_pixel_counter0_carry__4_n_1\,
      CO(1) => \line_pixel_counter0_carry__4_n_2\,
      CO(0) => \line_pixel_counter0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(24 downto 21),
      S(3 downto 0) => line_pixel_counter(24 downto 21)
    );
\line_pixel_counter0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_pixel_counter0_carry__4_n_0\,
      CO(3) => \line_pixel_counter0_carry__5_n_0\,
      CO(2) => \line_pixel_counter0_carry__5_n_1\,
      CO(1) => \line_pixel_counter0_carry__5_n_2\,
      CO(0) => \line_pixel_counter0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(28 downto 25),
      S(3 downto 0) => line_pixel_counter(28 downto 25)
    );
\line_pixel_counter0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_pixel_counter0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_line_pixel_counter0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \line_pixel_counter0_carry__6_n_2\,
      CO(0) => \line_pixel_counter0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_line_pixel_counter0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => in9(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => line_pixel_counter(31 downto 29)
    );
\line_pixel_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(0),
      I1 => \state__0\(1),
      O => \line_pixel_counter[0]_i_1_n_0\
    );
\line_pixel_counter[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(10),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(10)
    );
\line_pixel_counter[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(11),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(11)
    );
\line_pixel_counter[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(12),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(12)
    );
\line_pixel_counter[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(13),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(13)
    );
\line_pixel_counter[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(14),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(14)
    );
\line_pixel_counter[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(15),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(15)
    );
\line_pixel_counter[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(16),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(16)
    );
\line_pixel_counter[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(17),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(17)
    );
\line_pixel_counter[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(18),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(18)
    );
\line_pixel_counter[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(19),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(19)
    );
\line_pixel_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(1),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(1)
    );
\line_pixel_counter[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(20),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(20)
    );
\line_pixel_counter[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(21),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(21)
    );
\line_pixel_counter[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(22),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(22)
    );
\line_pixel_counter[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(23),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(23)
    );
\line_pixel_counter[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(24),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(24)
    );
\line_pixel_counter[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(25),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(25)
    );
\line_pixel_counter[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(26),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(26)
    );
\line_pixel_counter[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(27),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(27)
    );
\line_pixel_counter[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(28),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(28)
    );
\line_pixel_counter[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(29),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(29)
    );
\line_pixel_counter[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(2),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(2)
    );
\line_pixel_counter[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(30),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(30)
    );
\line_pixel_counter[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => i_data_ready,
      O => line_pixel_counter_1
    );
\line_pixel_counter[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(31),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(31)
    );
\line_pixel_counter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(3),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(3)
    );
\line_pixel_counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(4),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(4)
    );
\line_pixel_counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(5),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(5)
    );
\line_pixel_counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(6),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(6)
    );
\line_pixel_counter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(7),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(7)
    );
\line_pixel_counter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(8),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(8)
    );
\line_pixel_counter[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in9(9),
      I1 => \state__0\(1),
      O => line_pixel_counter1_in(9)
    );
\line_pixel_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => \line_pixel_counter[0]_i_1_n_0\,
      Q => line_pixel_counter(0),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(10),
      Q => line_pixel_counter(10),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(11),
      Q => line_pixel_counter(11),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(12),
      Q => line_pixel_counter(12),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(13),
      Q => line_pixel_counter(13),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(14),
      Q => line_pixel_counter(14),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(15),
      Q => line_pixel_counter(15),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(16),
      Q => line_pixel_counter(16),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(17),
      Q => line_pixel_counter(17),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(18),
      Q => line_pixel_counter(18),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(19),
      Q => line_pixel_counter(19),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(1),
      Q => line_pixel_counter(1),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(20),
      Q => line_pixel_counter(20),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(21),
      Q => line_pixel_counter(21),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(22),
      Q => line_pixel_counter(22),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(23),
      Q => line_pixel_counter(23),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(24),
      Q => line_pixel_counter(24),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(25),
      Q => line_pixel_counter(25),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(26),
      Q => line_pixel_counter(26),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(27),
      Q => line_pixel_counter(27),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(28),
      Q => line_pixel_counter(28),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(29),
      Q => line_pixel_counter(29),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(2),
      Q => line_pixel_counter(2),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(30),
      Q => line_pixel_counter(30),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(31),
      Q => line_pixel_counter(31),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(3),
      Q => line_pixel_counter(3),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(4),
      Q => line_pixel_counter(4),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(5),
      Q => line_pixel_counter(5),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(6),
      Q => line_pixel_counter(6),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(7),
      Q => line_pixel_counter(7),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(8),
      Q => line_pixel_counter(8),
      R => o_data_valid_i_1_n_0
    );
\line_pixel_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => line_pixel_counter_1,
      D => line_pixel_counter1_in(9),
      Q => line_pixel_counter(9),
      R => o_data_valid_i_1_n_0
    );
o_data2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => o_data2_carry_n_0,
      CO(2) => o_data2_carry_n_1,
      CO(1) => o_data2_carry_n_2,
      CO(0) => o_data2_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => o_data2_carry_i_1_n_0,
      DI(0) => o_data2_carry_i_2_n_0,
      O(3 downto 0) => NLW_o_data2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => o_data2_carry_i_3_n_0,
      S(2) => o_data2_carry_i_4_n_0,
      S(1) => o_data2_carry_i_5_n_0,
      S(0) => o_data2_carry_i_6_n_0
    );
\o_data2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => o_data2_carry_n_0,
      CO(3) => \o_data2_carry__0_n_0\,
      CO(2) => \o_data2_carry__0_n_1\,
      CO(1) => \o_data2_carry__0_n_2\,
      CO(0) => \o_data2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_o_data2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \o_data2_carry__0_i_1_n_0\,
      S(2) => \o_data2_carry__0_i_2_n_0\,
      S(1) => \o_data2_carry__0_i_3_n_0\,
      S(0) => \o_data2_carry__0_i_4_n_0\
    );
\o_data2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(20),
      I1 => line_pixel_counter(21),
      O => \o_data2_carry__0_i_1_n_0\
    );
\o_data2_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(18),
      I1 => line_pixel_counter(19),
      O => \o_data2_carry__0_i_2_n_0\
    );
\o_data2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(16),
      I1 => line_pixel_counter(17),
      O => \o_data2_carry__0_i_3_n_0\
    );
\o_data2_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(14),
      I1 => line_pixel_counter(15),
      O => \o_data2_carry__0_i_4_n_0\
    );
\o_data2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_data2_carry__0_n_0\,
      CO(3) => \o_data2_carry__1_n_0\,
      CO(2) => \o_data2_carry__1_n_1\,
      CO(1) => \o_data2_carry__1_n_2\,
      CO(0) => \o_data2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_o_data2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \o_data2_carry__1_i_1_n_0\,
      S(2) => \o_data2_carry__1_i_2_n_0\,
      S(1) => \o_data2_carry__1_i_3_n_0\,
      S(0) => \o_data2_carry__1_i_4_n_0\
    );
\o_data2_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(28),
      I1 => line_pixel_counter(29),
      O => \o_data2_carry__1_i_1_n_0\
    );
\o_data2_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(26),
      I1 => line_pixel_counter(27),
      O => \o_data2_carry__1_i_2_n_0\
    );
\o_data2_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(24),
      I1 => line_pixel_counter(25),
      O => \o_data2_carry__1_i_3_n_0\
    );
\o_data2_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(22),
      I1 => line_pixel_counter(23),
      O => \o_data2_carry__1_i_4_n_0\
    );
\o_data2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_data2_carry__1_n_0\,
      CO(3 downto 1) => \NLW_o_data2_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => o_data21_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => line_pixel_counter(31),
      O(3 downto 0) => \NLW_o_data2_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \o_data2_carry__2_i_1_n_0\
    );
\o_data2_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(30),
      I1 => line_pixel_counter(31),
      O => \o_data2_carry__2_i_1_n_0\
    );
o_data2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(9),
      O => o_data2_carry_i_1_n_0
    );
o_data2_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(7),
      O => o_data2_carry_i_2_n_0
    );
o_data2_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(12),
      I1 => line_pixel_counter(13),
      O => o_data2_carry_i_3_n_0
    );
o_data2_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_pixel_counter(10),
      I1 => line_pixel_counter(11),
      O => o_data2_carry_i_4_n_0
    );
o_data2_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => line_pixel_counter(9),
      I1 => line_pixel_counter(8),
      O => o_data2_carry_i_5_n_0
    );
o_data2_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => line_pixel_counter(7),
      I1 => line_pixel_counter(6),
      O => o_data2_carry_i_6_n_0
    );
\o_data2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_data2_inferred__0/i__carry_n_0\,
      CO(2) => \o_data2_inferred__0/i__carry_n_1\,
      CO(1) => \o_data2_inferred__0/i__carry_n_2\,
      CO(0) => \o_data2_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \i__carry_i_1_n_0\,
      DI(0) => \i__carry_i_2_n_0\,
      O(3 downto 0) => \NLW_o_data2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_3_n_0\,
      S(2) => \i__carry_i_4_n_0\,
      S(1) => \i__carry_i_5_n_0\,
      S(0) => \i__carry_i_6_n_0\
    );
\o_data2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_data2_inferred__0/i__carry_n_0\,
      CO(3) => \o_data2_inferred__0/i__carry__0_n_0\,
      CO(2) => \o_data2_inferred__0/i__carry__0_n_1\,
      CO(1) => \o_data2_inferred__0/i__carry__0_n_2\,
      CO(0) => \o_data2_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_o_data2_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\o_data2_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_data2_inferred__0/i__carry__0_n_0\,
      CO(3) => o_data2,
      CO(2) => \o_data2_inferred__0/i__carry__1_n_1\,
      CO(1) => \o_data2_inferred__0/i__carry__1_n_2\,
      CO(0) => \o_data2_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => line_pixel_counter(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_o_data2_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\o_data[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => o_data21_in,
      I1 => line_pixel_counter(31),
      O => o_data(0)
    );
\o_data[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => line_pixel_counter(31),
      I1 => o_data21_in,
      I2 => o_data2,
      O => o_data(2)
    );
\o_data[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => o_data2,
      I1 => o_data21_in,
      O => o_data(1)
    );
o_data_valid_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reset_n,
      O => o_data_valid_i_1_n_0
    );
o_data_valid_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \data_counter_reg_n_0_[29]\,
      I1 => \data_counter_reg_n_0_[28]\,
      I2 => \data_counter_reg_n_0_[31]\,
      I3 => \data_counter_reg_n_0_[30]\,
      O => o_data_valid_i_10_n_0
    );
o_data_valid_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \data_counter_reg_n_0_[25]\,
      I1 => \data_counter_reg_n_0_[24]\,
      I2 => \data_counter_reg_n_0_[27]\,
      I3 => \data_counter_reg_n_0_[26]\,
      O => o_data_valid_i_11_n_0
    );
o_data_valid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD11111111"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => o_data_valid_i_3_n_0,
      I3 => o_data_valid_i_4_n_0,
      I4 => o_data_valid_i_5_n_0,
      I5 => \^o_data_valid\,
      O => o_data_valid_i_2_n_0
    );
o_data_valid_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => \data_counter_reg_n_0_[10]\,
      I1 => \data_counter_reg_n_0_[11]\,
      I2 => \data_counter_reg_n_0_[8]\,
      I3 => \data_counter_reg_n_0_[9]\,
      I4 => o_data_valid_i_6_n_0,
      O => o_data_valid_i_3_n_0
    );
o_data_valid_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \data_counter_reg_n_0_[2]\,
      I1 => \data_counter_reg_n_0_[3]\,
      I2 => \data_counter_reg_n_0_[0]\,
      I3 => \data_counter_reg_n_0_[1]\,
      I4 => o_data_valid_i_7_n_0,
      O => o_data_valid_i_4_n_0
    );
o_data_valid_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => o_data_valid_i_8_n_0,
      I1 => o_data_valid_i_9_n_0,
      I2 => o_data_valid_i_10_n_0,
      I3 => o_data_valid_i_11_n_0,
      O => o_data_valid_i_5_n_0
    );
o_data_valid_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \data_counter_reg_n_0_[13]\,
      I1 => \data_counter_reg_n_0_[12]\,
      I2 => \data_counter_reg_n_0_[15]\,
      I3 => \data_counter_reg_n_0_[14]\,
      O => o_data_valid_i_6_n_0
    );
o_data_valid_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \data_counter_reg_n_0_[5]\,
      I1 => \data_counter_reg_n_0_[4]\,
      I2 => \data_counter_reg_n_0_[7]\,
      I3 => \data_counter_reg_n_0_[6]\,
      O => o_data_valid_i_7_n_0
    );
o_data_valid_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \data_counter_reg_n_0_[20]\,
      I1 => \data_counter_reg_n_0_[21]\,
      I2 => \data_counter_reg_n_0_[23]\,
      I3 => \data_counter_reg_n_0_[22]\,
      O => o_data_valid_i_8_n_0
    );
o_data_valid_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \data_counter_reg_n_0_[17]\,
      I1 => \data_counter_reg_n_0_[16]\,
      I2 => \data_counter_reg_n_0_[19]\,
      I3 => \data_counter_reg_n_0_[18]\,
      O => o_data_valid_i_9_n_0
    );
o_data_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_data_valid_i_2_n_0,
      Q => \^o_data_valid\,
      R => o_data_valid_i_1_n_0
    );
o_eol_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33F73300"
    )
        port map (
      I0 => i_data_ready,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => o_eol_i_2_n_0,
      I4 => \^o_eol\,
      O => o_eol_i_1_n_0
    );
o_eol_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_4_n_0\,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => o_eol_i_3_n_0,
      I3 => o_eol_i_4_n_0,
      I4 => o_eol_i_5_n_0,
      I5 => o_eol_i_6_n_0,
      O => o_eol_i_2_n_0
    );
o_eol_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => line_pixel_counter(16),
      I1 => line_pixel_counter(17),
      I2 => line_pixel_counter(14),
      I3 => line_pixel_counter(15),
      I4 => line_pixel_counter(19),
      I5 => line_pixel_counter(18),
      O => o_eol_i_3_n_0
    );
o_eol_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => line_pixel_counter(10),
      I1 => line_pixel_counter(11),
      I2 => line_pixel_counter(8),
      I3 => line_pixel_counter(9),
      I4 => line_pixel_counter(13),
      I5 => line_pixel_counter(12),
      O => o_eol_i_4_n_0
    );
o_eol_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => line_pixel_counter(0),
      I3 => line_pixel_counter(1),
      O => o_eol_i_5_n_0
    );
o_eol_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => line_pixel_counter(4),
      I1 => line_pixel_counter(5),
      I2 => line_pixel_counter(2),
      I3 => line_pixel_counter(3),
      I4 => line_pixel_counter(7),
      I5 => line_pixel_counter(6),
      O => o_eol_i_6_n_0
    );
o_eol_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_eol_i_1_n_0,
      Q => \^o_eol\,
      R => o_data_valid_i_1_n_0
    );
o_sof_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF03"
    )
        port map (
      I0 => i_data_ready,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \^o_sof\,
      O => o_sof_i_1_n_0
    );
o_sof_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_sof_i_1_n_0,
      Q => \^o_sof\,
      R => o_data_valid_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_data_generator_0_0 is
  port (
    i_clk : in STD_LOGIC;
    i_reset_n : in STD_LOGIC;
    o_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    o_data_valid : out STD_LOGIC;
    i_data_ready : in STD_LOGIC;
    o_sof : out STD_LOGIC;
    o_eol : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_data_generator_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_data_generator_0_0 : entity is "design_1_data_generator_0_0,data_generator,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_data_generator_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_data_generator_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_data_generator_0_0 : entity is "data_generator,Vivado 2022.1";
end design_1_data_generator_0_0;

architecture STRUCTURE of design_1_data_generator_0_0 is
  signal \^o_data\ : STD_LOGIC_VECTOR ( 23 downto 7 );
  attribute x_interface_info : string;
  attribute x_interface_info of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of i_clk : signal is "XIL_INTERFACENAME i_clk, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
  o_data(23) <= \^o_data\(23);
  o_data(22) <= \^o_data\(23);
  o_data(21) <= \^o_data\(23);
  o_data(20) <= \^o_data\(23);
  o_data(19) <= \^o_data\(23);
  o_data(18) <= \^o_data\(23);
  o_data(17) <= \^o_data\(23);
  o_data(16) <= \^o_data\(23);
  o_data(15) <= \^o_data\(15);
  o_data(14) <= \^o_data\(15);
  o_data(13) <= \^o_data\(15);
  o_data(12) <= \^o_data\(15);
  o_data(11) <= \^o_data\(15);
  o_data(10) <= \^o_data\(15);
  o_data(9) <= \^o_data\(15);
  o_data(8) <= \^o_data\(15);
  o_data(7) <= \^o_data\(7);
  o_data(6) <= \^o_data\(7);
  o_data(5) <= \^o_data\(7);
  o_data(4) <= \^o_data\(7);
  o_data(3) <= \^o_data\(7);
  o_data(2) <= \^o_data\(7);
  o_data(1) <= \^o_data\(7);
  o_data(0) <= \^o_data\(7);
U0: entity work.design_1_data_generator_0_0_data_generator
     port map (
      i_clk => i_clk,
      i_data_ready => i_data_ready,
      i_reset_n => i_reset_n,
      o_data(2) => \^o_data\(23),
      o_data(1) => \^o_data\(15),
      o_data(0) => \^o_data\(7),
      o_data_valid => o_data_valid,
      o_eol => o_eol,
      o_sof => o_sof
    );
end STRUCTURE;
