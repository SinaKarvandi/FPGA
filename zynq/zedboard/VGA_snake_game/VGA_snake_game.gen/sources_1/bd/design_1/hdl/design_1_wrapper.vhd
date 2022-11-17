--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
--Date        : Thu Nov 17 22:47:36 2022
--Host        : DESKTOP-SEM2DAL running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    VGA_B : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_G : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_R : out STD_LOGIC_VECTOR ( 3 downto 0 );
    arrow_down : in STD_LOGIC;
    arrow_left : in STD_LOGIC;
    arrow_right : in STD_LOGIC;
    arrow_up : in STD_LOGIC;
    o_led_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    pause_button : in STD_LOGIC;
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    vid_hsync_0 : out STD_LOGIC;
    vid_vsync_0 : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    vid_hsync_0 : out STD_LOGIC;
    vid_vsync_0 : out STD_LOGIC;
    VGA_R : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_G : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_B : out STD_LOGIC_VECTOR ( 3 downto 0 );
    arrow_left : in STD_LOGIC;
    arrow_right : in STD_LOGIC;
    arrow_up : in STD_LOGIC;
    arrow_down : in STD_LOGIC;
    pause_button : in STD_LOGIC;
    o_led_0 : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      VGA_B(3 downto 0) => VGA_B(3 downto 0),
      VGA_G(3 downto 0) => VGA_G(3 downto 0),
      VGA_R(3 downto 0) => VGA_R(3 downto 0),
      arrow_down => arrow_down,
      arrow_left => arrow_left,
      arrow_right => arrow_right,
      arrow_up => arrow_up,
      o_led_0(4 downto 0) => o_led_0(4 downto 0),
      pause_button => pause_button,
      reset => reset,
      sys_clock => sys_clock,
      vid_hsync_0 => vid_hsync_0,
      vid_vsync_0 => vid_vsync_0
    );
end STRUCTURE;
