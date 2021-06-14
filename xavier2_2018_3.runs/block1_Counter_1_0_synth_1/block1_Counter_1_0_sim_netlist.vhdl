-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Jun 12 17:01:01 2021
-- Host        : DESKTOP-4VPH9J9 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ block1_Counter_1_0_sim_netlist.vhdl
-- Design      : block1_Counter_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Gray2Bin is
  port (
    bin : out STD_LOGIC_VECTOR ( 0 to 0 );
    vote : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Gray2Bin;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Gray2Bin is
begin
p_2_out: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vote(0),
      I1 => vote(1),
      O => bin(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GrayCounter is
  port (
    out1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    pulse : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GrayCounter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GrayCounter is
  signal \^out1\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \out1[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q[2]_i_1\ : label is "soft_lutpair0";
begin
  out1(2 downto 0) <= \^out1\(2 downto 0);
\out1[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^out1\(0),
      O => p_0_out(0)
    );
\out1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^out1\(0),
      I1 => \^q\(2),
      O => p_0_out(1)
    );
\out1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pulse,
      CE => '1',
      D => p_0_out(0),
      Q => \^out1\(0),
      R => '0'
    );
\out1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pulse,
      CE => '1',
      D => p_0_out(1),
      Q => \^out1\(1),
      R => '0'
    );
\out1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pulse,
      CE => '1',
      D => \^q\(2),
      Q => \^out1\(2),
      R => '0'
    );
\out2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pulse,
      CE => '1',
      D => \^out1\(0),
      Q => Q(0),
      R => '0'
    );
\out2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pulse,
      CE => '1',
      D => \^out1\(1),
      Q => Q(1),
      R => '0'
    );
\out2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pulse,
      CE => '1',
      D => \^out1\(2),
      Q => Q(2),
      R => '0'
    );
\q[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => p_0_in(0)
    );
\q[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^out1\(0),
      I2 => \^q\(2),
      O => p_0_in(2)
    );
\q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pulse,
      CE => '1',
      D => p_0_in(0),
      Q => \^q\(0),
      R => '0'
    );
\q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pulse,
      CE => '1',
      D => p_0_in(2),
      Q => \^q\(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Counter is
  port (
    data : out STD_LOGIC_VECTOR ( 2 downto 0 );
    reset : in STD_LOGIC;
    run : in STD_LOGIC;
    clk : in STD_LOGIC;
    pulse : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Counter is
  signal bin : STD_LOGIC_VECTOR ( 1 to 1 );
  signal count1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count2[2]_i_1_n_0\ : STD_LOGIC;
  signal count3 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \data[0]_i_1_n_0\ : STD_LOGIC;
  signal \data[1]_i_1_n_0\ : STD_LOGIC;
  signal \data[2]_i_1_n_0\ : STD_LOGIC;
  signal \data[2]_i_2_n_0\ : STD_LOGIC;
  signal \data[2]_i_3_n_0\ : STD_LOGIC;
  signal out1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal out2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal temp : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \temp[0]_i_1_n_0\ : STD_LOGIC;
  signal \temp[1]_i_1_n_0\ : STD_LOGIC;
  signal \temp[2]_i_1_n_0\ : STD_LOGIC;
  signal vote : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vote10_out : STD_LOGIC;
  signal \vote[0]_i_1_n_0\ : STD_LOGIC;
  signal \vote[1]_i_1_n_0\ : STD_LOGIC;
  signal \vote[2]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data[2]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \temp[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \temp[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \temp[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \vote[1]_i_1\ : label is "soft_lutpair2";
begin
\count1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count2[2]_i_1_n_0\,
      D => out1(0),
      Q => count1(0),
      R => '0'
    );
\count1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count2[2]_i_1_n_0\,
      D => out1(1),
      Q => count1(1),
      R => '0'
    );
\count1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count2[2]_i_1_n_0\,
      D => out1(2),
      Q => count1(2),
      R => '0'
    );
\count2[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => \count2[2]_i_1_n_0\
    );
\count2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count2[2]_i_1_n_0\,
      D => out2(0),
      Q => count3(0),
      R => '0'
    );
\count2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count2[2]_i_1_n_0\,
      D => out2(1),
      Q => count3(1),
      R => '0'
    );
\count2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count2[2]_i_1_n_0\,
      D => out2(2),
      Q => count3(2),
      R => '0'
    );
\data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000069960000"
    )
        port map (
      I0 => temp(0),
      I1 => vote(0),
      I2 => vote(2),
      I3 => vote(1),
      I4 => run,
      I5 => reset,
      O => \data[0]_i_1_n_0\
    );
\data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C3660000"
    )
        port map (
      I0 => bin(1),
      I1 => temp(1),
      I2 => vote(0),
      I3 => temp(0),
      I4 => run,
      I5 => reset,
      O => \data[1]_i_1_n_0\
    );
\data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C6369C93"
    )
        port map (
      I0 => vote(2),
      I1 => temp(2),
      I2 => temp(1),
      I3 => vote(1),
      I4 => \data[2]_i_2_n_0\,
      I5 => \data[2]_i_3_n_0\,
      O => \data[2]_i_1_n_0\
    );
\data[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"96FF"
    )
        port map (
      I0 => vote(1),
      I1 => vote(2),
      I2 => vote(0),
      I3 => temp(0),
      O => \data[2]_i_2_n_0\
    );
\data[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => reset,
      I1 => run,
      O => \data[2]_i_3_n_0\
    );
\data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data[0]_i_1_n_0\,
      Q => data(0),
      R => '0'
    );
\data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data[1]_i_1_n_0\,
      Q => data(1),
      R => '0'
    );
\data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data[2]_i_1_n_0\,
      Q => data(2),
      R => '0'
    );
g2b: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Gray2Bin
     port map (
      bin(0) => bin(1),
      vote(1 downto 0) => vote(2 downto 1)
    );
gctr: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GrayCounter
     port map (
      Q(2 downto 0) => out2(2 downto 0),
      out1(2 downto 0) => out1(2 downto 0),
      pulse => pulse
    );
\temp[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0096"
    )
        port map (
      I0 => vote(1),
      I1 => vote(2),
      I2 => vote(0),
      I3 => reset,
      O => \temp[0]_i_1_n_0\
    );
\temp[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => vote(2),
      I1 => vote(1),
      I2 => reset,
      O => \temp[1]_i_1_n_0\
    );
\temp[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vote(2),
      I1 => reset,
      O => \temp[2]_i_1_n_0\
    );
\temp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \temp[0]_i_1_n_0\,
      Q => temp(0),
      R => '0'
    );
\temp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \temp[1]_i_1_n_0\,
      Q => temp(1),
      R => '0'
    );
\temp_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \temp[2]_i_1_n_0\,
      Q => temp(2),
      R => '0'
    );
\vote1_inferred__0/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count1(0),
      I1 => count3(0),
      I2 => count3(2),
      I3 => count1(2),
      I4 => count3(1),
      I5 => count1(1),
      O => vote10_out
    );
\vote[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => count3(0),
      I1 => vote10_out,
      I2 => count1(0),
      I3 => reset,
      O => \vote[0]_i_1_n_0\
    );
\vote[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => count3(1),
      I1 => vote10_out,
      I2 => count1(1),
      I3 => reset,
      O => \vote[1]_i_1_n_0\
    );
\vote[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => count3(2),
      I1 => vote10_out,
      I2 => count1(2),
      I3 => reset,
      O => \vote[2]_i_1_n_0\
    );
\vote_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \vote[0]_i_1_n_0\,
      Q => vote(0),
      R => '0'
    );
\vote_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \vote[1]_i_1_n_0\,
      Q => vote(1),
      R => '0'
    );
\vote_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \vote[2]_i_1_n_0\,
      Q => vote(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    reset : in STD_LOGIC;
    run : in STD_LOGIC;
    clk : in STD_LOGIC;
    pulse : in STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "block1_Counter_1_0,Counter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Counter,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 5000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Counter
     port map (
      clk => clk,
      data(2 downto 0) => data(2 downto 0),
      pulse => pulse,
      reset => reset,
      run => run
    );
end STRUCTURE;
