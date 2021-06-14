-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Jun 12 17:01:01 2021
-- Host        : DESKTOP-4VPH9J9 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Bradley/Documents/xavier/xavier2_2018_3/xavier2_2018_3.srcs/sources_1/bd/block1/ip/block1_VapBuffer_0_0/block1_VapBuffer_0_0_sim_netlist.vhdl
-- Design      : block1_VapBuffer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block1_VapBuffer_0_0_VapBuffer is
  port (
    VAPout : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset : in STD_LOGIC;
    VAPin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block1_VapBuffer_0_0_VapBuffer : entity is "VapBuffer";
end block1_VapBuffer_0_0_VapBuffer;

architecture STRUCTURE of block1_VapBuffer_0_0_VapBuffer is
begin
\VAPout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => VAPin(0),
      Q => VAPout(0),
      R => reset
    );
\VAPout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => VAPin(1),
      Q => VAPout(1),
      R => reset
    );
\VAPout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => VAPin(2),
      Q => VAPout(2),
      R => reset
    );
\VAPout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => VAPin(3),
      Q => VAPout(3),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block1_VapBuffer_0_0 is
  port (
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    VAPin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    VAPout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of block1_VapBuffer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of block1_VapBuffer_0_0 : entity is "block1_VapBuffer_0_0,VapBuffer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of block1_VapBuffer_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of block1_VapBuffer_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of block1_VapBuffer_0_0 : entity is "VapBuffer,Vivado 2018.3";
end block1_VapBuffer_0_0;

architecture STRUCTURE of block1_VapBuffer_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 5000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.block1_VapBuffer_0_0_VapBuffer
     port map (
      VAPin(3 downto 0) => VAPin(3 downto 0),
      VAPout(3 downto 0) => VAPout(3 downto 0),
      clk => clk,
      reset => reset
    );
end STRUCTURE;
