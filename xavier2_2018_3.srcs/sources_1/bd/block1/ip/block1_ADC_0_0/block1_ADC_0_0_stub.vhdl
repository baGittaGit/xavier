-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Jun 12 17:01:01 2021
-- Host        : DESKTOP-4VPH9J9 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/Bradley/Documents/xavier/xavier2_2018_3/xavier2_2018_3.srcs/sources_1/bd/block1/ip/block1_ADC_0_0/block1_ADC_0_0_stub.vhdl
-- Design      : block1_ADC_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity block1_ADC_0_0 is
  Port ( 
    reset : in STD_LOGIC;
    run : in STD_LOGIC;
    ADCb : in STD_LOGIC_VECTOR ( 13 downto 0 );
    ADC_CLK : in STD_LOGIC;
    SAMPLE_CLKA : in STD_LOGIC;
    SELA : out STD_LOGIC;
    SELB : out STD_LOGIC;
    CLKA : out STD_LOGIC;
    CLKB : out STD_LOGIC;
    MUX : out STD_LOGIC;
    ADC_DATA : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end block1_ADC_0_0;

architecture stub of block1_ADC_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "reset,run,ADCb[13:0],ADC_CLK,SAMPLE_CLKA,SELA,SELB,CLKA,CLKB,MUX,ADC_DATA[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ADC,Vivado 2018.3";
begin
end;
