-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Jun 12 17:01:01 2021
-- Host        : DESKTOP-4VPH9J9 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Bradley/Documents/xavier/xavier2_2018_3/xavier2_2018_3.srcs/sources_1/bd/block1/ip/block1_ADC_0_0/block1_ADC_0_0_sim_netlist.vhdl
-- Design      : block1_ADC_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block1_ADC_0_0_ADC is
  port (
    ADC_DATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    MUX_reg_0 : out STD_LOGIC;
    SELB : out STD_LOGIC;
    SELA_reg_0 : out STD_LOGIC;
    CLKA : out STD_LOGIC;
    ADC_CLK : in STD_LOGIC;
    reset : in STD_LOGIC;
    run : in STD_LOGIC;
    ADCb : in STD_LOGIC_VECTOR ( 13 downto 0 );
    SAMPLE_CLKA : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block1_ADC_0_0_ADC : entity is "ADC";
end block1_ADC_0_0_ADC;

architecture STRUCTURE of block1_ADC_0_0_ADC is
  signal MUX_i_1_n_0 : STD_LOGIC;
  signal \^mux_reg_0\ : STD_LOGIC;
  signal SELA_i_1_n_0 : STD_LOGIC;
  signal \^sela_reg_0\ : STD_LOGIC;
  signal \^selb\ : STD_LOGIC;
  signal SELB_i_1_n_0 : STD_LOGIC;
  signal en_out : STD_LOGIC;
  signal en_out_reg_i_1_n_0 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of MUX_i_1 : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of en_out_reg : label is "LD";
  attribute SOFT_HLUTNM of en_out_reg_i_1 : label is "soft_lutpair0";
begin
  MUX_reg_0 <= \^mux_reg_0\;
  SELA_reg_0 <= \^sela_reg_0\;
  SELB <= \^selb\;
CLKB_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => en_out,
      I1 => ADC_CLK,
      O => CLKA
    );
MUX_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^mux_reg_0\,
      I1 => run,
      I2 => reset,
      O => MUX_i_1_n_0
    );
MUX_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SAMPLE_CLKA,
      CE => '1',
      D => MUX_i_1_n_0,
      Q => \^mux_reg_0\,
      R => '0'
    );
SELA_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sela_reg_0\,
      I1 => reset,
      O => SELA_i_1_n_0
    );
SELA_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^mux_reg_0\,
      CE => '1',
      D => SELA_i_1_n_0,
      Q => \^sela_reg_0\,
      R => '0'
    );
SELB_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^sela_reg_0\,
      I1 => reset,
      O => SELB_i_1_n_0
    );
SELB_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^mux_reg_0\,
      CE => '1',
      D => SELB_i_1_n_0,
      Q => \^selb\,
      R => '0'
    );
\dataBuffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SAMPLE_CLKA,
      CE => run,
      D => ADCb(0),
      Q => ADC_DATA(0),
      R => reset
    );
\dataBuffer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SAMPLE_CLKA,
      CE => run,
      D => ADCb(10),
      Q => ADC_DATA(10),
      R => reset
    );
\dataBuffer_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SAMPLE_CLKA,
      CE => run,
      D => ADCb(11),
      Q => ADC_DATA(11),
      R => reset
    );
\dataBuffer_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SAMPLE_CLKA,
      CE => run,
      D => ADCb(12),
      Q => ADC_DATA(12),
      R => reset
    );
\dataBuffer_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SAMPLE_CLKA,
      CE => run,
      D => ADCb(13),
      Q => ADC_DATA(13),
      R => reset
    );
\dataBuffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SAMPLE_CLKA,
      CE => run,
      D => ADCb(1),
      Q => ADC_DATA(1),
      R => reset
    );
\dataBuffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SAMPLE_CLKA,
      CE => run,
      D => ADCb(2),
      Q => ADC_DATA(2),
      R => reset
    );
\dataBuffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SAMPLE_CLKA,
      CE => run,
      D => ADCb(3),
      Q => ADC_DATA(3),
      R => reset
    );
\dataBuffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SAMPLE_CLKA,
      CE => run,
      D => ADCb(4),
      Q => ADC_DATA(4),
      R => reset
    );
\dataBuffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SAMPLE_CLKA,
      CE => run,
      D => ADCb(5),
      Q => ADC_DATA(5),
      R => reset
    );
\dataBuffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SAMPLE_CLKA,
      CE => run,
      D => ADCb(6),
      Q => ADC_DATA(6),
      R => reset
    );
\dataBuffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SAMPLE_CLKA,
      CE => run,
      D => ADCb(7),
      Q => ADC_DATA(7),
      R => reset
    );
\dataBuffer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SAMPLE_CLKA,
      CE => run,
      D => ADCb(8),
      Q => ADC_DATA(8),
      R => reset
    );
\dataBuffer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SAMPLE_CLKA,
      CE => run,
      D => ADCb(9),
      Q => ADC_DATA(9),
      R => reset
    );
en_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => en_out_reg_i_1_n_0,
      G => ADC_CLK,
      GE => '1',
      Q => en_out
    );
en_out_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => en_out_reg_i_1_n_0
    );
\selBuffer[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^selb\,
      I1 => \^mux_reg_0\,
      I2 => \^sela_reg_0\,
      O => p_0_out(1)
    );
\selBuffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => SAMPLE_CLKA,
      CE => run,
      D => \^mux_reg_0\,
      Q => ADC_DATA(14),
      R => reset
    );
\selBuffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => SAMPLE_CLKA,
      CE => run,
      D => p_0_out(1),
      Q => ADC_DATA(15),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block1_ADC_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of block1_ADC_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of block1_ADC_0_0 : entity is "block1_ADC_0_0,ADC,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of block1_ADC_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of block1_ADC_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of block1_ADC_0_0 : entity is "ADC,Vivado 2018.3";
end block1_ADC_0_0;

architecture STRUCTURE of block1_ADC_0_0 is
  signal \^clka\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ADC_CLK : signal is "xilinx.com:signal:clock:1.0 ADC_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ADC_CLK : signal is "XIL_INTERFACENAME ADC_CLK, ASSOCIATED_RESET reset, FREQ_HZ 20000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
  CLKA <= \^clka\;
  CLKB <= \^clka\;
inst: entity work.block1_ADC_0_0_ADC
     port map (
      ADC_CLK => ADC_CLK,
      ADC_DATA(15 downto 0) => ADC_DATA(15 downto 0),
      ADCb(13 downto 0) => ADCb(13 downto 0),
      CLKA => \^clka\,
      MUX_reg_0 => MUX,
      SAMPLE_CLKA => SAMPLE_CLKA,
      SELA_reg_0 => SELA,
      SELB => SELB,
      reset => reset,
      run => run
    );
end STRUCTURE;
