-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Jun 12 17:01:01 2021
-- Host        : DESKTOP-4VPH9J9 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ block1_FX3_0_0_sim_netlist.vhdl
-- Design      : block1_FX3_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    reset : in STD_LOGIC;
    run : in STD_LOGIC;
    sysclk : in STD_LOGIC;
    SPAD : in STD_LOGIC_VECTOR ( 11 downto 0 );
    VAP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ADC : in STD_LOGIC_VECTOR ( 15 downto 0 );
    FX3b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pclk : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "block1_FX3_0_0,FX3,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "FX3,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^adc\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^spad\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^vap\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
  FX3b(31 downto 16) <= \^adc\(15 downto 0);
  FX3b(15 downto 14) <= \^vap\(3 downto 2);
  FX3b(13 downto 8) <= \^spad\(11 downto 6);
  FX3b(7 downto 6) <= \^vap\(1 downto 0);
  FX3b(5 downto 0) <= \^spad\(5 downto 0);
  \^adc\(15 downto 0) <= ADC(15 downto 0);
  \^spad\(11 downto 0) <= SPAD(11 downto 0);
  \^vap\(3 downto 0) <= VAP(3 downto 0);
pclk_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sysclk,
      I1 => run,
      O => pclk
    );
end STRUCTURE;
