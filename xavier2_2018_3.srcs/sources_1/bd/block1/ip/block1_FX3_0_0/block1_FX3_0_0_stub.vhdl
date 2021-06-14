-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Jun 12 17:01:01 2021
-- Host        : DESKTOP-4VPH9J9 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/Bradley/Documents/xavier/xavier2_2018_3/xavier2_2018_3.srcs/sources_1/bd/block1/ip/block1_FX3_0_0/block1_FX3_0_0_stub.vhdl
-- Design      : block1_FX3_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity block1_FX3_0_0 is
  Port ( 
    reset : in STD_LOGIC;
    run : in STD_LOGIC;
    sysclk : in STD_LOGIC;
    SPAD : in STD_LOGIC_VECTOR ( 11 downto 0 );
    VAP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ADC : in STD_LOGIC_VECTOR ( 15 downto 0 );
    FX3b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pclk : out STD_LOGIC
  );

end block1_FX3_0_0;

architecture stub of block1_FX3_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "reset,run,sysclk,SPAD[11:0],VAP[3:0],ADC[15:0],FX3b[31:0],pclk";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "FX3,Vivado 2018.3";
begin
end;
