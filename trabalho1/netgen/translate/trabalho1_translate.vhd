--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: trabalho1_translate.vhd
-- /___/   /\     Timestamp: Sun Oct 08 18:52:38 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm trabalho1 -w -dir netgen/translate -ofmt vhdl -sim trabalho1.ngd trabalho1_translate.vhd 
-- Device	: 3s100ecp132-4
-- Input file	: trabalho1.ngd
-- Output file	: C:\cassio\VHDL\trabalho1\netgen\translate\trabalho1_translate.vhd
-- # of Entities	: 1
-- Design Name	: trabalho1
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity trabalho1 is
  port (
    rst : in STD_LOGIC := 'X'; 
    button : in STD_LOGIC := 'X'; 
    up_down_c1 : in STD_LOGIC := 'X'; 
    up_down_c2 : in STD_LOGIC := 'X'; 
    mclk : in STD_LOGIC := 'X'; 
    counter_1 : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    counter_2 : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    led : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end trabalho1;

architecture Structure of trabalho1 is
  signal N01 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1_40 : STD_LOGIC; 
  signal Result_2_1_42 : STD_LOGIC; 
  signal Result_3_1_44 : STD_LOGIC; 
  signal mclk_BUFGP : STD_LOGIC; 
  signal rst_IBUF_68 : STD_LOGIC; 
  signal up_down_c1_IBUF_70 : STD_LOGIC; 
  signal up_down_c2_IBUF_72 : STD_LOGIC; 
  signal Result_3_1_SW0_O : STD_LOGIC; 
  signal Result_3_SW0_O : STD_LOGIC; 
  signal button_IBUF_76 : STD_LOGIC; 
  signal mclk_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal U0_blk00000001_sig00000011 : STD_LOGIC; 
  signal U0_blk00000001_sig00000014 : STD_LOGIC; 
  signal U0_blk00000001_sig00000012 : STD_LOGIC; 
  signal U0_blk00000001_sig0000000e : STD_LOGIC; 
  signal U0_blk00000001_sig00000010 : STD_LOGIC; 
  signal U0_blk00000001_sig00000013 : STD_LOGIC; 
  signal U0_blk00000001_sig0000000f : STD_LOGIC; 
  signal U0_blk00000001_sig00000009 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal cnt_c1 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal cnt_c2 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_s : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  cnt_c1_0 : X_FF
    port map (
      CLK => mclk_BUFGP,
      RST => rst_IBUF_68,
      I => Result(0),
      O => cnt_c1(0),
      CE => VCC,
      SET => GND
    );
  cnt_c1_1 : X_FF
    port map (
      CLK => mclk_BUFGP,
      RST => rst_IBUF_68,
      I => Result(1),
      O => cnt_c1(1),
      CE => VCC,
      SET => GND
    );
  cnt_c1_2 : X_FF
    port map (
      CLK => mclk_BUFGP,
      RST => rst_IBUF_68,
      I => Result(2),
      O => cnt_c1(2),
      CE => VCC,
      SET => GND
    );
  cnt_c1_3 : X_FF
    port map (
      CLK => mclk_BUFGP,
      RST => rst_IBUF_68,
      I => Result(3),
      O => cnt_c1(3),
      CE => VCC,
      SET => GND
    );
  cnt_c2_0 : X_FF
    port map (
      CLK => mclk_BUFGP,
      RST => rst_IBUF_68,
      I => Result_0_1,
      O => cnt_c2(0),
      CE => VCC,
      SET => GND
    );
  cnt_c2_1 : X_FF
    port map (
      CLK => mclk_BUFGP,
      RST => rst_IBUF_68,
      I => Result_1_1_40,
      O => cnt_c2(1),
      CE => VCC,
      SET => GND
    );
  cnt_c2_2 : X_FF
    port map (
      CLK => mclk_BUFGP,
      RST => rst_IBUF_68,
      I => Result_2_1_42,
      O => cnt_c2(2),
      CE => VCC,
      SET => GND
    );
  cnt_c2_3 : X_FF
    port map (
      CLK => mclk_BUFGP,
      RST => rst_IBUF_68,
      I => Result_3_1_44,
      O => cnt_c2(3),
      CE => VCC,
      SET => GND
    );
  Result_1_11 : X_LUT3
    port map (
      ADR0 => cnt_c2(1),
      ADR1 => cnt_c2(0),
      ADR2 => up_down_c2_IBUF_72,
      O => Result_1_1_40
    );
  Result_1_1 : X_LUT3
    port map (
      ADR0 => cnt_c1(1),
      ADR1 => cnt_c1(0),
      ADR2 => up_down_c1_IBUF_70,
      O => Result(1)
    );
  Result_2_11 : X_LUT4
    port map (
      ADR0 => up_down_c2_IBUF_72,
      ADR1 => cnt_c2(0),
      ADR2 => cnt_c2(1),
      ADR3 => cnt_c2(2),
      O => Result_2_1_42
    );
  Result_2_1 : X_LUT4
    port map (
      ADR0 => up_down_c1_IBUF_70,
      ADR1 => cnt_c1(0),
      ADR2 => cnt_c1(1),
      ADR3 => cnt_c1(2),
      O => Result(2)
    );
  Result_3_1 : X_LUT2
    port map (
      ADR0 => cnt_c2(3),
      ADR1 => N01,
      O => Result_3_1_44
    );
  Result_3_Q : X_LUT2
    port map (
      ADR0 => cnt_c1(3),
      ADR1 => N2,
      O => Result(3)
    );
  rst_IBUF : X_BUF
    port map (
      I => rst,
      O => rst_IBUF_68
    );
  up_down_c1_IBUF : X_BUF
    port map (
      I => up_down_c1,
      O => up_down_c1_IBUF_70
    );
  up_down_c2_IBUF : X_BUF
    port map (
      I => up_down_c2,
      O => up_down_c2_IBUF_72
    );
  Result_0_11_INV_0 : X_INV
    port map (
      I => cnt_c2(0),
      O => Result_0_1
    );
  Result_0_1_INV_0 : X_INV
    port map (
      I => cnt_c1(0),
      O => Result(0)
    );
  Result_3_1_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => Result_3_1_SW0_O,
      O => N01
    );
  Result_3_1_SW0 : X_LUT4
    port map (
      ADR0 => up_down_c2_IBUF_72,
      ADR1 => cnt_c2(2),
      ADR2 => cnt_c2(1),
      ADR3 => cnt_c2(0),
      O => Result_3_1_SW0_O
    );
  Result_3_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => Result_3_SW0_O,
      O => N2
    );
  Result_3_SW0 : X_LUT4
    port map (
      ADR0 => up_down_c1_IBUF_70,
      ADR1 => cnt_c1(2),
      ADR2 => cnt_c1(1),
      ADR3 => cnt_c1(0),
      O => Result_3_SW0_O
    );
  button_IBUF : X_BUF
    port map (
      I => button,
      O => button_IBUF_76
    );
  mclk_BUFGP_BUFG : X_CKBUF
    port map (
      I => mclk_BUFGP_IBUFG_2,
      O => mclk_BUFGP
    );
  mclk_BUFGP_IBUFG : X_CKBUF
    port map (
      I => mclk,
      O => mclk_BUFGP_IBUFG_2
    );
  U0_blk00000001_blk0000000d : X_LUT2
    port map (
      ADR0 => cnt_c2(0),
      ADR1 => cnt_c1(0),
      O => U0_blk00000001_sig00000011
    );
  U0_blk00000001_blk0000000c : X_LUT2
    port map (
      ADR0 => cnt_c2(1),
      ADR1 => cnt_c1(1),
      O => U0_blk00000001_sig00000012
    );
  U0_blk00000001_blk0000000b : X_LUT2
    port map (
      ADR0 => cnt_c2(2),
      ADR1 => cnt_c1(2),
      O => U0_blk00000001_sig00000013
    );
  U0_blk00000001_blk0000000a : X_LUT2
    port map (
      ADR0 => cnt_c2(3),
      ADR1 => cnt_c1(3),
      O => U0_blk00000001_sig00000014
    );
  U0_blk00000001_blk00000009 : X_MUX2
    port map (
      IB => U0_blk00000001_sig00000009,
      IA => cnt_c1(0),
      SEL => U0_blk00000001_sig00000011,
      O => U0_blk00000001_sig0000000e
    );
  U0_blk00000001_blk00000008 : X_XOR2
    port map (
      I0 => U0_blk00000001_sig00000009,
      I1 => U0_blk00000001_sig00000011,
      O => U0_s(0)
    );
  U0_blk00000001_blk00000007 : X_XOR2
    port map (
      I0 => U0_blk00000001_sig00000010,
      I1 => U0_blk00000001_sig00000014,
      O => U0_s(3)
    );
  U0_blk00000001_blk00000006 : X_MUX2
    port map (
      IB => U0_blk00000001_sig0000000e,
      IA => cnt_c1(1),
      SEL => U0_blk00000001_sig00000012,
      O => U0_blk00000001_sig0000000f
    );
  U0_blk00000001_blk00000005 : X_XOR2
    port map (
      I0 => U0_blk00000001_sig0000000e,
      I1 => U0_blk00000001_sig00000012,
      O => U0_s(1)
    );
  U0_blk00000001_blk00000004 : X_MUX2
    port map (
      IB => U0_blk00000001_sig0000000f,
      IA => cnt_c1(2),
      SEL => U0_blk00000001_sig00000013,
      O => U0_blk00000001_sig00000010
    );
  U0_blk00000001_blk00000003 : X_XOR2
    port map (
      I0 => U0_blk00000001_sig0000000f,
      I1 => U0_blk00000001_sig00000013,
      O => U0_s(2)
    );
  U0_blk00000001_blk00000002 : X_ZERO
    port map (
      O => U0_blk00000001_sig00000009
    );
  counter_1_0_OBUF : X_OBUF
    port map (
      I => cnt_c1(0),
      O => counter_1(0)
    );
  counter_1_1_OBUF : X_OBUF
    port map (
      I => cnt_c1(1),
      O => counter_1(1)
    );
  counter_1_2_OBUF : X_OBUF
    port map (
      I => cnt_c1(2),
      O => counter_1(2)
    );
  counter_1_3_OBUF : X_OBUF
    port map (
      I => cnt_c1(3),
      O => counter_1(3)
    );
  counter_2_0_OBUF : X_OBUF
    port map (
      I => cnt_c2(0),
      O => counter_2(0)
    );
  counter_2_1_OBUF : X_OBUF
    port map (
      I => cnt_c2(1),
      O => counter_2(1)
    );
  counter_2_2_OBUF : X_OBUF
    port map (
      I => cnt_c2(2),
      O => counter_2(2)
    );
  counter_2_3_OBUF : X_OBUF
    port map (
      I => cnt_c2(3),
      O => counter_2(3)
    );
  led_0_OBUF : X_OBUF
    port map (
      I => cnt_c1(0),
      O => led(0)
    );
  led_1_OBUF : X_OBUF
    port map (
      I => cnt_c1(1),
      O => led(1)
    );
  led_2_OBUF : X_OBUF
    port map (
      I => cnt_c1(2),
      O => led(2)
    );
  led_3_OBUF : X_OBUF
    port map (
      I => cnt_c1(3),
      O => led(3)
    );
  NlwBlock_trabalho1_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_trabalho1_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

