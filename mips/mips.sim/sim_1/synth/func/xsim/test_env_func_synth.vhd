-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Tue Apr 23 13:10:07 2024
-- Host        : DESKTOP-GDD9OIA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Violeta/Desktop/mips-16bits/mips/mips.sim/sim_1/synth/func/xsim/test_env_func_synth.vhd
-- Design      : test_env
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SSD is
  port (
    \sw[5]\ : out STD_LOGIC;
    cat_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sw_IBUF : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    \an_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end SSD;

architecture STRUCTURE of SSD is
  signal \iesire_mux1_reg_n_0_[0]\ : STD_LOGIC;
  signal \iesire_mux1_reg_n_0_[1]\ : STD_LOGIC;
  signal \iesire_mux1_reg_n_0_[2]\ : STD_LOGIC;
  signal \iesire_mux1_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cat_OBUF[0]_inst_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cat_OBUF[1]_inst_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cat_OBUF[2]_inst_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cat_OBUF[3]_inst_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cat_OBUF[4]_inst_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cat_OBUF[5]_inst_i_1\ : label is "soft_lutpair8";
begin
\an_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \an_reg[3]_0\(0),
      Q => Q(0),
      R => '0'
    );
\an_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \an_reg[3]_0\(1),
      Q => Q(1),
      R => '0'
    );
\an_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \an_reg[3]_0\(2),
      Q => Q(2),
      R => '0'
    );
\an_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \an_reg[3]_0\(3),
      Q => Q(3),
      R => '0'
    );
\cat_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => \iesire_mux1_reg_n_0_[3]\,
      I1 => \iesire_mux1_reg_n_0_[2]\,
      I2 => \iesire_mux1_reg_n_0_[0]\,
      I3 => \iesire_mux1_reg_n_0_[1]\,
      O => cat_OBUF(0)
    );
\cat_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => \iesire_mux1_reg_n_0_[3]\,
      I1 => \iesire_mux1_reg_n_0_[2]\,
      I2 => \iesire_mux1_reg_n_0_[1]\,
      I3 => \iesire_mux1_reg_n_0_[0]\,
      O => cat_OBUF(1)
    );
\cat_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => \iesire_mux1_reg_n_0_[3]\,
      I1 => \iesire_mux1_reg_n_0_[0]\,
      I2 => \iesire_mux1_reg_n_0_[1]\,
      I3 => \iesire_mux1_reg_n_0_[2]\,
      O => cat_OBUF(2)
    );
\cat_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => \iesire_mux1_reg_n_0_[3]\,
      I1 => \iesire_mux1_reg_n_0_[2]\,
      I2 => \iesire_mux1_reg_n_0_[0]\,
      I3 => \iesire_mux1_reg_n_0_[1]\,
      O => cat_OBUF(3)
    );
\cat_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => \iesire_mux1_reg_n_0_[3]\,
      I1 => \iesire_mux1_reg_n_0_[1]\,
      I2 => \iesire_mux1_reg_n_0_[2]\,
      I3 => \iesire_mux1_reg_n_0_[0]\,
      O => cat_OBUF(4)
    );
\cat_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => \iesire_mux1_reg_n_0_[3]\,
      I1 => \iesire_mux1_reg_n_0_[2]\,
      I2 => \iesire_mux1_reg_n_0_[0]\,
      I3 => \iesire_mux1_reg_n_0_[1]\,
      O => cat_OBUF(5)
    );
\cat_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => \iesire_mux1_reg_n_0_[3]\,
      I1 => \iesire_mux1_reg_n_0_[0]\,
      I2 => \iesire_mux1_reg_n_0_[2]\,
      I3 => \iesire_mux1_reg_n_0_[1]\,
      O => cat_OBUF(6)
    );
\iesire_mux1[1]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sw_IBUF(0),
      I1 => sw_IBUF(1),
      O => \sw[5]\
    );
\iesire_mux1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => D(0),
      Q => \iesire_mux1_reg_n_0_[0]\,
      R => '0'
    );
\iesire_mux1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => D(1),
      Q => \iesire_mux1_reg_n_0_[1]\,
      R => '0'
    );
\iesire_mux1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => D(2),
      Q => \iesire_mux1_reg_n_0_[2]\,
      R => '0'
    );
\iesire_mux1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => D(3),
      Q => \iesire_mux1_reg_n_0_[3]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity execUnit is
  port (
    \pc_reg[15]\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \minusOp_carry__0_i_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \minusOp_carry__1_i_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \minusOp_carry__2_i_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    data1 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \pc_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \pc_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \pc_reg[15]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rd1 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    ram_mem_reg_0_15_0_0_i_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reg_file_reg_r1_0_7_0_5_i_16 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reg_file_reg_r1_0_7_6_11_i_10 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reg_file_reg_r1_0_7_12_15_i_6 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ltOp_carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_mem_reg_0_15_0_0_i_10 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_mem_reg_0_15_0_0_i_10_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \pc_reg[13]\ : in STD_LOGIC
  );
end execUnit;

architecture STRUCTURE of execUnit is
  signal \InstructionFetch/out1\ : STD_LOGIC_VECTOR ( 13 to 13 );
  signal \ltOp_carry__0_n_1\ : STD_LOGIC;
  signal \ltOp_carry__0_n_2\ : STD_LOGIC;
  signal \ltOp_carry__0_n_3\ : STD_LOGIC;
  signal ltOp_carry_n_0 : STD_LOGIC;
  signal ltOp_carry_n_1 : STD_LOGIC;
  signal ltOp_carry_n_2 : STD_LOGIC;
  signal ltOp_carry_n_3 : STD_LOGIC;
  signal \minusOp_carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_carry__2_n_1\ : STD_LOGIC;
  signal \minusOp_carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_carry__2_n_3\ : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal NLW_ltOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of ltOp_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \ltOp_carry__0\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of minusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__2\ : label is 35;
begin
ltOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ltOp_carry_n_0,
      CO(2) => ltOp_carry_n_1,
      CO(1) => ltOp_carry_n_2,
      CO(0) => ltOp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_ltOp_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \ltOp_carry__0_0\(3 downto 0)
    );
\ltOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ltOp_carry_n_0,
      CO(3) => CO(0),
      CO(2) => \ltOp_carry__0_n_1\,
      CO(1) => \ltOp_carry__0_n_2\,
      CO(0) => \ltOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ram_mem_reg_0_15_0_0_i_10(3 downto 0),
      O(3 downto 0) => \NLW_ltOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => ram_mem_reg_0_15_0_0_i_10_0(3 downto 0)
    );
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => rd1(3 downto 0),
      O(3 downto 0) => O(3 downto 0),
      S(3 downto 0) => ram_mem_reg_0_15_0_0_i_2(3 downto 0)
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \minusOp_carry__0_n_0\,
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rd1(7 downto 4),
      O(3 downto 0) => \minusOp_carry__0_i_4\(3 downto 0),
      S(3 downto 0) => reg_file_reg_r1_0_7_0_5_i_16(3 downto 0)
    );
\minusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__0_n_0\,
      CO(3) => \minusOp_carry__1_n_0\,
      CO(2) => \minusOp_carry__1_n_1\,
      CO(1) => \minusOp_carry__1_n_2\,
      CO(0) => \minusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rd1(11 downto 8),
      O(3 downto 0) => \minusOp_carry__1_i_4\(3 downto 0),
      S(3 downto 0) => reg_file_reg_r1_0_7_6_11_i_10(3 downto 0)
    );
\minusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__1_n_0\,
      CO(3) => \NLW_minusOp_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \minusOp_carry__2_n_1\,
      CO(1) => \minusOp_carry__2_n_2\,
      CO(0) => \minusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => rd1(14 downto 12),
      O(3 downto 0) => \minusOp_carry__2_i_4\(3 downto 0),
      S(3 downto 0) => reg_file_reg_r1_0_7_12_15_i_6(3 downto 0)
    );
\pc[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \InstructionFetch/out1\(13),
      I1 => \pc_reg[13]\,
      O => D(0)
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => data1(3 downto 0),
      O(3 downto 0) => \pc_reg[15]\(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data1(7 downto 4),
      O(3 downto 0) => \pc_reg[15]\(7 downto 4),
      S(3 downto 0) => \pc_reg[7]\(3 downto 0)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data1(11 downto 8),
      O(3 downto 0) => \pc_reg[15]\(11 downto 8),
      S(3 downto 0) => \pc_reg[11]\(3 downto 0)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \NLW_plusOp_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \plusOp_carry__2_n_1\,
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => data1(14 downto 12),
      O(3 downto 2) => \pc_reg[15]\(14 downto 13),
      O(1) => \InstructionFetch/out1\(13),
      O(0) => \pc_reg[15]\(12),
      S(3 downto 0) => \pc_reg[15]_0\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mpg is
  port (
    eqOp : out STD_LOGIC;
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \cnt_reg[15]_0\ : out STD_LOGIC;
    \cnt_reg[14]_0\ : out STD_LOGIC;
    \cnt_reg[15]_1\ : out STD_LOGIC;
    \cnt_reg[14]_1\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \cnt_reg[15]_2\ : out STD_LOGIC;
    \cnt_reg[14]_2\ : out STD_LOGIC;
    \cnt_reg[14]_3\ : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    btn_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    sw_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    \iesire_mux1_reg[1]\ : in STD_LOGIC;
    \iesire_mux1_reg[1]_0\ : in STD_LOGIC;
    \iesire_mux1_reg[2]\ : in STD_LOGIC;
    \iesire_mux1_reg[2]_0\ : in STD_LOGIC;
    \iesire_mux1[2]_i_5_0\ : in STD_LOGIC;
    \iesire_mux1[2]_i_5_1\ : in STD_LOGIC;
    \iesire_mux1[1]_i_3_0\ : in STD_LOGIC;
    \iesire_mux1[1]_i_3_1\ : in STD_LOGIC;
    \iesire_mux1_reg[0]\ : in STD_LOGIC;
    \iesire_mux1_reg[0]_0\ : in STD_LOGIC;
    \iesire_mux1[0]_i_6_0\ : in STD_LOGIC;
    \iesire_mux1[0]_i_6_1\ : in STD_LOGIC
  );
end mpg;

architecture STRUCTURE of mpg is
  signal \Display/count_reg\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^eqop\ : STD_LOGIC;
  signal \iesire_mux1[0]_i_11_n_0\ : STD_LOGIC;
  signal \iesire_mux1[1]_i_9_n_0\ : STD_LOGIC;
  signal \iesire_mux1[2]_i_10_n_0\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal q1 : STD_LOGIC;
  signal q1_i_2_n_0 : STD_LOGIC;
  signal q1_i_3_n_0 : STD_LOGIC;
  signal q1_i_4_n_0 : STD_LOGIC;
  signal q2 : STD_LOGIC;
  signal q3 : STD_LOGIC;
  signal \NLW_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \an[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \an[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \an[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \an[3]_i_1\ : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \iesire_mux1[0]_i_11\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \iesire_mux1[0]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \iesire_mux1[1]_i_9\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \iesire_mux1[2]_i_10\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \iesire_mux1[3]_i_15\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \iesire_mux1[3]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \iesire_mux1[3]_i_8\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of q1_i_2 : label is "soft_lutpair3";
begin
  eqOp <= \^eqop\;
  p_0_in(1 downto 0) <= \^p_0_in\(1 downto 0);
\an[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^p_0_in\(1),
      I1 => \^p_0_in\(0),
      O => D(0)
    );
\an[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^p_0_in\(1),
      I1 => \^p_0_in\(0),
      O => D(1)
    );
\an[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => \^p_0_in\(1),
      O => D(2)
    );
\an[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^p_0_in\(1),
      I1 => \^p_0_in\(0),
      O => D(3)
    );
\cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Display/count_reg\(0),
      O => \cnt[0]_i_2_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[0]_i_1_n_7\,
      Q => \Display/count_reg\(0),
      R => '0'
    );
\cnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_reg[0]_i_1_n_0\,
      CO(2) => \cnt_reg[0]_i_1_n_1\,
      CO(1) => \cnt_reg[0]_i_1_n_2\,
      CO(0) => \cnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cnt_reg[0]_i_1_n_4\,
      O(2) => \cnt_reg[0]_i_1_n_5\,
      O(1) => \cnt_reg[0]_i_1_n_6\,
      O(0) => \cnt_reg[0]_i_1_n_7\,
      S(3 downto 1) => \Display/count_reg\(3 downto 1),
      S(0) => \cnt[0]_i_2_n_0\
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_5\,
      Q => \Display/count_reg\(10),
      R => '0'
    );
\cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_4\,
      Q => \Display/count_reg\(11),
      R => '0'
    );
\cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[12]_i_1_n_7\,
      Q => \Display/count_reg\(12),
      R => '0'
    );
\cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_cnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_reg[12]_i_1_n_1\,
      CO(1) => \cnt_reg[12]_i_1_n_2\,
      CO(0) => \cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[12]_i_1_n_4\,
      O(2) => \cnt_reg[12]_i_1_n_5\,
      O(1) => \cnt_reg[12]_i_1_n_6\,
      O(0) => \cnt_reg[12]_i_1_n_7\,
      S(3 downto 2) => \^p_0_in\(1 downto 0),
      S(1 downto 0) => \Display/count_reg\(13 downto 12)
    );
\cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[12]_i_1_n_6\,
      Q => \Display/count_reg\(13),
      R => '0'
    );
\cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[12]_i_1_n_5\,
      Q => \^p_0_in\(0),
      R => '0'
    );
\cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[12]_i_1_n_4\,
      Q => \^p_0_in\(1),
      R => '0'
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[0]_i_1_n_6\,
      Q => \Display/count_reg\(1),
      R => '0'
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[0]_i_1_n_5\,
      Q => \Display/count_reg\(2),
      R => '0'
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[0]_i_1_n_4\,
      Q => \Display/count_reg\(3),
      R => '0'
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_7\,
      Q => \Display/count_reg\(4),
      R => '0'
    );
\cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[0]_i_1_n_0\,
      CO(3) => \cnt_reg[4]_i_1_n_0\,
      CO(2) => \cnt_reg[4]_i_1_n_1\,
      CO(1) => \cnt_reg[4]_i_1_n_2\,
      CO(0) => \cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[4]_i_1_n_4\,
      O(2) => \cnt_reg[4]_i_1_n_5\,
      O(1) => \cnt_reg[4]_i_1_n_6\,
      O(0) => \cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => \Display/count_reg\(7 downto 4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_6\,
      Q => \Display/count_reg\(5),
      R => '0'
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_5\,
      Q => \Display/count_reg\(6),
      R => '0'
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_4\,
      Q => \Display/count_reg\(7),
      R => '0'
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_7\,
      Q => \Display/count_reg\(8),
      R => '0'
    );
\cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[4]_i_1_n_0\,
      CO(3) => \cnt_reg[8]_i_1_n_0\,
      CO(2) => \cnt_reg[8]_i_1_n_1\,
      CO(1) => \cnt_reg[8]_i_1_n_2\,
      CO(0) => \cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[8]_i_1_n_4\,
      O(2) => \cnt_reg[8]_i_1_n_5\,
      O(1) => \cnt_reg[8]_i_1_n_6\,
      O(0) => \cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => \Display/count_reg\(11 downto 8)
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_6\,
      Q => \Display/count_reg\(9),
      R => '0'
    );
\iesire_mux1[0]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03000500"
    )
        port map (
      I0 => \iesire_mux1[0]_i_6_0\,
      I1 => \iesire_mux1[0]_i_6_1\,
      I2 => sw_IBUF(0),
      I3 => \^p_0_in\(0),
      I4 => \^p_0_in\(1),
      O => \iesire_mux1[0]_i_11_n_0\
    );
\iesire_mux1[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sw_IBUF(0),
      I1 => \^p_0_in\(0),
      I2 => \^p_0_in\(1),
      O => \cnt_reg[14]_2\
    );
\iesire_mux1[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010203"
    )
        port map (
      I0 => \^p_0_in\(1),
      I1 => \^p_0_in\(0),
      I2 => sw_IBUF(0),
      I3 => \iesire_mux1_reg[0]\,
      I4 => \iesire_mux1_reg[0]_0\,
      I5 => \iesire_mux1[0]_i_11_n_0\,
      O => \cnt_reg[15]_1\
    );
\iesire_mux1[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010203"
    )
        port map (
      I0 => \^p_0_in\(1),
      I1 => \^p_0_in\(0),
      I2 => sw_IBUF(0),
      I3 => \iesire_mux1_reg[1]\,
      I4 => \iesire_mux1_reg[1]_0\,
      I5 => \iesire_mux1[1]_i_9_n_0\,
      O => \cnt_reg[15]_0\
    );
\iesire_mux1[1]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03000500"
    )
        port map (
      I0 => \iesire_mux1[1]_i_3_0\,
      I1 => \iesire_mux1[1]_i_3_1\,
      I2 => sw_IBUF(0),
      I3 => \^p_0_in\(0),
      I4 => \^p_0_in\(1),
      O => \iesire_mux1[1]_i_9_n_0\
    );
\iesire_mux1[2]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000503"
    )
        port map (
      I0 => \iesire_mux1[2]_i_5_0\,
      I1 => \iesire_mux1[2]_i_5_1\,
      I2 => sw_IBUF(0),
      I3 => \^p_0_in\(0),
      I4 => \^p_0_in\(1),
      O => \iesire_mux1[2]_i_10_n_0\
    );
\iesire_mux1[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0004080C"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => \^p_0_in\(1),
      I2 => sw_IBUF(0),
      I3 => \iesire_mux1_reg[2]\,
      I4 => \iesire_mux1_reg[2]_0\,
      I5 => \iesire_mux1[2]_i_10_n_0\,
      O => \cnt_reg[14]_0\
    );
\iesire_mux1[3]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sw_IBUF(0),
      I1 => \^p_0_in\(1),
      I2 => \^p_0_in\(0),
      O => \cnt_reg[15]_2\
    );
\iesire_mux1[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => sw_IBUF(0),
      I1 => \^p_0_in\(0),
      I2 => \^p_0_in\(1),
      O => \cnt_reg[14]_3\
    );
\iesire_mux1[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sw_IBUF(0),
      I1 => \^p_0_in\(0),
      I2 => \^p_0_in\(1),
      O => \cnt_reg[14]_1\
    );
\pc[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => q2,
      I1 => q3,
      O => AR(0)
    );
q1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => q1_i_2_n_0,
      I1 => \Display/count_reg\(4),
      I2 => \Display/count_reg\(12),
      I3 => \Display/count_reg\(11),
      I4 => \Display/count_reg\(9),
      I5 => q1_i_3_n_0,
      O => \^eqop\
    );
q1_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => \^p_0_in\(1),
      I2 => \Display/count_reg\(5),
      I3 => \Display/count_reg\(8),
      O => q1_i_2_n_0
    );
q1_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \Display/count_reg\(10),
      I1 => \Display/count_reg\(3),
      I2 => \Display/count_reg\(0),
      I3 => \Display/count_reg\(13),
      I4 => q1_i_4_n_0,
      O => q1_i_3_n_0
    );
q1_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \Display/count_reg\(1),
      I1 => \Display/count_reg\(2),
      I2 => \Display/count_reg\(6),
      I3 => \Display/count_reg\(7),
      O => q1_i_4_n_0
    );
q1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^eqop\,
      D => btn_IBUF(0),
      Q => q1,
      R => '0'
    );
q2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => q1,
      Q => q2,
      R => '0'
    );
q3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => q2,
      Q => q3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mpg_0 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    eqOp : in STD_LOGIC;
    btn_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mpg_0 : entity is "mpg";
end mpg_0;

architecture STRUCTURE of mpg_0 is
  signal q1_reg_n_0 : STD_LOGIC;
  signal q2 : STD_LOGIC;
  signal q3 : STD_LOGIC;
begin
\pc[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => q2,
      I1 => q3,
      O => E(0)
    );
q1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => eqOp,
      D => btn_IBUF(0),
      Q => q1_reg_n_0,
      R => '0'
    );
q2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => q1_reg_n_0,
      Q => q2,
      R => '0'
    );
q3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => q2,
      Q => q3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ram is
  port (
    MemData : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    RD2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    MemWrite : in STD_LOGIC;
    \MemData_reg[15]_0\ : in STD_LOGIC;
    \MemData_reg[15]_1\ : in STD_LOGIC;
    \MemData_reg[15]_2\ : in STD_LOGIC;
    \MemData_reg[15]_3\ : in STD_LOGIC
  );
end ram;

architecture STRUCTURE of ram is
  signal p_1_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_mem_reg_0_15_0_0 : label is 256;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_mem_reg_0_15_0_0 : label is "Memory/ram_mem_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of ram_mem_reg_0_15_0_0 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of ram_mem_reg_0_15_0_0 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of ram_mem_reg_0_15_0_0 : label is "GND:A4";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_mem_reg_0_15_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_mem_reg_0_15_0_0 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of ram_mem_reg_0_15_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_mem_reg_0_15_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_mem_reg_0_15_0_0 : label is 0;
  attribute RTL_RAM_BITS of ram_mem_reg_0_15_10_10 : label is 256;
  attribute RTL_RAM_NAME of ram_mem_reg_0_15_10_10 : label is "Memory/ram_mem_reg";
  attribute RTL_RAM_TYPE of ram_mem_reg_0_15_10_10 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of ram_mem_reg_0_15_10_10 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of ram_mem_reg_0_15_10_10 : label is "GND:A4";
  attribute ram_addr_begin of ram_mem_reg_0_15_10_10 : label is 0;
  attribute ram_addr_end of ram_mem_reg_0_15_10_10 : label is 15;
  attribute ram_offset of ram_mem_reg_0_15_10_10 : label is 0;
  attribute ram_slice_begin of ram_mem_reg_0_15_10_10 : label is 10;
  attribute ram_slice_end of ram_mem_reg_0_15_10_10 : label is 10;
  attribute RTL_RAM_BITS of ram_mem_reg_0_15_11_11 : label is 256;
  attribute RTL_RAM_NAME of ram_mem_reg_0_15_11_11 : label is "Memory/ram_mem_reg";
  attribute RTL_RAM_TYPE of ram_mem_reg_0_15_11_11 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of ram_mem_reg_0_15_11_11 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of ram_mem_reg_0_15_11_11 : label is "GND:A4";
  attribute ram_addr_begin of ram_mem_reg_0_15_11_11 : label is 0;
  attribute ram_addr_end of ram_mem_reg_0_15_11_11 : label is 15;
  attribute ram_offset of ram_mem_reg_0_15_11_11 : label is 0;
  attribute ram_slice_begin of ram_mem_reg_0_15_11_11 : label is 11;
  attribute ram_slice_end of ram_mem_reg_0_15_11_11 : label is 11;
  attribute RTL_RAM_BITS of ram_mem_reg_0_15_12_12 : label is 256;
  attribute RTL_RAM_NAME of ram_mem_reg_0_15_12_12 : label is "Memory/ram_mem_reg";
  attribute RTL_RAM_TYPE of ram_mem_reg_0_15_12_12 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of ram_mem_reg_0_15_12_12 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of ram_mem_reg_0_15_12_12 : label is "GND:A4";
  attribute ram_addr_begin of ram_mem_reg_0_15_12_12 : label is 0;
  attribute ram_addr_end of ram_mem_reg_0_15_12_12 : label is 15;
  attribute ram_offset of ram_mem_reg_0_15_12_12 : label is 0;
  attribute ram_slice_begin of ram_mem_reg_0_15_12_12 : label is 12;
  attribute ram_slice_end of ram_mem_reg_0_15_12_12 : label is 12;
  attribute RTL_RAM_BITS of ram_mem_reg_0_15_13_13 : label is 256;
  attribute RTL_RAM_NAME of ram_mem_reg_0_15_13_13 : label is "Memory/ram_mem_reg";
  attribute RTL_RAM_TYPE of ram_mem_reg_0_15_13_13 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of ram_mem_reg_0_15_13_13 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of ram_mem_reg_0_15_13_13 : label is "GND:A4";
  attribute ram_addr_begin of ram_mem_reg_0_15_13_13 : label is 0;
  attribute ram_addr_end of ram_mem_reg_0_15_13_13 : label is 15;
  attribute ram_offset of ram_mem_reg_0_15_13_13 : label is 0;
  attribute ram_slice_begin of ram_mem_reg_0_15_13_13 : label is 13;
  attribute ram_slice_end of ram_mem_reg_0_15_13_13 : label is 13;
  attribute RTL_RAM_BITS of ram_mem_reg_0_15_14_14 : label is 256;
  attribute RTL_RAM_NAME of ram_mem_reg_0_15_14_14 : label is "Memory/ram_mem_reg";
  attribute RTL_RAM_TYPE of ram_mem_reg_0_15_14_14 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of ram_mem_reg_0_15_14_14 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of ram_mem_reg_0_15_14_14 : label is "GND:A4";
  attribute ram_addr_begin of ram_mem_reg_0_15_14_14 : label is 0;
  attribute ram_addr_end of ram_mem_reg_0_15_14_14 : label is 15;
  attribute ram_offset of ram_mem_reg_0_15_14_14 : label is 0;
  attribute ram_slice_begin of ram_mem_reg_0_15_14_14 : label is 14;
  attribute ram_slice_end of ram_mem_reg_0_15_14_14 : label is 14;
  attribute RTL_RAM_BITS of ram_mem_reg_0_15_15_15 : label is 256;
  attribute RTL_RAM_NAME of ram_mem_reg_0_15_15_15 : label is "Memory/ram_mem_reg";
  attribute RTL_RAM_TYPE of ram_mem_reg_0_15_15_15 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of ram_mem_reg_0_15_15_15 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of ram_mem_reg_0_15_15_15 : label is "GND:A4";
  attribute ram_addr_begin of ram_mem_reg_0_15_15_15 : label is 0;
  attribute ram_addr_end of ram_mem_reg_0_15_15_15 : label is 15;
  attribute ram_offset of ram_mem_reg_0_15_15_15 : label is 0;
  attribute ram_slice_begin of ram_mem_reg_0_15_15_15 : label is 15;
  attribute ram_slice_end of ram_mem_reg_0_15_15_15 : label is 15;
  attribute RTL_RAM_BITS of ram_mem_reg_0_15_1_1 : label is 256;
  attribute RTL_RAM_NAME of ram_mem_reg_0_15_1_1 : label is "Memory/ram_mem_reg";
  attribute RTL_RAM_TYPE of ram_mem_reg_0_15_1_1 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of ram_mem_reg_0_15_1_1 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of ram_mem_reg_0_15_1_1 : label is "GND:A4";
  attribute ram_addr_begin of ram_mem_reg_0_15_1_1 : label is 0;
  attribute ram_addr_end of ram_mem_reg_0_15_1_1 : label is 15;
  attribute ram_offset of ram_mem_reg_0_15_1_1 : label is 0;
  attribute ram_slice_begin of ram_mem_reg_0_15_1_1 : label is 1;
  attribute ram_slice_end of ram_mem_reg_0_15_1_1 : label is 1;
  attribute RTL_RAM_BITS of ram_mem_reg_0_15_2_2 : label is 256;
  attribute RTL_RAM_NAME of ram_mem_reg_0_15_2_2 : label is "Memory/ram_mem_reg";
  attribute RTL_RAM_TYPE of ram_mem_reg_0_15_2_2 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of ram_mem_reg_0_15_2_2 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of ram_mem_reg_0_15_2_2 : label is "GND:A4";
  attribute ram_addr_begin of ram_mem_reg_0_15_2_2 : label is 0;
  attribute ram_addr_end of ram_mem_reg_0_15_2_2 : label is 15;
  attribute ram_offset of ram_mem_reg_0_15_2_2 : label is 0;
  attribute ram_slice_begin of ram_mem_reg_0_15_2_2 : label is 2;
  attribute ram_slice_end of ram_mem_reg_0_15_2_2 : label is 2;
  attribute RTL_RAM_BITS of ram_mem_reg_0_15_3_3 : label is 256;
  attribute RTL_RAM_NAME of ram_mem_reg_0_15_3_3 : label is "Memory/ram_mem_reg";
  attribute RTL_RAM_TYPE of ram_mem_reg_0_15_3_3 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of ram_mem_reg_0_15_3_3 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of ram_mem_reg_0_15_3_3 : label is "GND:A4";
  attribute ram_addr_begin of ram_mem_reg_0_15_3_3 : label is 0;
  attribute ram_addr_end of ram_mem_reg_0_15_3_3 : label is 15;
  attribute ram_offset of ram_mem_reg_0_15_3_3 : label is 0;
  attribute ram_slice_begin of ram_mem_reg_0_15_3_3 : label is 3;
  attribute ram_slice_end of ram_mem_reg_0_15_3_3 : label is 3;
  attribute RTL_RAM_BITS of ram_mem_reg_0_15_4_4 : label is 256;
  attribute RTL_RAM_NAME of ram_mem_reg_0_15_4_4 : label is "Memory/ram_mem_reg";
  attribute RTL_RAM_TYPE of ram_mem_reg_0_15_4_4 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of ram_mem_reg_0_15_4_4 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of ram_mem_reg_0_15_4_4 : label is "GND:A4";
  attribute ram_addr_begin of ram_mem_reg_0_15_4_4 : label is 0;
  attribute ram_addr_end of ram_mem_reg_0_15_4_4 : label is 15;
  attribute ram_offset of ram_mem_reg_0_15_4_4 : label is 0;
  attribute ram_slice_begin of ram_mem_reg_0_15_4_4 : label is 4;
  attribute ram_slice_end of ram_mem_reg_0_15_4_4 : label is 4;
  attribute RTL_RAM_BITS of ram_mem_reg_0_15_5_5 : label is 256;
  attribute RTL_RAM_NAME of ram_mem_reg_0_15_5_5 : label is "Memory/ram_mem_reg";
  attribute RTL_RAM_TYPE of ram_mem_reg_0_15_5_5 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of ram_mem_reg_0_15_5_5 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of ram_mem_reg_0_15_5_5 : label is "GND:A4";
  attribute ram_addr_begin of ram_mem_reg_0_15_5_5 : label is 0;
  attribute ram_addr_end of ram_mem_reg_0_15_5_5 : label is 15;
  attribute ram_offset of ram_mem_reg_0_15_5_5 : label is 0;
  attribute ram_slice_begin of ram_mem_reg_0_15_5_5 : label is 5;
  attribute ram_slice_end of ram_mem_reg_0_15_5_5 : label is 5;
  attribute RTL_RAM_BITS of ram_mem_reg_0_15_6_6 : label is 256;
  attribute RTL_RAM_NAME of ram_mem_reg_0_15_6_6 : label is "Memory/ram_mem_reg";
  attribute RTL_RAM_TYPE of ram_mem_reg_0_15_6_6 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of ram_mem_reg_0_15_6_6 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of ram_mem_reg_0_15_6_6 : label is "GND:A4";
  attribute ram_addr_begin of ram_mem_reg_0_15_6_6 : label is 0;
  attribute ram_addr_end of ram_mem_reg_0_15_6_6 : label is 15;
  attribute ram_offset of ram_mem_reg_0_15_6_6 : label is 0;
  attribute ram_slice_begin of ram_mem_reg_0_15_6_6 : label is 6;
  attribute ram_slice_end of ram_mem_reg_0_15_6_6 : label is 6;
  attribute RTL_RAM_BITS of ram_mem_reg_0_15_7_7 : label is 256;
  attribute RTL_RAM_NAME of ram_mem_reg_0_15_7_7 : label is "Memory/ram_mem_reg";
  attribute RTL_RAM_TYPE of ram_mem_reg_0_15_7_7 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of ram_mem_reg_0_15_7_7 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of ram_mem_reg_0_15_7_7 : label is "GND:A4";
  attribute ram_addr_begin of ram_mem_reg_0_15_7_7 : label is 0;
  attribute ram_addr_end of ram_mem_reg_0_15_7_7 : label is 15;
  attribute ram_offset of ram_mem_reg_0_15_7_7 : label is 0;
  attribute ram_slice_begin of ram_mem_reg_0_15_7_7 : label is 7;
  attribute ram_slice_end of ram_mem_reg_0_15_7_7 : label is 7;
  attribute RTL_RAM_BITS of ram_mem_reg_0_15_8_8 : label is 256;
  attribute RTL_RAM_NAME of ram_mem_reg_0_15_8_8 : label is "Memory/ram_mem_reg";
  attribute RTL_RAM_TYPE of ram_mem_reg_0_15_8_8 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of ram_mem_reg_0_15_8_8 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of ram_mem_reg_0_15_8_8 : label is "GND:A4";
  attribute ram_addr_begin of ram_mem_reg_0_15_8_8 : label is 0;
  attribute ram_addr_end of ram_mem_reg_0_15_8_8 : label is 15;
  attribute ram_offset of ram_mem_reg_0_15_8_8 : label is 0;
  attribute ram_slice_begin of ram_mem_reg_0_15_8_8 : label is 8;
  attribute ram_slice_end of ram_mem_reg_0_15_8_8 : label is 8;
  attribute RTL_RAM_BITS of ram_mem_reg_0_15_9_9 : label is 256;
  attribute RTL_RAM_NAME of ram_mem_reg_0_15_9_9 : label is "Memory/ram_mem_reg";
  attribute RTL_RAM_TYPE of ram_mem_reg_0_15_9_9 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of ram_mem_reg_0_15_9_9 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of ram_mem_reg_0_15_9_9 : label is "GND:A4";
  attribute ram_addr_begin of ram_mem_reg_0_15_9_9 : label is 0;
  attribute ram_addr_end of ram_mem_reg_0_15_9_9 : label is 15;
  attribute ram_offset of ram_mem_reg_0_15_9_9 : label is 0;
  attribute ram_slice_begin of ram_mem_reg_0_15_9_9 : label is 9;
  attribute ram_slice_end of ram_mem_reg_0_15_9_9 : label is 9;
begin
\MemData_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_1_out(0),
      Q => MemData(0),
      R => '0'
    );
\MemData_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_1_out(10),
      Q => MemData(10),
      R => '0'
    );
\MemData_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_1_out(11),
      Q => MemData(11),
      R => '0'
    );
\MemData_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_1_out(12),
      Q => MemData(12),
      R => '0'
    );
\MemData_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_1_out(13),
      Q => MemData(13),
      R => '0'
    );
\MemData_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_1_out(14),
      Q => MemData(14),
      R => '0'
    );
\MemData_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_1_out(15),
      Q => MemData(15),
      R => '0'
    );
\MemData_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_1_out(1),
      Q => MemData(1),
      R => '0'
    );
\MemData_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_1_out(2),
      Q => MemData(2),
      R => '0'
    );
\MemData_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_1_out(3),
      Q => MemData(3),
      R => '0'
    );
\MemData_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_1_out(4),
      Q => MemData(4),
      R => '0'
    );
\MemData_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_1_out(5),
      Q => MemData(5),
      R => '0'
    );
\MemData_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_1_out(6),
      Q => MemData(6),
      R => '0'
    );
\MemData_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_1_out(7),
      Q => MemData(7),
      R => '0'
    );
\MemData_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_1_out(8),
      Q => MemData(8),
      R => '0'
    );
\MemData_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => p_1_out(9),
      Q => MemData(9),
      R => '0'
    );
ram_mem_reg_0_15_0_0: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00003660"
    )
        port map (
      A0 => \MemData_reg[15]_0\,
      A1 => \MemData_reg[15]_1\,
      A2 => \MemData_reg[15]_2\,
      A3 => \MemData_reg[15]_3\,
      A4 => '0',
      D => RD2(0),
      O => p_1_out(0),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
ram_mem_reg_0_15_10_10: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \MemData_reg[15]_0\,
      A1 => \MemData_reg[15]_1\,
      A2 => \MemData_reg[15]_2\,
      A3 => \MemData_reg[15]_3\,
      A4 => '0',
      D => RD2(10),
      O => p_1_out(10),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
ram_mem_reg_0_15_11_11: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \MemData_reg[15]_0\,
      A1 => \MemData_reg[15]_1\,
      A2 => \MemData_reg[15]_2\,
      A3 => \MemData_reg[15]_3\,
      A4 => '0',
      D => RD2(11),
      O => p_1_out(11),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
ram_mem_reg_0_15_12_12: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \MemData_reg[15]_0\,
      A1 => \MemData_reg[15]_1\,
      A2 => \MemData_reg[15]_2\,
      A3 => \MemData_reg[15]_3\,
      A4 => '0',
      D => RD2(12),
      O => p_1_out(12),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
ram_mem_reg_0_15_13_13: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \MemData_reg[15]_0\,
      A1 => \MemData_reg[15]_1\,
      A2 => \MemData_reg[15]_2\,
      A3 => \MemData_reg[15]_3\,
      A4 => '0',
      D => RD2(13),
      O => p_1_out(13),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
ram_mem_reg_0_15_14_14: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \MemData_reg[15]_0\,
      A1 => \MemData_reg[15]_1\,
      A2 => \MemData_reg[15]_2\,
      A3 => \MemData_reg[15]_3\,
      A4 => '0',
      D => RD2(14),
      O => p_1_out(14),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
ram_mem_reg_0_15_15_15: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \MemData_reg[15]_0\,
      A1 => \MemData_reg[15]_1\,
      A2 => \MemData_reg[15]_2\,
      A3 => \MemData_reg[15]_3\,
      A4 => '0',
      D => RD2(15),
      O => p_1_out(15),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
ram_mem_reg_0_15_1_1: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000678"
    )
        port map (
      A0 => \MemData_reg[15]_0\,
      A1 => \MemData_reg[15]_1\,
      A2 => \MemData_reg[15]_2\,
      A3 => \MemData_reg[15]_3\,
      A4 => '0',
      D => RD2(1),
      O => p_1_out(1),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
ram_mem_reg_0_15_2_2: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00002143"
    )
        port map (
      A0 => \MemData_reg[15]_0\,
      A1 => \MemData_reg[15]_1\,
      A2 => \MemData_reg[15]_2\,
      A3 => \MemData_reg[15]_3\,
      A4 => '0',
      D => RD2(2),
      O => p_1_out(2),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
ram_mem_reg_0_15_3_3: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"000010B3"
    )
        port map (
      A0 => \MemData_reg[15]_0\,
      A1 => \MemData_reg[15]_1\,
      A2 => \MemData_reg[15]_2\,
      A3 => \MemData_reg[15]_3\,
      A4 => '0',
      D => RD2(3),
      O => p_1_out(3),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
ram_mem_reg_0_15_4_4: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"000000C0"
    )
        port map (
      A0 => \MemData_reg[15]_0\,
      A1 => \MemData_reg[15]_1\,
      A2 => \MemData_reg[15]_2\,
      A3 => \MemData_reg[15]_3\,
      A4 => '0',
      D => RD2(4),
      O => p_1_out(4),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
ram_mem_reg_0_15_5_5: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00001900"
    )
        port map (
      A0 => \MemData_reg[15]_0\,
      A1 => \MemData_reg[15]_1\,
      A2 => \MemData_reg[15]_2\,
      A3 => \MemData_reg[15]_3\,
      A4 => '0',
      D => RD2(5),
      O => p_1_out(5),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
ram_mem_reg_0_15_6_6: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000300"
    )
        port map (
      A0 => \MemData_reg[15]_0\,
      A1 => \MemData_reg[15]_1\,
      A2 => \MemData_reg[15]_2\,
      A3 => \MemData_reg[15]_3\,
      A4 => '0',
      D => RD2(6),
      O => p_1_out(6),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
ram_mem_reg_0_15_7_7: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \MemData_reg[15]_0\,
      A1 => \MemData_reg[15]_1\,
      A2 => \MemData_reg[15]_2\,
      A3 => \MemData_reg[15]_3\,
      A4 => '0',
      D => RD2(7),
      O => p_1_out(7),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
ram_mem_reg_0_15_8_8: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \MemData_reg[15]_0\,
      A1 => \MemData_reg[15]_1\,
      A2 => \MemData_reg[15]_2\,
      A3 => \MemData_reg[15]_3\,
      A4 => '0',
      D => RD2(8),
      O => p_1_out(8),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
ram_mem_reg_0_15_9_9: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \MemData_reg[15]_0\,
      A1 => \MemData_reg[15]_1\,
      A2 => \MemData_reg[15]_2\,
      A3 => \MemData_reg[15]_3\,
      A4 => '0',
      D => RD2(9),
      O => p_1_out(9),
      WCLK => clk_IBUF_BUFG,
      WE => MemWrite
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_file is
  port (
    \pc_reg[1]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rd1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RD2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \pc_reg[1]_0\ : out STD_LOGIC;
    \pc_reg[8]\ : out STD_LOGIC;
    \pc_reg[0]\ : out STD_LOGIC;
    \pc_reg[0]_0\ : out STD_LOGIC;
    \pc_reg[0]_1\ : out STD_LOGIC;
    \cnt_reg[15]\ : out STD_LOGIC;
    \pc_reg[1]_1\ : out STD_LOGIC;
    \pc_reg[2]\ : out STD_LOGIC;
    \pc_reg[1]_2\ : out STD_LOGIC;
    \pc_reg[1]_3\ : out STD_LOGIC;
    \pc_reg[1]_4\ : out STD_LOGIC;
    \pc_reg[1]_5\ : out STD_LOGIC;
    \pc_reg[1]_6\ : out STD_LOGIC;
    \pc_reg[1]_7\ : out STD_LOGIC;
    \pc_reg[1]_8\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \pc_reg[1]_9\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \pc_reg[1]_10\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    data0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \pc_reg[1]_11\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \pc_reg[1]_12\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \pc_reg[1]_13\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ltOp_carry : in STD_LOGIC;
    InstrOut : in STD_LOGIC_VECTOR ( 14 downto 0 );
    sw_IBUF : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    p_0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_0_in_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reg_file_reg_r1_0_7_6_11_i_7 : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reg_file_reg_r1_0_7_0_5_i_16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    RegWrite : in STD_LOGIC;
    wd : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ADDRD : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end reg_file;

architecture STRUCTURE of reg_file is
  signal \^rd2\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \iesire_mux1[3]_i_12_n_0\ : STD_LOGIC;
  signal \iesire_mux1[3]_i_13_n_0\ : STD_LOGIC;
  signal \iesire_mux1[3]_i_14_n_0\ : STD_LOGIC;
  signal \iesire_mux1[3]_i_16_n_0\ : STD_LOGIC;
  signal \iesire_mux1[3]_i_17_n_0\ : STD_LOGIC;
  signal ltOp_carry_i_11_n_0 : STD_LOGIC;
  signal ram_mem_reg_0_15_0_0_i_19_n_0 : STD_LOGIC;
  signal ram_mem_reg_0_15_0_0_i_8_n_0 : STD_LOGIC;
  signal ram_mem_reg_0_15_0_0_i_8_n_1 : STD_LOGIC;
  signal ram_mem_reg_0_15_0_0_i_8_n_2 : STD_LOGIC;
  signal ram_mem_reg_0_15_0_0_i_8_n_3 : STD_LOGIC;
  signal \^rd1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reg_file_reg_r1_0_7_0_5_i_19_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_0_5_i_19_n_1 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_0_5_i_19_n_2 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_0_5_i_19_n_3 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_0_5_i_23_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_0_5_i_24_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_0_5_i_26_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_12_15_i_10_n_1 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_12_15_i_10_n_2 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_12_15_i_10_n_3 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_12_15_i_14_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_12_15_i_15_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_12_15_i_16_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_12_15_i_17_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_6_11_i_15_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_6_11_i_15_n_1 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_6_11_i_15_n_2 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_6_11_i_15_n_3 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_6_11_i_20_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_6_11_i_21_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_6_11_i_22_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_6_11_i_23_n_0 : STD_LOGIC;
  signal NLW_reg_file_reg_r1_0_7_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_reg_file_reg_r1_0_7_12_15_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_reg_file_reg_r1_0_7_12_15_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_reg_file_reg_r1_0_7_12_15_i_10_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_reg_file_reg_r1_0_7_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_reg_file_reg_r2_0_7_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_reg_file_reg_r2_0_7_12_15_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_reg_file_reg_r2_0_7_12_15_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_reg_file_reg_r2_0_7_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of ram_mem_reg_0_15_0_0_i_8 : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of reg_file_reg_r1_0_7_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of reg_file_reg_r1_0_7_0_5 : label is 128;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of reg_file_reg_r1_0_7_0_5 : label is "InstructionDecode/regFile/reg_file_reg_r1_0_7_0_5";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of reg_file_reg_r1_0_7_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of reg_file_reg_r1_0_7_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of reg_file_reg_r1_0_7_0_5 : label is 7;
  attribute ram_offset : integer;
  attribute ram_offset of reg_file_reg_r1_0_7_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of reg_file_reg_r1_0_7_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of reg_file_reg_r1_0_7_0_5 : label is 5;
  attribute ADDER_THRESHOLD of reg_file_reg_r1_0_7_0_5_i_19 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of reg_file_reg_r1_0_7_12_15 : label is "";
  attribute RTL_RAM_BITS of reg_file_reg_r1_0_7_12_15 : label is 128;
  attribute RTL_RAM_NAME of reg_file_reg_r1_0_7_12_15 : label is "InstructionDecode/regFile/reg_file_reg_r1_0_7_12_15";
  attribute RTL_RAM_TYPE of reg_file_reg_r1_0_7_12_15 : label is "RAM_SDP";
  attribute ram_addr_begin of reg_file_reg_r1_0_7_12_15 : label is 0;
  attribute ram_addr_end of reg_file_reg_r1_0_7_12_15 : label is 7;
  attribute ram_offset of reg_file_reg_r1_0_7_12_15 : label is 0;
  attribute ram_slice_begin of reg_file_reg_r1_0_7_12_15 : label is 12;
  attribute ram_slice_end of reg_file_reg_r1_0_7_12_15 : label is 15;
  attribute ADDER_THRESHOLD of reg_file_reg_r1_0_7_12_15_i_10 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of reg_file_reg_r1_0_7_6_11 : label is "";
  attribute RTL_RAM_BITS of reg_file_reg_r1_0_7_6_11 : label is 128;
  attribute RTL_RAM_NAME of reg_file_reg_r1_0_7_6_11 : label is "InstructionDecode/regFile/reg_file_reg_r1_0_7_6_11";
  attribute RTL_RAM_TYPE of reg_file_reg_r1_0_7_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of reg_file_reg_r1_0_7_6_11 : label is 0;
  attribute ram_addr_end of reg_file_reg_r1_0_7_6_11 : label is 7;
  attribute ram_offset of reg_file_reg_r1_0_7_6_11 : label is 0;
  attribute ram_slice_begin of reg_file_reg_r1_0_7_6_11 : label is 6;
  attribute ram_slice_end of reg_file_reg_r1_0_7_6_11 : label is 11;
  attribute ADDER_THRESHOLD of reg_file_reg_r1_0_7_6_11_i_15 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of reg_file_reg_r2_0_7_0_5 : label is "";
  attribute RTL_RAM_BITS of reg_file_reg_r2_0_7_0_5 : label is 128;
  attribute RTL_RAM_NAME of reg_file_reg_r2_0_7_0_5 : label is "InstructionDecode/regFile/reg_file_reg_r2_0_7_0_5";
  attribute RTL_RAM_TYPE of reg_file_reg_r2_0_7_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin of reg_file_reg_r2_0_7_0_5 : label is 0;
  attribute ram_addr_end of reg_file_reg_r2_0_7_0_5 : label is 7;
  attribute ram_offset of reg_file_reg_r2_0_7_0_5 : label is 0;
  attribute ram_slice_begin of reg_file_reg_r2_0_7_0_5 : label is 0;
  attribute ram_slice_end of reg_file_reg_r2_0_7_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of reg_file_reg_r2_0_7_12_15 : label is "";
  attribute RTL_RAM_BITS of reg_file_reg_r2_0_7_12_15 : label is 128;
  attribute RTL_RAM_NAME of reg_file_reg_r2_0_7_12_15 : label is "InstructionDecode/regFile/reg_file_reg_r2_0_7_12_15";
  attribute RTL_RAM_TYPE of reg_file_reg_r2_0_7_12_15 : label is "RAM_SDP";
  attribute ram_addr_begin of reg_file_reg_r2_0_7_12_15 : label is 0;
  attribute ram_addr_end of reg_file_reg_r2_0_7_12_15 : label is 7;
  attribute ram_offset of reg_file_reg_r2_0_7_12_15 : label is 0;
  attribute ram_slice_begin of reg_file_reg_r2_0_7_12_15 : label is 12;
  attribute ram_slice_end of reg_file_reg_r2_0_7_12_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of reg_file_reg_r2_0_7_6_11 : label is "";
  attribute RTL_RAM_BITS of reg_file_reg_r2_0_7_6_11 : label is 128;
  attribute RTL_RAM_NAME of reg_file_reg_r2_0_7_6_11 : label is "InstructionDecode/regFile/reg_file_reg_r2_0_7_6_11";
  attribute RTL_RAM_TYPE of reg_file_reg_r2_0_7_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of reg_file_reg_r2_0_7_6_11 : label is 0;
  attribute ram_addr_end of reg_file_reg_r2_0_7_6_11 : label is 7;
  attribute ram_offset of reg_file_reg_r2_0_7_6_11 : label is 0;
  attribute ram_slice_begin of reg_file_reg_r2_0_7_6_11 : label is 6;
  attribute ram_slice_end of reg_file_reg_r2_0_7_6_11 : label is 11;
begin
  RD2(15 downto 0) <= \^rd2\(15 downto 0);
  rd1(15 downto 0) <= \^rd1\(15 downto 0);
\iesire_mux1[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0055330FFF5533"
    )
        port map (
      I0 => \^rd1\(8),
      I1 => InstrOut(7),
      I2 => \^rd2\(8),
      I3 => sw_IBUF(1),
      I4 => sw_IBUF(0),
      I5 => data1(3),
      O => \pc_reg[0]\
    );
\iesire_mux1[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0055330FFF5533"
    )
        port map (
      I0 => \^rd1\(12),
      I1 => InstrOut(11),
      I2 => \^rd2\(12),
      I3 => sw_IBUF(1),
      I4 => sw_IBUF(0),
      I5 => data1(7),
      O => \pc_reg[2]\
    );
\iesire_mux1[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0055330FFF5533"
    )
        port map (
      I0 => \^rd1\(13),
      I1 => InstrOut(12),
      I2 => \^rd2\(13),
      I3 => sw_IBUF(1),
      I4 => sw_IBUF(0),
      I5 => data1(8),
      O => \pc_reg[0]_1\
    );
\iesire_mux1[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0055330FFF5533"
    )
        port map (
      I0 => \^rd1\(9),
      I1 => InstrOut(8),
      I2 => \^rd2\(9),
      I3 => sw_IBUF(1),
      I4 => sw_IBUF(0),
      I5 => data1(4),
      O => \pc_reg[1]_0\
    );
\iesire_mux1[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55330F0055330FFF"
    )
        port map (
      I0 => \^rd2\(6),
      I1 => data1(1),
      I2 => \^rd1\(6),
      I3 => sw_IBUF(1),
      I4 => sw_IBUF(0),
      I5 => InstrOut(5),
      O => \pc_reg[8]\
    );
\iesire_mux1[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0055330FFF5533"
    )
        port map (
      I0 => \^rd1\(10),
      I1 => InstrOut(9),
      I2 => \^rd2\(10),
      I3 => sw_IBUF(1),
      I4 => sw_IBUF(0),
      I5 => data1(5),
      O => \pc_reg[1]_1\
    );
\iesire_mux1[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0055330FFF5533"
    )
        port map (
      I0 => \^rd1\(14),
      I1 => InstrOut(13),
      I2 => \^rd2\(14),
      I3 => sw_IBUF(1),
      I4 => sw_IBUF(0),
      I5 => data1(9),
      O => \pc_reg[0]_0\
    );
\iesire_mux1[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0055330FFF5533"
    )
        port map (
      I0 => \^rd1\(15),
      I1 => InstrOut(14),
      I2 => \^rd2\(15),
      I3 => sw_IBUF(1),
      I4 => sw_IBUF(0),
      I5 => data1(10),
      O => \iesire_mux1[3]_i_12_n_0\
    );
\iesire_mux1[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0055330FFF5533"
    )
        port map (
      I0 => \^rd1\(7),
      I1 => InstrOut(6),
      I2 => \^rd2\(7),
      I3 => sw_IBUF(1),
      I4 => sw_IBUF(0),
      I5 => data1(2),
      O => \iesire_mux1[3]_i_13_n_0\
    );
\iesire_mux1[3]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000305"
    )
        port map (
      I0 => \iesire_mux1[3]_i_16_n_0\,
      I1 => \iesire_mux1[3]_i_17_n_0\,
      I2 => sw_IBUF(2),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      O => \iesire_mux1[3]_i_14_n_0\
    );
\iesire_mux1[3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55330F0055330FFF"
    )
        port map (
      I0 => \^rd2\(3),
      I1 => \^rd1\(3),
      I2 => data1(0),
      I3 => sw_IBUF(0),
      I4 => sw_IBUF(1),
      I5 => InstrOut(2),
      O => \iesire_mux1[3]_i_16_n_0\
    );
\iesire_mux1[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0055330FFF5533"
    )
        port map (
      I0 => \^rd1\(11),
      I1 => InstrOut(10),
      I2 => \^rd2\(11),
      I3 => sw_IBUF(1),
      I4 => sw_IBUF(0),
      I5 => data1(6),
      O => \iesire_mux1[3]_i_17_n_0\
    );
\iesire_mux1[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0008040C"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(0),
      I2 => sw_IBUF(2),
      I3 => \iesire_mux1[3]_i_12_n_0\,
      I4 => \iesire_mux1[3]_i_13_n_0\,
      I5 => \iesire_mux1[3]_i_14_n_0\,
      O => \cnt_reg[15]\
    );
\ltOp_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"040D0404"
    )
        port map (
      I0 => \^rd1\(15),
      I1 => \^rd2\(15),
      I2 => ltOp_carry,
      I3 => \^rd1\(14),
      I4 => \^rd2\(14),
      O => \pc_reg[1]_9\(3)
    );
\ltOp_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"040F0004"
    )
        port map (
      I0 => \^rd1\(12),
      I1 => \^rd2\(12),
      I2 => ltOp_carry,
      I3 => \^rd1\(13),
      I4 => \^rd2\(13),
      O => \pc_reg[1]_9\(2)
    );
\ltOp_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"040F0004"
    )
        port map (
      I0 => \^rd1\(10),
      I1 => \^rd2\(10),
      I2 => ltOp_carry,
      I3 => \^rd1\(11),
      I4 => \^rd2\(11),
      O => \pc_reg[1]_9\(1)
    );
\ltOp_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"040D0404"
    )
        port map (
      I0 => \^rd1\(9),
      I1 => \^rd2\(9),
      I2 => ltOp_carry,
      I3 => \^rd1\(8),
      I4 => \^rd2\(8),
      O => \pc_reg[1]_9\(0)
    );
\ltOp_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09003039"
    )
        port map (
      I0 => \^rd2\(15),
      I1 => \^rd1\(15),
      I2 => ltOp_carry,
      I3 => \^rd2\(14),
      I4 => \^rd1\(14),
      O => \pc_reg[1]_10\(3)
    );
\ltOp_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09003039"
    )
        port map (
      I0 => \^rd2\(12),
      I1 => \^rd1\(12),
      I2 => ltOp_carry,
      I3 => \^rd2\(13),
      I4 => \^rd1\(13),
      O => \pc_reg[1]_10\(2)
    );
\ltOp_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09003039"
    )
        port map (
      I0 => \^rd2\(10),
      I1 => \^rd1\(10),
      I2 => ltOp_carry,
      I3 => \^rd2\(11),
      I4 => \^rd1\(11),
      O => \pc_reg[1]_10\(1)
    );
\ltOp_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09003039"
    )
        port map (
      I0 => \^rd2\(9),
      I1 => \^rd1\(9),
      I2 => ltOp_carry,
      I3 => \^rd2\(8),
      I4 => \^rd1\(8),
      O => \pc_reg[1]_10\(0)
    );
ltOp_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00710030"
    )
        port map (
      I0 => \^rd1\(6),
      I1 => \^rd1\(7),
      I2 => \^rd2\(7),
      I3 => ltOp_carry,
      I4 => \^rd2\(6),
      O => DI(0)
    );
ltOp_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^rd1\(0),
      I1 => \^rd2\(0),
      I2 => ltOp_carry,
      I3 => InstrOut(0),
      O => ltOp_carry_i_11_n_0
    );
ltOp_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09005059"
    )
        port map (
      I0 => \^rd1\(7),
      I1 => \^rd2\(7),
      I2 => ltOp_carry,
      I3 => \^rd2\(6),
      I4 => \^rd1\(6),
      O => \pc_reg[1]\(3)
    );
ltOp_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A959A9590000"
    )
        port map (
      I0 => \^rd1\(5),
      I1 => \^rd2\(5),
      I2 => ltOp_carry,
      I3 => InstrOut(4),
      I4 => p_0_in(1),
      I5 => \^rd1\(4),
      O => \pc_reg[1]\(2)
    );
ltOp_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A959A9590000"
    )
        port map (
      I0 => \^rd1\(3),
      I1 => \^rd2\(3),
      I2 => ltOp_carry,
      I3 => InstrOut(2),
      I4 => p_0_in(0),
      I5 => \^rd1\(2),
      O => \pc_reg[1]\(1)
    );
ltOp_carry_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9590000"
    )
        port map (
      I0 => \^rd1\(1),
      I1 => \^rd2\(1),
      I2 => ltOp_carry,
      I3 => InstrOut(1),
      I4 => ltOp_carry_i_11_n_0,
      O => \pc_reg[1]\(0)
    );
\minusOp_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => \^rd1\(7),
      I1 => \^rd2\(7),
      I2 => ltOp_carry,
      O => \pc_reg[1]_12\(2)
    );
\minusOp_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => ltOp_carry,
      I1 => \^rd2\(6),
      I2 => \^rd1\(6),
      O => \pc_reg[1]_12\(1)
    );
\minusOp_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^rd1\(5),
      I1 => \^rd2\(5),
      I2 => ltOp_carry,
      I3 => InstrOut(4),
      O => \pc_reg[1]_12\(0)
    );
\minusOp_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => \^rd1\(11),
      I1 => \^rd2\(11),
      I2 => ltOp_carry,
      O => \pc_reg[1]_13\(3)
    );
\minusOp_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => \^rd1\(10),
      I1 => \^rd2\(10),
      I2 => ltOp_carry,
      O => \pc_reg[1]_13\(2)
    );
\minusOp_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => \^rd1\(9),
      I1 => \^rd2\(9),
      I2 => ltOp_carry,
      O => \pc_reg[1]_13\(1)
    );
\minusOp_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => ltOp_carry,
      I1 => \^rd2\(8),
      I2 => \^rd1\(8),
      O => \pc_reg[1]_13\(0)
    );
\minusOp_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => ltOp_carry,
      I1 => \^rd2\(15),
      I2 => \^rd1\(15),
      O => \pc_reg[1]_8\(3)
    );
\minusOp_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => ltOp_carry,
      I1 => \^rd2\(14),
      I2 => \^rd1\(14),
      O => \pc_reg[1]_8\(2)
    );
\minusOp_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => \^rd1\(13),
      I1 => \^rd2\(13),
      I2 => ltOp_carry,
      O => \pc_reg[1]_8\(1)
    );
\minusOp_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => \^rd1\(12),
      I1 => \^rd2\(12),
      I2 => ltOp_carry,
      O => \pc_reg[1]_8\(0)
    );
minusOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^rd1\(3),
      I1 => \^rd2\(3),
      I2 => ltOp_carry,
      I3 => InstrOut(2),
      O => \pc_reg[1]_11\(2)
    );
minusOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^rd1\(1),
      I1 => \^rd2\(1),
      I2 => ltOp_carry,
      I3 => InstrOut(1),
      O => \pc_reg[1]_11\(1)
    );
minusOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^rd1\(0),
      I1 => \^rd2\(0),
      I2 => ltOp_carry,
      I3 => InstrOut(0),
      O => \pc_reg[1]_11\(0)
    );
ram_mem_reg_0_15_0_0_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^rd1\(2),
      I1 => p_0_in(0),
      O => ram_mem_reg_0_15_0_0_i_19_n_0
    );
ram_mem_reg_0_15_0_0_i_8: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ram_mem_reg_0_15_0_0_i_8_n_0,
      CO(2) => ram_mem_reg_0_15_0_0_i_8_n_1,
      CO(1) => ram_mem_reg_0_15_0_0_i_8_n_2,
      CO(0) => ram_mem_reg_0_15_0_0_i_8_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^rd1\(3 downto 0),
      O(3 downto 0) => data0(3 downto 0),
      S(3) => S(2),
      S(2) => ram_mem_reg_0_15_0_0_i_19_n_0,
      S(1 downto 0) => S(1 downto 0)
    );
reg_file_reg_r1_0_7_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => InstrOut(11 downto 9),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => InstrOut(11 downto 9),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => InstrOut(11 downto 9),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => ADDRD(2 downto 0),
      DIA(1 downto 0) => wd(1 downto 0),
      DIB(1 downto 0) => wd(3 downto 2),
      DIC(1 downto 0) => wd(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd1\(1 downto 0),
      DOB(1 downto 0) => \^rd1\(3 downto 2),
      DOC(1 downto 0) => \^rd1\(5 downto 4),
      DOD(1 downto 0) => NLW_reg_file_reg_r1_0_7_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => RegWrite
    );
reg_file_reg_r1_0_7_0_5_i_19: unisim.vcomponents.CARRY4
     port map (
      CI => ram_mem_reg_0_15_0_0_i_8_n_0,
      CO(3) => reg_file_reg_r1_0_7_0_5_i_19_n_0,
      CO(2) => reg_file_reg_r1_0_7_0_5_i_19_n_1,
      CO(1) => reg_file_reg_r1_0_7_0_5_i_19_n_2,
      CO(0) => reg_file_reg_r1_0_7_0_5_i_19_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^rd1\(7 downto 4),
      O(3 downto 0) => data0(7 downto 4),
      S(3) => reg_file_reg_r1_0_7_0_5_i_23_n_0,
      S(2) => reg_file_reg_r1_0_7_0_5_i_24_n_0,
      S(1) => reg_file_reg_r1_0_7_0_5_i_16(0),
      S(0) => reg_file_reg_r1_0_7_0_5_i_26_n_0
    );
reg_file_reg_r1_0_7_0_5_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => ltOp_carry,
      I1 => \^rd2\(7),
      I2 => \^rd1\(7),
      O => reg_file_reg_r1_0_7_0_5_i_23_n_0
    );
reg_file_reg_r1_0_7_0_5_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => \^rd1\(6),
      I1 => \^rd2\(6),
      I2 => ltOp_carry,
      O => reg_file_reg_r1_0_7_0_5_i_24_n_0
    );
reg_file_reg_r1_0_7_0_5_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^rd1\(4),
      I1 => \^rd2\(4),
      I2 => ltOp_carry,
      I3 => InstrOut(3),
      O => reg_file_reg_r1_0_7_0_5_i_26_n_0
    );
reg_file_reg_r1_0_7_12_15: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => InstrOut(11 downto 9),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => InstrOut(11 downto 9),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => InstrOut(11 downto 9),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => ADDRD(2 downto 0),
      DIA(1 downto 0) => wd(13 downto 12),
      DIB(1 downto 0) => wd(15 downto 14),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd1\(13 downto 12),
      DOB(1 downto 0) => \^rd1\(15 downto 14),
      DOC(1 downto 0) => NLW_reg_file_reg_r1_0_7_12_15_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_reg_file_reg_r1_0_7_12_15_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => RegWrite
    );
reg_file_reg_r1_0_7_12_15_i_10: unisim.vcomponents.CARRY4
     port map (
      CI => reg_file_reg_r1_0_7_6_11_i_15_n_0,
      CO(3) => NLW_reg_file_reg_r1_0_7_12_15_i_10_CO_UNCONNECTED(3),
      CO(2) => reg_file_reg_r1_0_7_12_15_i_10_n_1,
      CO(1) => reg_file_reg_r1_0_7_12_15_i_10_n_2,
      CO(0) => reg_file_reg_r1_0_7_12_15_i_10_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^rd1\(14 downto 12),
      O(3 downto 0) => data0(15 downto 12),
      S(3) => reg_file_reg_r1_0_7_12_15_i_14_n_0,
      S(2) => reg_file_reg_r1_0_7_12_15_i_15_n_0,
      S(1) => reg_file_reg_r1_0_7_12_15_i_16_n_0,
      S(0) => reg_file_reg_r1_0_7_12_15_i_17_n_0
    );
reg_file_reg_r1_0_7_12_15_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A6"
    )
        port map (
      I0 => \^rd1\(12),
      I1 => \^rd2\(12),
      I2 => ltOp_carry,
      I3 => reg_file_reg_r1_0_7_6_11_i_7,
      O => \pc_reg[1]_4\
    );
reg_file_reg_r1_0_7_12_15_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => \^rd1\(15),
      I1 => \^rd2\(15),
      I2 => ltOp_carry,
      O => reg_file_reg_r1_0_7_12_15_i_14_n_0
    );
reg_file_reg_r1_0_7_12_15_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => \^rd1\(14),
      I1 => \^rd2\(14),
      I2 => ltOp_carry,
      O => reg_file_reg_r1_0_7_12_15_i_15_n_0
    );
reg_file_reg_r1_0_7_12_15_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => ltOp_carry,
      I1 => \^rd2\(13),
      I2 => \^rd1\(13),
      O => reg_file_reg_r1_0_7_12_15_i_16_n_0
    );
reg_file_reg_r1_0_7_12_15_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => ltOp_carry,
      I1 => \^rd2\(12),
      I2 => \^rd1\(12),
      O => reg_file_reg_r1_0_7_12_15_i_17_n_0
    );
reg_file_reg_r1_0_7_12_15_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0D02"
    )
        port map (
      I0 => \^rd2\(13),
      I1 => ltOp_carry,
      I2 => reg_file_reg_r1_0_7_6_11_i_7,
      I3 => \^rd1\(13),
      O => \pc_reg[1]_6\
    );
reg_file_reg_r1_0_7_6_11: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => InstrOut(11 downto 9),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => InstrOut(11 downto 9),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => InstrOut(11 downto 9),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => ADDRD(2 downto 0),
      DIA(1 downto 0) => wd(7 downto 6),
      DIB(1 downto 0) => wd(9 downto 8),
      DIC(1 downto 0) => wd(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd1\(7 downto 6),
      DOB(1 downto 0) => \^rd1\(9 downto 8),
      DOC(1 downto 0) => \^rd1\(11 downto 10),
      DOD(1 downto 0) => NLW_reg_file_reg_r1_0_7_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => RegWrite
    );
reg_file_reg_r1_0_7_6_11_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A6"
    )
        port map (
      I0 => \^rd1\(7),
      I1 => \^rd2\(7),
      I2 => ltOp_carry,
      I3 => reg_file_reg_r1_0_7_6_11_i_7,
      O => \pc_reg[1]_2\
    );
reg_file_reg_r1_0_7_6_11_i_15: unisim.vcomponents.CARRY4
     port map (
      CI => reg_file_reg_r1_0_7_0_5_i_19_n_0,
      CO(3) => reg_file_reg_r1_0_7_6_11_i_15_n_0,
      CO(2) => reg_file_reg_r1_0_7_6_11_i_15_n_1,
      CO(1) => reg_file_reg_r1_0_7_6_11_i_15_n_2,
      CO(0) => reg_file_reg_r1_0_7_6_11_i_15_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^rd1\(11 downto 8),
      O(3 downto 0) => data0(11 downto 8),
      S(3) => reg_file_reg_r1_0_7_6_11_i_20_n_0,
      S(2) => reg_file_reg_r1_0_7_6_11_i_21_n_0,
      S(1) => reg_file_reg_r1_0_7_6_11_i_22_n_0,
      S(0) => reg_file_reg_r1_0_7_6_11_i_23_n_0
    );
reg_file_reg_r1_0_7_6_11_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0D02"
    )
        port map (
      I0 => \^rd2\(9),
      I1 => ltOp_carry,
      I2 => reg_file_reg_r1_0_7_6_11_i_7,
      I3 => \^rd1\(9),
      O => \pc_reg[1]_7\
    );
reg_file_reg_r1_0_7_6_11_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0D02"
    )
        port map (
      I0 => \^rd2\(11),
      I1 => ltOp_carry,
      I2 => reg_file_reg_r1_0_7_6_11_i_7,
      I3 => \^rd1\(11),
      O => \pc_reg[1]_3\
    );
reg_file_reg_r1_0_7_6_11_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A6"
    )
        port map (
      I0 => \^rd1\(10),
      I1 => \^rd2\(10),
      I2 => ltOp_carry,
      I3 => reg_file_reg_r1_0_7_6_11_i_7,
      O => \pc_reg[1]_5\
    );
reg_file_reg_r1_0_7_6_11_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => ltOp_carry,
      I1 => \^rd2\(11),
      I2 => \^rd1\(11),
      O => reg_file_reg_r1_0_7_6_11_i_20_n_0
    );
reg_file_reg_r1_0_7_6_11_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => ltOp_carry,
      I1 => \^rd2\(10),
      I2 => \^rd1\(10),
      O => reg_file_reg_r1_0_7_6_11_i_21_n_0
    );
reg_file_reg_r1_0_7_6_11_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => ltOp_carry,
      I1 => \^rd2\(9),
      I2 => \^rd1\(9),
      O => reg_file_reg_r1_0_7_6_11_i_22_n_0
    );
reg_file_reg_r1_0_7_6_11_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => \^rd1\(8),
      I1 => \^rd2\(8),
      I2 => ltOp_carry,
      O => reg_file_reg_r1_0_7_6_11_i_23_n_0
    );
reg_file_reg_r2_0_7_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => InstrOut(8 downto 6),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => InstrOut(8 downto 6),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => InstrOut(8 downto 6),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => ADDRD(2 downto 0),
      DIA(1 downto 0) => wd(1 downto 0),
      DIB(1 downto 0) => wd(3 downto 2),
      DIC(1 downto 0) => wd(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd2\(1 downto 0),
      DOB(1 downto 0) => \^rd2\(3 downto 2),
      DOC(1 downto 0) => \^rd2\(5 downto 4),
      DOD(1 downto 0) => NLW_reg_file_reg_r2_0_7_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => RegWrite
    );
reg_file_reg_r2_0_7_12_15: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => InstrOut(8 downto 6),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => InstrOut(8 downto 6),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => InstrOut(8 downto 6),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => ADDRD(2 downto 0),
      DIA(1 downto 0) => wd(13 downto 12),
      DIB(1 downto 0) => wd(15 downto 14),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd2\(13 downto 12),
      DOB(1 downto 0) => \^rd2\(15 downto 14),
      DOC(1 downto 0) => NLW_reg_file_reg_r2_0_7_12_15_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_reg_file_reg_r2_0_7_12_15_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => RegWrite
    );
reg_file_reg_r2_0_7_6_11: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => InstrOut(8 downto 6),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => InstrOut(8 downto 6),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => InstrOut(8 downto 6),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => ADDRD(2 downto 0),
      DIA(1 downto 0) => wd(7 downto 6),
      DIB(1 downto 0) => wd(9 downto 8),
      DIC(1 downto 0) => wd(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^rd2\(7 downto 6),
      DOB(1 downto 0) => \^rd2\(9 downto 8),
      DOC(1 downto 0) => \^rd2\(11 downto 10),
      DOD(1 downto 0) => NLW_reg_file_reg_r2_0_7_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => RegWrite
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity IDUnit is
  port (
    \pc_reg[1]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rd1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RD2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \pc_reg[1]_0\ : out STD_LOGIC;
    \pc_reg[8]\ : out STD_LOGIC;
    \pc_reg[0]\ : out STD_LOGIC;
    \pc_reg[0]_0\ : out STD_LOGIC;
    \pc_reg[0]_1\ : out STD_LOGIC;
    \cnt_reg[15]\ : out STD_LOGIC;
    \pc_reg[1]_1\ : out STD_LOGIC;
    \pc_reg[2]\ : out STD_LOGIC;
    \pc_reg[1]_2\ : out STD_LOGIC;
    \pc_reg[1]_3\ : out STD_LOGIC;
    \pc_reg[1]_4\ : out STD_LOGIC;
    \pc_reg[1]_5\ : out STD_LOGIC;
    \pc_reg[1]_6\ : out STD_LOGIC;
    \pc_reg[1]_7\ : out STD_LOGIC;
    \pc_reg[1]_8\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \pc_reg[1]_9\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \pc_reg[1]_10\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    data0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \pc_reg[1]_11\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \pc_reg[1]_12\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \pc_reg[1]_13\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ltOp_carry : in STD_LOGIC;
    InstrOut : in STD_LOGIC_VECTOR ( 14 downto 0 );
    sw_IBUF : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    p_0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_0_in_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reg_file_reg_r1_0_7_6_11_i_7 : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reg_file_reg_r1_0_7_0_5_i_16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    RegWrite : in STD_LOGIC;
    wd : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ADDRD : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end IDUnit;

architecture STRUCTURE of IDUnit is
begin
regFile: entity work.reg_file
     port map (
      ADDRD(2 downto 0) => ADDRD(2 downto 0),
      DI(0) => DI(0),
      InstrOut(14 downto 0) => InstrOut(14 downto 0),
      RD2(15 downto 0) => RD2(15 downto 0),
      RegWrite => RegWrite,
      S(2 downto 0) => S(2 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \cnt_reg[15]\ => \cnt_reg[15]\,
      data0(15 downto 0) => data0(15 downto 0),
      data1(10 downto 0) => data1(10 downto 0),
      ltOp_carry => ltOp_carry,
      p_0_in(1 downto 0) => p_0_in(1 downto 0),
      p_0_in_0(1 downto 0) => p_0_in_0(1 downto 0),
      \pc_reg[0]\ => \pc_reg[0]\,
      \pc_reg[0]_0\ => \pc_reg[0]_0\,
      \pc_reg[0]_1\ => \pc_reg[0]_1\,
      \pc_reg[1]\(3 downto 0) => \pc_reg[1]\(3 downto 0),
      \pc_reg[1]_0\ => \pc_reg[1]_0\,
      \pc_reg[1]_1\ => \pc_reg[1]_1\,
      \pc_reg[1]_10\(3 downto 0) => \pc_reg[1]_10\(3 downto 0),
      \pc_reg[1]_11\(2 downto 0) => \pc_reg[1]_11\(2 downto 0),
      \pc_reg[1]_12\(2 downto 0) => \pc_reg[1]_12\(2 downto 0),
      \pc_reg[1]_13\(3 downto 0) => \pc_reg[1]_13\(3 downto 0),
      \pc_reg[1]_2\ => \pc_reg[1]_2\,
      \pc_reg[1]_3\ => \pc_reg[1]_3\,
      \pc_reg[1]_4\ => \pc_reg[1]_4\,
      \pc_reg[1]_5\ => \pc_reg[1]_5\,
      \pc_reg[1]_6\ => \pc_reg[1]_6\,
      \pc_reg[1]_7\ => \pc_reg[1]_7\,
      \pc_reg[1]_8\(3 downto 0) => \pc_reg[1]_8\(3 downto 0),
      \pc_reg[1]_9\(3 downto 0) => \pc_reg[1]_9\(3 downto 0),
      \pc_reg[2]\ => \pc_reg[2]\,
      \pc_reg[8]\ => \pc_reg[8]\,
      rd1(15 downto 0) => rd1(15 downto 0),
      reg_file_reg_r1_0_7_0_5_i_16(0) => reg_file_reg_r1_0_7_0_5_i_16(0),
      reg_file_reg_r1_0_7_6_11_i_7 => reg_file_reg_r1_0_7_6_11_i_7,
      sw_IBUF(2 downto 0) => sw_IBUF(2 downto 0),
      wd(15 downto 0) => wd(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity InstrFetch is
  port (
    data1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \pc_reg[0]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \pc_reg[0]_1\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wd : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \pc_reg[0]_2\ : out STD_LOGIC;
    \pc_reg[1]_0\ : out STD_LOGIC;
    \pc_reg[0]_3\ : out STD_LOGIC;
    \pc_reg[0]_4\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \pc_reg[1]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \pc_reg[1]_2\ : out STD_LOGIC;
    \pc_reg[0]_5\ : out STD_LOGIC;
    \pc_reg[0]_6\ : out STD_LOGIC;
    ADDRD : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \pc_reg[0]_7\ : out STD_LOGIC;
    \pc_reg[8]_0\ : out STD_LOGIC;
    led_OBUF : out STD_LOGIC_VECTOR ( 7 downto 0 );
    MemWrite : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    RegWrite : out STD_LOGIC;
    \pc_reg[0]_8\ : out STD_LOGIC;
    \pc_reg[1]_3\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \pc_reg[8]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \pc_reg[0]_9\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \pc_reg[12]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \pc_reg[0]_10\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    reg_file_reg_r1_0_7_0_5 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \pc_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \pc_reg[1]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    eqOp : in STD_LOGIC;
    btn_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \iesire_mux1_reg[2]\ : in STD_LOGIC;
    \iesire_mux1_reg[2]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sw_IBUF : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \iesire_mux1_reg[2]_1\ : in STD_LOGIC;
    \iesire_mux1_reg[0]\ : in STD_LOGIC;
    \iesire_mux1_reg[0]_0\ : in STD_LOGIC;
    \iesire_mux1_reg[1]\ : in STD_LOGIC;
    \iesire_mux1_reg[3]\ : in STD_LOGIC;
    \iesire_mux1_reg[2]_2\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd1 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    RD2 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \pc_reg[15]_0\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \pc_reg[13]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \iesire_mux1[1]_i_5_0\ : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    reg_file_reg_r1_0_7_12_15_i_7_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    plusOp_carry_i_9_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reg_file_reg_r1_0_7_6_11_i_5_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reg_file_reg_r1_0_7_6_11_i_6_0 : in STD_LOGIC;
    plusOp_carry_i_7_0 : in STD_LOGIC;
    plusOp_carry_i_9_1 : in STD_LOGIC;
    reg_file_reg_r1_0_7_6_11_i_5_1 : in STD_LOGIC;
    plusOp_carry_i_9_2 : in STD_LOGIC;
    plusOp_carry_i_8_0 : in STD_LOGIC
  );
end InstrFetch;

architecture STRUCTURE of InstrFetch is
  signal Addr1 : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal Addr1_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal InstrOut : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^memwrite\ : STD_LOGIC;
  signal btn_divizat : STD_LOGIC;
  signal \^data1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \iesire_mux1[0]_i_2_n_0\ : STD_LOGIC;
  signal \iesire_mux1[0]_i_4_n_0\ : STD_LOGIC;
  signal \iesire_mux1[0]_i_5_n_0\ : STD_LOGIC;
  signal \iesire_mux1[0]_i_7_n_0\ : STD_LOGIC;
  signal \iesire_mux1[0]_i_8_n_0\ : STD_LOGIC;
  signal \iesire_mux1[1]_i_10_n_0\ : STD_LOGIC;
  signal \iesire_mux1[1]_i_2_n_0\ : STD_LOGIC;
  signal \iesire_mux1[1]_i_4_n_0\ : STD_LOGIC;
  signal \iesire_mux1[1]_i_5_n_0\ : STD_LOGIC;
  signal \iesire_mux1[1]_i_6_n_0\ : STD_LOGIC;
  signal \iesire_mux1[2]_i_2_n_0\ : STD_LOGIC;
  signal \iesire_mux1[2]_i_3_n_0\ : STD_LOGIC;
  signal \iesire_mux1[2]_i_4_n_0\ : STD_LOGIC;
  signal \iesire_mux1[2]_i_6_n_0\ : STD_LOGIC;
  signal \iesire_mux1[2]_i_7_n_0\ : STD_LOGIC;
  signal \iesire_mux1[3]_i_10_n_0\ : STD_LOGIC;
  signal \iesire_mux1[3]_i_11_n_0\ : STD_LOGIC;
  signal \iesire_mux1[3]_i_2_n_0\ : STD_LOGIC;
  signal \iesire_mux1[3]_i_4_n_0\ : STD_LOGIC;
  signal \iesire_mux1[3]_i_6_n_0\ : STD_LOGIC;
  signal \iesire_mux1[3]_i_7_n_0\ : STD_LOGIC;
  signal \iesire_mux1[3]_i_9_n_0\ : STD_LOGIC;
  signal \led_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \led_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pc : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \^pc_reg[0]_0\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \^pc_reg[0]_1\ : STD_LOGIC;
  signal \^pc_reg[0]_2\ : STD_LOGIC;
  signal \^pc_reg[0]_3\ : STD_LOGIC;
  signal \^pc_reg[0]_4\ : STD_LOGIC;
  signal \^pc_reg[0]_6\ : STD_LOGIC;
  signal \^pc_reg[1]_0\ : STD_LOGIC;
  signal \^pc_reg[1]_1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^pc_reg[1]_2\ : STD_LOGIC;
  signal pc_reg_rep : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \plusOp_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal plusOp_carry_i_6_n_0 : STD_LOGIC;
  signal plusOp_carry_i_7_n_0 : STD_LOGIC;
  signal plusOp_carry_i_8_n_0 : STD_LOGIC;
  signal plusOp_carry_i_9_n_0 : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal ram_mem_reg_0_15_0_0_i_10_n_0 : STD_LOGIC;
  signal ram_mem_reg_0_15_0_0_i_11_n_0 : STD_LOGIC;
  signal ram_mem_reg_0_15_0_0_i_12_n_0 : STD_LOGIC;
  signal ram_mem_reg_0_15_0_0_i_14_n_0 : STD_LOGIC;
  signal ram_mem_reg_0_15_0_0_i_15_n_0 : STD_LOGIC;
  signal ram_mem_reg_0_15_0_0_i_17_n_0 : STD_LOGIC;
  signal ram_mem_reg_0_15_0_0_i_22_n_0 : STD_LOGIC;
  signal ram_mem_reg_0_15_0_0_i_23_n_0 : STD_LOGIC;
  signal ram_mem_reg_0_15_0_0_i_24_n_0 : STD_LOGIC;
  signal ram_mem_reg_0_15_0_0_i_6_n_0 : STD_LOGIC;
  signal ram_mem_reg_0_15_0_0_i_7_n_0 : STD_LOGIC;
  signal ram_mem_reg_0_15_0_0_i_9_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_0_5_i_14_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_0_5_i_15_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_0_5_i_16_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_0_5_i_17_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_0_5_i_20_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_0_5_i_21_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_0_5_i_22_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_12_15_i_12_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_12_15_i_13_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_12_15_i_5_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_12_15_i_6_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_12_15_i_7_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_12_15_i_8_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_6_11_i_10_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_6_11_i_11_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_6_11_i_12_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_6_11_i_14_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_6_11_i_17_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_6_11_i_7_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_6_11_i_8_n_0 : STD_LOGIC;
  signal reg_file_reg_r1_0_7_6_11_i_9_n_0 : STD_LOGIC;
  signal \NLW_plusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \iesire_mux1[2]_i_7\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \iesire_mux1[3]_i_10\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \iesire_mux1[3]_i_11\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \iesire_mux1[3]_i_9\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \led_OBUF[0]_inst_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \led_OBUF[1]_inst_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \led_OBUF[2]_inst_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \led_OBUF[3]_inst_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \led_OBUF[4]_inst_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \led_OBUF[5]_inst_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \led_OBUF[6]_inst_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of ltOp_carry_i_10 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of ltOp_carry_i_9 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \pc[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \pc[10]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \pc[11]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \pc[12]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \pc[14]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \pc[15]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \pc[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \pc[1]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \pc[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \pc[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \pc[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \pc[4]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \pc[5]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \pc[5]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \pc[6]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \pc[7]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \pc[8]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \pc[9]_i_1\ : label is "soft_lutpair20";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of ram_mem_reg_0_15_0_0_i_11 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of ram_mem_reg_0_15_0_0_i_14 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of ram_mem_reg_0_15_0_0_i_16 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of ram_mem_reg_0_15_0_0_i_6 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of reg_file_reg_r1_0_7_0_5_i_17 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of reg_file_reg_r1_0_7_0_5_i_18 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of reg_file_reg_r1_0_7_0_5_i_21 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of reg_file_reg_r1_0_7_0_5_i_22 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of reg_file_reg_r1_0_7_6_11_i_17 : label is "soft_lutpair15";
begin
  MemWrite <= \^memwrite\;
  data1(15 downto 0) <= \^data1\(15 downto 0);
  \pc_reg[0]_0\(14 downto 0) <= \^pc_reg[0]_0\(14 downto 0);
  \pc_reg[0]_1\ <= \^pc_reg[0]_1\;
  \pc_reg[0]_2\ <= \^pc_reg[0]_2\;
  \pc_reg[0]_3\ <= \^pc_reg[0]_3\;
  \pc_reg[0]_4\ <= \^pc_reg[0]_4\;
  \pc_reg[0]_6\ <= \^pc_reg[0]_6\;
  \pc_reg[1]_0\ <= \^pc_reg[1]_0\;
  \pc_reg[1]_1\(1 downto 0) <= \^pc_reg[1]_1\(1 downto 0);
  \pc_reg[1]_2\ <= \^pc_reg[1]_2\;
Debouncer: entity work.mpg_0
     port map (
      E(0) => btn_divizat,
      btn_IBUF(0) => btn_IBUF(0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      eqOp => eqOp
    );
\MemData[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^memwrite\,
      O => E(0)
    );
\iesire_mux1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
        port map (
      I0 => \iesire_mux1[0]_i_2_n_0\,
      I1 => \iesire_mux1_reg[0]\,
      I2 => \iesire_mux1[0]_i_4_n_0\,
      I3 => \iesire_mux1[0]_i_5_n_0\,
      I4 => \iesire_mux1_reg[0]_0\,
      I5 => \iesire_mux1[0]_i_7_n_0\,
      O => D(0)
    );
\iesire_mux1[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33000F5533FF0F55"
    )
        port map (
      I0 => \^pc_reg[0]_0\(3),
      I1 => RD2(4),
      I2 => \^data1\(4),
      I3 => sw_IBUF(1),
      I4 => sw_IBUF(2),
      I5 => rd1(4),
      O => \pc_reg[1]_3\
    );
\iesire_mux1[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3555303035553F3F"
    )
        port map (
      I0 => reg_file_reg_r1_0_7_0_5_i_16_n_0,
      I1 => Q(4),
      I2 => sw_IBUF(2),
      I3 => reg_file_reg_r1_0_7_0_5_i_14_n_0,
      I4 => sw_IBUF(1),
      I5 => \^pc_reg[0]_0\(3),
      O => \iesire_mux1[0]_i_2_n_0\
    );
\iesire_mux1[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88AAAA8A888A88"
    )
        port map (
      I0 => \iesire_mux1_reg[2]\,
      I1 => \iesire_mux1[0]_i_8_n_0\,
      I2 => \iesire_mux1[3]_i_10_n_0\,
      I3 => Q(0),
      I4 => \iesire_mux1[3]_i_11_n_0\,
      I5 => \^pc_reg[0]_3\,
      O => \iesire_mux1[0]_i_4_n_0\
    );
\iesire_mux1[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88AAAA8A888A88"
    )
        port map (
      I0 => \iesire_mux1_reg[2]_2\,
      I1 => \iesire_mux1[3]_i_9_n_0\,
      I2 => \iesire_mux1[3]_i_10_n_0\,
      I3 => Q(8),
      I4 => \iesire_mux1[3]_i_11_n_0\,
      I5 => reg_file_reg_r1_0_7_6_11_i_10_n_0,
      O => \iesire_mux1[0]_i_5_n_0\
    );
\iesire_mux1[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88AAAA8A888A88"
    )
        port map (
      I0 => \iesire_mux1_reg[2]_1\,
      I1 => \iesire_mux1[3]_i_9_n_0\,
      I2 => \iesire_mux1[3]_i_10_n_0\,
      I3 => Q(12),
      I4 => \iesire_mux1[3]_i_11_n_0\,
      I5 => reg_file_reg_r1_0_7_12_15_i_6_n_0,
      O => \iesire_mux1[0]_i_7_n_0\
    );
\iesire_mux1[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^pc_reg[0]_0\(0),
      I1 => sw_IBUF(2),
      I2 => sw_IBUF(1),
      O => \iesire_mux1[0]_i_8_n_0\
    );
\iesire_mux1[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FAA33000FAA33FF"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => rd1(0),
      I2 => RD2(0),
      I3 => sw_IBUF(2),
      I4 => sw_IBUF(1),
      I5 => \^pc_reg[0]_0\(0),
      O => \pc_reg[0]_8\
    );
\iesire_mux1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFEE"
    )
        port map (
      I0 => \iesire_mux1[1]_i_2_n_0\,
      I1 => \iesire_mux1_reg[1]\,
      I2 => \iesire_mux1[1]_i_4_n_0\,
      I3 => \iesire_mux1_reg[2]\,
      I4 => \iesire_mux1[1]_i_5_n_0\,
      I5 => \iesire_mux1[1]_i_6_n_0\,
      O => D(1)
    );
\iesire_mux1[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000041008000"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => pc_reg_rep(3),
      I2 => pc_reg_rep(1),
      I3 => reg_file_reg_r1_0_7_0_5_i_17_n_0,
      I4 => pc_reg_rep(2),
      I5 => \iesire_mux1[1]_i_5_0\,
      O => \iesire_mux1[1]_i_10_n_0\
    );
\iesire_mux1[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F5533000F5533FF"
    )
        port map (
      I0 => \^data1\(5),
      I1 => rd1(5),
      I2 => RD2(5),
      I3 => sw_IBUF(2),
      I4 => sw_IBUF(1),
      I5 => \^pc_reg[0]_0\(4),
      O => \pc_reg[8]_0\
    );
\iesire_mux1[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88AAAA8A888A88"
    )
        port map (
      I0 => \iesire_mux1_reg[2]_1\,
      I1 => \iesire_mux1[3]_i_9_n_0\,
      I2 => \iesire_mux1[3]_i_10_n_0\,
      I3 => Q(13),
      I4 => \iesire_mux1[3]_i_11_n_0\,
      I5 => reg_file_reg_r1_0_7_12_15_i_5_n_0,
      O => \iesire_mux1[1]_i_2_n_0\
    );
\iesire_mux1[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3555303035553F3F"
    )
        port map (
      I0 => \^pc_reg[1]_0\,
      I1 => Q(1),
      I2 => sw_IBUF(2),
      I3 => reg_file_reg_r1_0_7_0_5_i_14_n_0,
      I4 => sw_IBUF(1),
      I5 => \^pc_reg[0]_0\(1),
      O => \iesire_mux1[1]_i_4_n_0\
    );
\iesire_mux1[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88AAAA8A888A88"
    )
        port map (
      I0 => \iesire_mux1_reg[0]\,
      I1 => \iesire_mux1[1]_i_10_n_0\,
      I2 => \iesire_mux1[3]_i_10_n_0\,
      I3 => Q(5),
      I4 => \iesire_mux1[3]_i_11_n_0\,
      I5 => reg_file_reg_r1_0_7_0_5_i_15_n_0,
      O => \iesire_mux1[1]_i_5_n_0\
    );
\iesire_mux1[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88AAAA8A888A88"
    )
        port map (
      I0 => \iesire_mux1_reg[2]_2\,
      I1 => \iesire_mux1[3]_i_9_n_0\,
      I2 => \iesire_mux1[3]_i_10_n_0\,
      I3 => Q(9),
      I4 => \iesire_mux1[3]_i_11_n_0\,
      I5 => reg_file_reg_r1_0_7_6_11_i_9_n_0,
      O => \iesire_mux1[1]_i_6_n_0\
    );
\iesire_mux1[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F5533000F5533FF"
    )
        port map (
      I0 => \^data1\(1),
      I1 => rd1(1),
      I2 => RD2(1),
      I3 => sw_IBUF(2),
      I4 => sw_IBUF(1),
      I5 => \^pc_reg[0]_0\(1),
      O => \pc_reg[0]_5\
    );
\iesire_mux1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF2"
    )
        port map (
      I0 => \iesire_mux1_reg[2]\,
      I1 => \iesire_mux1[2]_i_2_n_0\,
      I2 => \iesire_mux1[2]_i_3_n_0\,
      I3 => \iesire_mux1[2]_i_4_n_0\,
      I4 => \iesire_mux1_reg[2]_0\,
      I5 => \iesire_mux1[2]_i_6_n_0\,
      O => D(2)
    );
\iesire_mux1[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F5533000F5533FF"
    )
        port map (
      I0 => \^data1\(2),
      I1 => rd1(2),
      I2 => RD2(2),
      I3 => sw_IBUF(2),
      I4 => sw_IBUF(1),
      I5 => InstrOut(2),
      O => \pc_reg[0]_7\
    );
\iesire_mux1[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3555303035553F3F"
    )
        port map (
      I0 => \^pc_reg[0]_1\,
      I1 => Q(2),
      I2 => sw_IBUF(2),
      I3 => reg_file_reg_r1_0_7_0_5_i_14_n_0,
      I4 => sw_IBUF(1),
      I5 => InstrOut(2),
      O => \iesire_mux1[2]_i_2_n_0\
    );
\iesire_mux1[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88AAAA8A888A88"
    )
        port map (
      I0 => \iesire_mux1_reg[0]\,
      I1 => \iesire_mux1[2]_i_7_n_0\,
      I2 => \iesire_mux1[3]_i_10_n_0\,
      I3 => Q(6),
      I4 => \iesire_mux1[3]_i_11_n_0\,
      I5 => reg_file_reg_r1_0_7_6_11_i_8_n_0,
      O => \iesire_mux1[2]_i_3_n_0\
    );
\iesire_mux1[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88AAAA8A888A88"
    )
        port map (
      I0 => \iesire_mux1_reg[2]_1\,
      I1 => \iesire_mux1[3]_i_9_n_0\,
      I2 => \iesire_mux1[3]_i_10_n_0\,
      I3 => Q(14),
      I4 => \iesire_mux1[3]_i_11_n_0\,
      I5 => reg_file_reg_r1_0_7_12_15_i_8_n_0,
      O => \iesire_mux1[2]_i_4_n_0\
    );
\iesire_mux1[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88AAAA8A888A88"
    )
        port map (
      I0 => \iesire_mux1_reg[2]_2\,
      I1 => \iesire_mux1[3]_i_9_n_0\,
      I2 => \iesire_mux1[3]_i_10_n_0\,
      I3 => Q(10),
      I4 => \iesire_mux1[3]_i_11_n_0\,
      I5 => reg_file_reg_r1_0_7_6_11_i_12_n_0,
      O => \iesire_mux1[2]_i_6_n_0\
    );
\iesire_mux1[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^pc_reg[0]_0\(5),
      I1 => sw_IBUF(2),
      I2 => sw_IBUF(1),
      O => \iesire_mux1[2]_i_7_n_0\
    );
\iesire_mux1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFEE"
    )
        port map (
      I0 => \iesire_mux1[3]_i_2_n_0\,
      I1 => \iesire_mux1_reg[3]\,
      I2 => \iesire_mux1[3]_i_4_n_0\,
      I3 => \iesire_mux1_reg[2]\,
      I4 => \iesire_mux1[3]_i_6_n_0\,
      I5 => \iesire_mux1[3]_i_7_n_0\,
      O => D(3)
    );
\iesire_mux1[3]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2F"
    )
        port map (
      I0 => sw_IBUF(1),
      I1 => reg_file_reg_r1_0_7_0_5_i_14_n_0,
      I2 => sw_IBUF(2),
      O => \iesire_mux1[3]_i_10_n_0\
    );
\iesire_mux1[3]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => reg_file_reg_r1_0_7_0_5_i_14_n_0,
      I1 => sw_IBUF(2),
      I2 => sw_IBUF(1),
      O => \iesire_mux1[3]_i_11_n_0\
    );
\iesire_mux1[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88AAAA8A888A88"
    )
        port map (
      I0 => \iesire_mux1_reg[2]_1\,
      I1 => \iesire_mux1[3]_i_9_n_0\,
      I2 => \iesire_mux1[3]_i_10_n_0\,
      I3 => Q(15),
      I4 => \iesire_mux1[3]_i_11_n_0\,
      I5 => reg_file_reg_r1_0_7_12_15_i_7_n_0,
      O => \iesire_mux1[3]_i_2_n_0\
    );
\iesire_mux1[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3555303035553F3F"
    )
        port map (
      I0 => \^pc_reg[0]_2\,
      I1 => Q(3),
      I2 => sw_IBUF(2),
      I3 => reg_file_reg_r1_0_7_0_5_i_14_n_0,
      I4 => sw_IBUF(1),
      I5 => \^pc_reg[0]_0\(2),
      O => \iesire_mux1[3]_i_4_n_0\
    );
\iesire_mux1[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88AAAA8A888A88"
    )
        port map (
      I0 => \iesire_mux1_reg[0]\,
      I1 => \iesire_mux1[3]_i_9_n_0\,
      I2 => \iesire_mux1[3]_i_10_n_0\,
      I3 => Q(7),
      I4 => \iesire_mux1[3]_i_11_n_0\,
      I5 => reg_file_reg_r1_0_7_6_11_i_7_n_0,
      O => \iesire_mux1[3]_i_6_n_0\
    );
\iesire_mux1[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88AAAA8A888A88"
    )
        port map (
      I0 => \iesire_mux1_reg[2]_2\,
      I1 => \iesire_mux1[3]_i_9_n_0\,
      I2 => \iesire_mux1[3]_i_10_n_0\,
      I3 => Q(11),
      I4 => \iesire_mux1[3]_i_11_n_0\,
      I5 => reg_file_reg_r1_0_7_6_11_i_11_n_0,
      O => \iesire_mux1[3]_i_7_n_0\
    );
\iesire_mux1[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \led_OBUF[7]_inst_i_2_n_0\,
      I1 => sw_IBUF(1),
      I2 => sw_IBUF(2),
      I3 => \^pc_reg[0]_0\(5),
      O => \iesire_mux1[3]_i_9_n_0\
    );
\led_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9CBD"
    )
        port map (
      I0 => sw_IBUF(0),
      I1 => \^pc_reg[0]_0\(12),
      I2 => \^pc_reg[0]_0\(13),
      I3 => \^pc_reg[0]_0\(14),
      O => led_OBUF(0)
    );
\led_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => sw_IBUF(0),
      I1 => \^pc_reg[0]_0\(12),
      I2 => \^pc_reg[0]_0\(13),
      I3 => \^pc_reg[0]_0\(14),
      O => led_OBUF(1)
    );
\led_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2212200C00000000"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => pc_reg_rep(4),
      I2 => pc_reg_rep(1),
      I3 => pc_reg_rep(2),
      I4 => pc_reg_rep(3),
      I5 => ram_mem_reg_0_15_0_0_i_6_n_0,
      O => \^pc_reg[0]_0\(12)
    );
\led_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20101000000000F0"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => pc_reg_rep(4),
      I2 => ram_mem_reg_0_15_0_0_i_6_n_0,
      I3 => pc_reg_rep(3),
      I4 => pc_reg_rep(2),
      I5 => pc_reg_rep(1),
      O => \^pc_reg[0]_0\(13)
    );
\led_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \led_OBUF[4]_inst_i_2_n_0\,
      I1 => \^pc_reg[0]_0\(14),
      I2 => sw_IBUF(0),
      I3 => \^memwrite\,
      O => led_OBUF(2)
    );
\led_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_reg[0]_6\,
      I1 => sw_IBUF(0),
      O => led_OBUF(3)
    );
\led_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000040"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => pc_reg_rep(4),
      I2 => ram_mem_reg_0_15_0_0_i_6_n_0,
      I3 => pc_reg_rep(3),
      I4 => pc_reg_rep(2),
      I5 => pc_reg_rep(1),
      O => \^pc_reg[0]_6\
    );
\led_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \led_OBUF[4]_inst_i_2_n_0\,
      I1 => \^pc_reg[0]_0\(14),
      I2 => sw_IBUF(0),
      O => led_OBUF(4)
    );
\led_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100D90001002900"
    )
        port map (
      I0 => pc_reg_rep(1),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(3),
      I3 => ram_mem_reg_0_15_0_0_i_6_n_0,
      I4 => pc_reg_rep(4),
      I5 => pc_reg_rep(0),
      O => \led_OBUF[4]_inst_i_2_n_0\
    );
\led_OBUF[4]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000024640000"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => pc_reg_rep(3),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(1),
      I4 => ram_mem_reg_0_15_0_0_i_6_n_0,
      I5 => pc_reg_rep(4),
      O => \^pc_reg[0]_0\(14)
    );
\led_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pc_reg[1]_2\,
      I1 => sw_IBUF(0),
      O => led_OBUF(5)
    );
\led_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100D90000000900"
    )
        port map (
      I0 => pc_reg_rep(1),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(3),
      I3 => ram_mem_reg_0_15_0_0_i_6_n_0,
      I4 => pc_reg_rep(4),
      I5 => pc_reg_rep(0),
      O => \^pc_reg[1]_2\
    );
\led_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \led_OBUF[7]_inst_i_2_n_0\,
      I1 => sw_IBUF(0),
      O => led_OBUF(6)
    );
\led_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sw_IBUF(0),
      I1 => \led_OBUF[7]_inst_i_2_n_0\,
      O => led_OBUF(7)
    );
\led_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20301000302030F0"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => pc_reg_rep(4),
      I2 => ram_mem_reg_0_15_0_0_i_6_n_0,
      I3 => pc_reg_rep(3),
      I4 => pc_reg_rep(2),
      I5 => pc_reg_rep(1),
      O => \led_OBUF[7]_inst_i_2_n_0\
    );
ltOp_carry_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \^pc_reg[0]_0\(0),
      I1 => \^pc_reg[1]_2\,
      I2 => RD2(0),
      O => p_0_in(0)
    );
ltOp_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F1F1F0101011F01"
    )
        port map (
      I0 => \^pc_reg[1]_1\(1),
      I1 => rd1(4),
      I2 => rd1(5),
      I3 => RD2(5),
      I4 => \^pc_reg[1]_2\,
      I5 => \^pc_reg[0]_0\(4),
      O => DI(2)
    );
ltOp_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F1F1F0101011F01"
    )
        port map (
      I0 => \^pc_reg[1]_1\(0),
      I1 => rd1(2),
      I2 => rd1(3),
      I3 => RD2(3),
      I4 => \^pc_reg[1]_2\,
      I5 => \^pc_reg[0]_0\(2),
      O => DI(1)
    );
ltOp_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F1F1F0101011F01"
    )
        port map (
      I0 => p_0_in(0),
      I1 => rd1(0),
      I2 => rd1(1),
      I3 => RD2(1),
      I4 => \^pc_reg[1]_2\,
      I5 => \^pc_reg[0]_0\(1),
      O => DI(0)
    );
ltOp_carry_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \^pc_reg[0]_0\(3),
      I1 => \^pc_reg[1]_2\,
      I2 => RD2(4),
      O => \^pc_reg[1]_1\(1)
    );
\minusOp_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => \^pc_reg[0]_0\(3),
      I1 => \^pc_reg[1]_2\,
      I2 => RD2(4),
      I3 => rd1(4),
      O => \pc_reg[1]_4\(0)
    );
minusOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^pc_reg[1]_1\(0),
      I1 => rd1(2),
      O => reg_file_reg_r1_0_7_0_5(0)
    );
\pc[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^pc_reg[0]_0\(0),
      I1 => \^pc_reg[0]_6\,
      I2 => \pc_reg[15]_0\(0),
      O => Addr1_0(0)
    );
\pc[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"040C04000C000440"
    )
        port map (
      I0 => pc_reg_rep(1),
      I1 => ram_mem_reg_0_15_0_0_i_6_n_0,
      I2 => pc_reg_rep(4),
      I3 => pc_reg_rep(3),
      I4 => pc_reg_rep(0),
      I5 => pc_reg_rep(2),
      O => \^pc_reg[0]_0\(0)
    );
\pc[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^pc_reg[0]_0\(9),
      I1 => \^pc_reg[0]_6\,
      I2 => \pc_reg[15]_0\(10),
      O => Addr1(10)
    );
\pc[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^pc_reg[0]_0\(10),
      I1 => \^pc_reg[0]_6\,
      I2 => \pc_reg[15]_0\(11),
      O => Addr1(11)
    );
\pc[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^pc_reg[0]_0\(11),
      I1 => \^pc_reg[0]_6\,
      I2 => \pc_reg[15]_0\(12),
      O => Addr1(12)
    );
\pc[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data1\(14),
      I1 => \^pc_reg[0]_6\,
      I2 => \pc_reg[15]_0\(13),
      O => Addr1(14)
    );
\pc[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data1\(15),
      I1 => \^pc_reg[0]_6\,
      I2 => \pc_reg[15]_0\(14),
      O => Addr1(15)
    );
\pc[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^pc_reg[0]_0\(1),
      I1 => \^pc_reg[0]_6\,
      I2 => \pc_reg[15]_0\(1),
      O => Addr1_0(1)
    );
\pc[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C0B0E0"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(1),
      I2 => reg_file_reg_r1_0_7_0_5_i_17_n_0,
      I3 => pc_reg_rep(2),
      I4 => pc_reg_rep(0),
      O => \^pc_reg[0]_0\(1)
    );
\pc[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => InstrOut(2),
      I1 => \^pc_reg[0]_6\,
      I2 => \pc_reg[15]_0\(2),
      O => Addr1_0(2)
    );
\pc[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000D000B010C0"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(1),
      I2 => ram_mem_reg_0_15_0_0_i_6_n_0,
      I3 => pc_reg_rep(4),
      I4 => pc_reg_rep(2),
      I5 => pc_reg_rep(0),
      O => InstrOut(2)
    );
\pc[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^pc_reg[0]_0\(2),
      I1 => \^pc_reg[0]_6\,
      I2 => \pc_reg[15]_0\(3),
      O => Addr1_0(3)
    );
\pc[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000004440000"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => pc_reg_rep(3),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(1),
      I4 => ram_mem_reg_0_15_0_0_i_6_n_0,
      I5 => pc_reg_rep(4),
      O => \^pc_reg[0]_0\(2)
    );
\pc[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^pc_reg[0]_0\(3),
      I1 => \^pc_reg[0]_6\,
      I2 => \pc_reg[15]_0\(4),
      O => Addr1_0(4)
    );
\pc[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02880000"
    )
        port map (
      I0 => reg_file_reg_r1_0_7_0_5_i_17_n_0,
      I1 => pc_reg_rep(1),
      I2 => pc_reg_rep(3),
      I3 => pc_reg_rep(2),
      I4 => pc_reg_rep(0),
      O => \^pc_reg[0]_0\(3)
    );
\pc[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^pc_reg[0]_0\(4),
      I1 => \^pc_reg[0]_6\,
      I2 => \pc_reg[15]_0\(5),
      O => Addr1_0(5)
    );
\pc[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40008008"
    )
        port map (
      I0 => pc_reg_rep(2),
      I1 => reg_file_reg_r1_0_7_0_5_i_17_n_0,
      I2 => pc_reg_rep(1),
      I3 => pc_reg_rep(3),
      I4 => pc_reg_rep(0),
      O => \^pc_reg[0]_0\(4)
    );
\pc[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^pc_reg[0]_0\(5),
      I1 => \^pc_reg[0]_6\,
      I2 => \pc_reg[15]_0\(6),
      O => Addr1_0(6)
    );
\pc[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^pc_reg[0]_0\(6),
      I1 => \^pc_reg[0]_6\,
      I2 => \pc_reg[15]_0\(7),
      O => Addr1_0(7)
    );
\pc[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^pc_reg[0]_0\(7),
      I1 => \^pc_reg[0]_6\,
      I2 => \pc_reg[15]_0\(8),
      O => Addr1(8)
    );
\pc[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^pc_reg[0]_0\(8),
      I1 => \^pc_reg[0]_6\,
      I2 => \pc_reg[15]_0\(9),
      O => Addr1(9)
    );
\pc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => btn_divizat,
      CLR => AR(0),
      D => Addr1_0(0),
      Q => pc_reg_rep(0)
    );
\pc_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => btn_divizat,
      CLR => AR(0),
      D => Addr1(10),
      Q => pc(10)
    );
\pc_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => btn_divizat,
      CLR => AR(0),
      D => Addr1(11),
      Q => pc(11)
    );
\pc_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => btn_divizat,
      CLR => AR(0),
      D => Addr1(12),
      Q => pc(12)
    );
\pc_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => btn_divizat,
      CLR => AR(0),
      D => \pc_reg[13]_0\(0),
      Q => pc(13)
    );
\pc_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => btn_divizat,
      CLR => AR(0),
      D => Addr1(14),
      Q => pc(14)
    );
\pc_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => btn_divizat,
      CLR => AR(0),
      D => Addr1(15),
      Q => pc(15)
    );
\pc_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => btn_divizat,
      CLR => AR(0),
      D => Addr1_0(1),
      Q => pc_reg_rep(1)
    );
\pc_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => btn_divizat,
      CLR => AR(0),
      D => Addr1_0(2),
      Q => pc_reg_rep(2)
    );
\pc_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => btn_divizat,
      CLR => AR(0),
      D => Addr1_0(3),
      Q => pc_reg_rep(3)
    );
\pc_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => btn_divizat,
      CLR => AR(0),
      D => Addr1_0(4),
      Q => pc_reg_rep(4)
    );
\pc_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => btn_divizat,
      CLR => AR(0),
      D => Addr1_0(5),
      Q => pc_reg_rep(5)
    );
\pc_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => btn_divizat,
      CLR => AR(0),
      D => Addr1_0(6),
      Q => pc_reg_rep(6)
    );
\pc_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => btn_divizat,
      CLR => AR(0),
      D => Addr1_0(7),
      Q => pc_reg_rep(7)
    );
\pc_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => btn_divizat,
      CLR => AR(0),
      D => Addr1(8),
      Q => pc(8)
    );
\pc_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => btn_divizat,
      CLR => AR(0),
      D => Addr1(9),
      Q => pc(9)
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => pc_reg_rep(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^data1\(4 downto 1),
      S(3 downto 0) => pc_reg_rep(4 downto 1)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^data1\(8 downto 5),
      S(3) => pc(8),
      S(2 downto 0) => pc_reg_rep(7 downto 5)
    );
\plusOp_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA9AAAAAAAA"
    )
        port map (
      I0 => \^data1\(7),
      I1 => plusOp_carry_i_6_n_0,
      I2 => plusOp_carry_i_7_n_0,
      I3 => plusOp_carry_i_8_n_0,
      I4 => plusOp_carry_i_9_n_0,
      I5 => \plusOp_carry__0_i_5_n_0\,
      O => \pc_reg[8]_1\(3)
    );
\plusOp_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA9AAAAAAAA"
    )
        port map (
      I0 => \^data1\(6),
      I1 => plusOp_carry_i_6_n_0,
      I2 => plusOp_carry_i_7_n_0,
      I3 => plusOp_carry_i_8_n_0,
      I4 => plusOp_carry_i_9_n_0,
      I5 => \^pc_reg[0]_0\(5),
      O => \pc_reg[8]_1\(2)
    );
\plusOp_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA9AAAAAAAA"
    )
        port map (
      I0 => \^data1\(5),
      I1 => plusOp_carry_i_6_n_0,
      I2 => plusOp_carry_i_7_n_0,
      I3 => plusOp_carry_i_8_n_0,
      I4 => plusOp_carry_i_9_n_0,
      I5 => \^pc_reg[0]_0\(4),
      O => \pc_reg[8]_1\(1)
    );
\plusOp_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA9AAAAAAAA"
    )
        port map (
      I0 => \^data1\(4),
      I1 => plusOp_carry_i_6_n_0,
      I2 => plusOp_carry_i_7_n_0,
      I3 => plusOp_carry_i_8_n_0,
      I4 => plusOp_carry_i_9_n_0,
      I5 => \^pc_reg[0]_0\(3),
      O => \pc_reg[8]_1\(0)
    );
\plusOp_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"200200008A000000"
    )
        port map (
      I0 => \led_OBUF[7]_inst_i_2_n_0\,
      I1 => pc_reg_rep(0),
      I2 => pc_reg_rep(3),
      I3 => pc_reg_rep(1),
      I4 => reg_file_reg_r1_0_7_0_5_i_17_n_0,
      I5 => pc_reg_rep(2),
      O => \plusOp_carry__0_i_5_n_0\
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^data1\(12 downto 9),
      S(3 downto 0) => pc(12 downto 9)
    );
\plusOp_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA9AAAAAAAA"
    )
        port map (
      I0 => \^data1\(11),
      I1 => plusOp_carry_i_6_n_0,
      I2 => plusOp_carry_i_7_n_0,
      I3 => plusOp_carry_i_8_n_0,
      I4 => plusOp_carry_i_9_n_0,
      I5 => \plusOp_carry__0_i_5_n_0\,
      O => \pc_reg[12]_0\(3)
    );
\plusOp_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA9AAAAAAAA"
    )
        port map (
      I0 => \^data1\(10),
      I1 => plusOp_carry_i_6_n_0,
      I2 => plusOp_carry_i_7_n_0,
      I3 => plusOp_carry_i_8_n_0,
      I4 => plusOp_carry_i_9_n_0,
      I5 => \plusOp_carry__0_i_5_n_0\,
      O => \pc_reg[12]_0\(2)
    );
\plusOp_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA9AAAAAAAA"
    )
        port map (
      I0 => \^data1\(9),
      I1 => plusOp_carry_i_6_n_0,
      I2 => plusOp_carry_i_7_n_0,
      I3 => plusOp_carry_i_8_n_0,
      I4 => plusOp_carry_i_9_n_0,
      I5 => \plusOp_carry__0_i_5_n_0\,
      O => \pc_reg[12]_0\(1)
    );
\plusOp_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA9AAAAAAAA"
    )
        port map (
      I0 => \^data1\(8),
      I1 => plusOp_carry_i_6_n_0,
      I2 => plusOp_carry_i_7_n_0,
      I3 => plusOp_carry_i_8_n_0,
      I4 => plusOp_carry_i_9_n_0,
      I5 => \plusOp_carry__0_i_5_n_0\,
      O => \pc_reg[12]_0\(0)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => \^data1\(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => pc(15 downto 13)
    );
\plusOp_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00010000"
    )
        port map (
      I0 => plusOp_carry_i_6_n_0,
      I1 => plusOp_carry_i_7_n_0,
      I2 => plusOp_carry_i_8_n_0,
      I3 => plusOp_carry_i_9_n_0,
      I4 => \plusOp_carry__0_i_5_n_0\,
      I5 => \^data1\(15),
      O => \pc_reg[0]_9\(3)
    );
\plusOp_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA9AAAAAAAA"
    )
        port map (
      I0 => \^data1\(14),
      I1 => plusOp_carry_i_6_n_0,
      I2 => plusOp_carry_i_7_n_0,
      I3 => plusOp_carry_i_8_n_0,
      I4 => plusOp_carry_i_9_n_0,
      I5 => \plusOp_carry__0_i_5_n_0\,
      O => \pc_reg[0]_9\(2)
    );
\plusOp_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA9AAAAAAAA"
    )
        port map (
      I0 => \^data1\(13),
      I1 => plusOp_carry_i_6_n_0,
      I2 => plusOp_carry_i_7_n_0,
      I3 => plusOp_carry_i_8_n_0,
      I4 => plusOp_carry_i_9_n_0,
      I5 => \plusOp_carry__0_i_5_n_0\,
      O => \pc_reg[0]_9\(1)
    );
\plusOp_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA9AAAAAAAA"
    )
        port map (
      I0 => \^data1\(12),
      I1 => plusOp_carry_i_6_n_0,
      I2 => plusOp_carry_i_7_n_0,
      I3 => plusOp_carry_i_8_n_0,
      I4 => plusOp_carry_i_9_n_0,
      I5 => \plusOp_carry__0_i_5_n_0\,
      O => \pc_reg[0]_9\(0)
    );
plusOp_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pc_reg_rep(0),
      O => \^data1\(0)
    );
plusOp_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA9AAAAAAAA"
    )
        port map (
      I0 => \^data1\(3),
      I1 => plusOp_carry_i_6_n_0,
      I2 => plusOp_carry_i_7_n_0,
      I3 => plusOp_carry_i_8_n_0,
      I4 => plusOp_carry_i_9_n_0,
      I5 => \^pc_reg[0]_0\(2),
      O => S(3)
    );
plusOp_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA9AAAAAAAA"
    )
        port map (
      I0 => \^data1\(2),
      I1 => plusOp_carry_i_6_n_0,
      I2 => plusOp_carry_i_7_n_0,
      I3 => plusOp_carry_i_8_n_0,
      I4 => plusOp_carry_i_9_n_0,
      I5 => InstrOut(2),
      O => S(2)
    );
plusOp_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA9AAAAAAAA"
    )
        port map (
      I0 => \^data1\(1),
      I1 => plusOp_carry_i_6_n_0,
      I2 => plusOp_carry_i_7_n_0,
      I3 => plusOp_carry_i_8_n_0,
      I4 => plusOp_carry_i_9_n_0,
      I5 => \^pc_reg[0]_0\(1),
      O => S(1)
    );
plusOp_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555655555555"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => plusOp_carry_i_6_n_0,
      I2 => plusOp_carry_i_7_n_0,
      I3 => plusOp_carry_i_8_n_0,
      I4 => plusOp_carry_i_9_n_0,
      I5 => \^pc_reg[0]_0\(0),
      O => S(0)
    );
plusOp_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => reg_file_reg_r1_0_7_12_15_i_8_n_0,
      I1 => \led_OBUF[4]_inst_i_2_n_0\,
      I2 => \^pc_reg[0]_0\(14),
      I3 => \^pc_reg[0]_1\,
      I4 => reg_file_reg_r1_0_7_0_5_i_16_n_0,
      I5 => reg_file_reg_r1_0_7_6_11_i_8_n_0,
      O => plusOp_carry_i_6_n_0
    );
plusOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => reg_file_reg_r1_0_7_6_11_i_9_n_0,
      I1 => reg_file_reg_r1_0_7_6_11_i_12_n_0,
      I2 => reg_file_reg_r1_0_7_6_11_i_10_n_0,
      I3 => \^pc_reg[1]_0\,
      O => plusOp_carry_i_7_n_0
    );
plusOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^pc_reg[0]_3\,
      I1 => reg_file_reg_r1_0_7_6_11_i_11_n_0,
      I2 => reg_file_reg_r1_0_7_12_15_i_7_n_0,
      I3 => reg_file_reg_r1_0_7_12_15_i_5_n_0,
      O => plusOp_carry_i_8_n_0
    );
plusOp_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => reg_file_reg_r1_0_7_12_15_i_6_n_0,
      I1 => reg_file_reg_r1_0_7_0_5_i_15_n_0,
      I2 => reg_file_reg_r1_0_7_6_11_i_7_n_0,
      I3 => \^pc_reg[0]_2\,
      O => plusOp_carry_i_9_n_0
    );
ram_mem_reg_0_15_0_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000080"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => pc_reg_rep(4),
      I2 => ram_mem_reg_0_15_0_0_i_6_n_0,
      I3 => pc_reg_rep(3),
      I4 => pc_reg_rep(2),
      I5 => pc_reg_rep(1),
      O => \^memwrite\
    );
ram_mem_reg_0_15_0_0_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => ram_mem_reg_0_15_0_0_i_22_n_0,
      I1 => CO(0),
      I2 => ram_mem_reg_0_15_0_0_i_23_n_0,
      I3 => ram_mem_reg_0_15_0_0_i_24_n_0,
      O => ram_mem_reg_0_15_0_0_i_10_n_0
    );
ram_mem_reg_0_15_0_0_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000056A6"
    )
        port map (
      I0 => rd1(0),
      I1 => RD2(0),
      I2 => \^pc_reg[1]_2\,
      I3 => \^pc_reg[0]_0\(0),
      I4 => \^pc_reg[0]_4\,
      O => ram_mem_reg_0_15_0_0_i_11_n_0
    );
ram_mem_reg_0_15_0_0_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000056A6"
    )
        port map (
      I0 => rd1(1),
      I1 => RD2(1),
      I2 => \^pc_reg[1]_2\,
      I3 => \^pc_reg[0]_0\(1),
      I4 => \^pc_reg[0]_4\,
      O => ram_mem_reg_0_15_0_0_i_12_n_0
    );
ram_mem_reg_0_15_0_0_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBCEFFFFF"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => pc_reg_rep(3),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(1),
      I4 => ram_mem_reg_0_15_0_0_i_6_n_0,
      I5 => pc_reg_rep(4),
      O => \^pc_reg[0]_4\
    );
ram_mem_reg_0_15_0_0_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002A2"
    )
        port map (
      I0 => rd1(2),
      I1 => RD2(2),
      I2 => \^pc_reg[1]_2\,
      I3 => InstrOut(2),
      I4 => \^pc_reg[0]_4\,
      O => ram_mem_reg_0_15_0_0_i_14_n_0
    );
ram_mem_reg_0_15_0_0_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22F2"
    )
        port map (
      I0 => data0(2),
      I1 => ram_mem_reg_0_15_0_0_i_7_n_0,
      I2 => O(2),
      I3 => ram_mem_reg_0_15_0_0_i_9_n_0,
      O => ram_mem_reg_0_15_0_0_i_15_n_0
    );
ram_mem_reg_0_15_0_0_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => InstrOut(2),
      I1 => \^pc_reg[1]_2\,
      I2 => RD2(2),
      O => \^pc_reg[1]_1\(0)
    );
ram_mem_reg_0_15_0_0_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000056A6"
    )
        port map (
      I0 => rd1(3),
      I1 => RD2(3),
      I2 => \^pc_reg[1]_2\,
      I3 => \^pc_reg[0]_0\(2),
      I4 => \^pc_reg[0]_4\,
      O => ram_mem_reg_0_15_0_0_i_17_n_0
    );
ram_mem_reg_0_15_0_0_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \^pc_reg[0]_0\(2),
      I1 => \^pc_reg[1]_2\,
      I2 => RD2(3),
      I3 => rd1(3),
      O => \pc_reg[0]_10\(2)
    );
ram_mem_reg_0_15_0_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4F44"
    )
        port map (
      I0 => ram_mem_reg_0_15_0_0_i_7_n_0,
      I1 => data0(0),
      I2 => ram_mem_reg_0_15_0_0_i_9_n_0,
      I3 => O(0),
      I4 => ram_mem_reg_0_15_0_0_i_10_n_0,
      I5 => ram_mem_reg_0_15_0_0_i_11_n_0,
      O => \^pc_reg[0]_3\
    );
ram_mem_reg_0_15_0_0_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \^pc_reg[0]_0\(1),
      I1 => \^pc_reg[1]_2\,
      I2 => RD2(1),
      I3 => rd1(1),
      O => \pc_reg[0]_10\(1)
    );
ram_mem_reg_0_15_0_0_i_21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \^pc_reg[0]_0\(0),
      I1 => \^pc_reg[1]_2\,
      I2 => RD2(0),
      I3 => rd1(0),
      O => \pc_reg[0]_10\(0)
    );
ram_mem_reg_0_15_0_0_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040404040000440"
    )
        port map (
      I0 => pc_reg_rep(4),
      I1 => ram_mem_reg_0_15_0_0_i_6_n_0,
      I2 => pc_reg_rep(1),
      I3 => pc_reg_rep(2),
      I4 => pc_reg_rep(3),
      I5 => pc_reg_rep(0),
      O => ram_mem_reg_0_15_0_0_i_22_n_0
    );
ram_mem_reg_0_15_0_0_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9FFFFFFFCFFFBFF"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(4),
      I3 => ram_mem_reg_0_15_0_0_i_6_n_0,
      I4 => pc_reg_rep(1),
      I5 => pc_reg_rep(3),
      O => ram_mem_reg_0_15_0_0_i_23_n_0
    );
ram_mem_reg_0_15_0_0_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000240000005000"
    )
        port map (
      I0 => pc_reg_rep(1),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(3),
      I3 => ram_mem_reg_0_15_0_0_i_6_n_0,
      I4 => pc_reg_rep(4),
      I5 => pc_reg_rep(0),
      O => ram_mem_reg_0_15_0_0_i_24_n_0
    );
ram_mem_reg_0_15_0_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4F44"
    )
        port map (
      I0 => ram_mem_reg_0_15_0_0_i_9_n_0,
      I1 => O(1),
      I2 => ram_mem_reg_0_15_0_0_i_7_n_0,
      I3 => data0(1),
      I4 => ram_mem_reg_0_15_0_0_i_12_n_0,
      O => \^pc_reg[1]_0\
    );
ram_mem_reg_0_15_0_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF0FFF1"
    )
        port map (
      I0 => \^pc_reg[0]_4\,
      I1 => rd1(2),
      I2 => ram_mem_reg_0_15_0_0_i_14_n_0,
      I3 => ram_mem_reg_0_15_0_0_i_15_n_0,
      I4 => \^pc_reg[1]_1\(0),
      O => \^pc_reg[0]_1\
    );
ram_mem_reg_0_15_0_0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4F44"
    )
        port map (
      I0 => ram_mem_reg_0_15_0_0_i_7_n_0,
      I1 => data0(3),
      I2 => ram_mem_reg_0_15_0_0_i_9_n_0,
      I3 => O(3),
      I4 => ram_mem_reg_0_15_0_0_i_17_n_0,
      O => \^pc_reg[0]_2\
    );
ram_mem_reg_0_15_0_0_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => pc_reg_rep(6),
      I1 => pc_reg_rep(5),
      I2 => pc_reg_rep(7),
      O => ram_mem_reg_0_15_0_0_i_6_n_0
    );
ram_mem_reg_0_15_0_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"070005000B001C00"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(4),
      I3 => ram_mem_reg_0_15_0_0_i_6_n_0,
      I4 => pc_reg_rep(1),
      I5 => pc_reg_rep(3),
      O => ram_mem_reg_0_15_0_0_i_7_n_0
    );
ram_mem_reg_0_15_0_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFFFFAFFF"
    )
        port map (
      I0 => pc_reg_rep(1),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(3),
      I3 => ram_mem_reg_0_15_0_0_i_6_n_0,
      I4 => pc_reg_rep(4),
      I5 => pc_reg_rep(0),
      O => ram_mem_reg_0_15_0_0_i_9_n_0
    );
reg_file_reg_r1_0_7_0_5_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFF7BFFFEFF8FFF"
    )
        port map (
      I0 => pc_reg_rep(1),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(3),
      I3 => ram_mem_reg_0_15_0_0_i_6_n_0,
      I4 => pc_reg_rep(4),
      I5 => pc_reg_rep(0),
      O => RegWrite
    );
reg_file_reg_r1_0_7_0_5_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => pc_reg_rep(1),
      I1 => pc_reg_rep(7),
      I2 => pc_reg_rep(5),
      I3 => pc_reg_rep(6),
      I4 => pc_reg_rep(4),
      I5 => pc_reg_rep(0),
      O => \^pc_reg[0]_0\(9)
    );
reg_file_reg_r1_0_7_0_5_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^pc_reg[0]_0\(8),
      I1 => \led_OBUF[7]_inst_i_2_n_0\,
      I2 => \^pc_reg[0]_0\(5),
      O => ADDRD(2)
    );
reg_file_reg_r1_0_7_0_5_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000802040A08040"
    )
        port map (
      I0 => \led_OBUF[7]_inst_i_2_n_0\,
      I1 => pc_reg_rep(2),
      I2 => reg_file_reg_r1_0_7_0_5_i_17_n_0,
      I3 => pc_reg_rep(1),
      I4 => pc_reg_rep(3),
      I5 => pc_reg_rep(0),
      O => ADDRD(1)
    );
reg_file_reg_r1_0_7_0_5_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2030202010001090"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => pc_reg_rep(4),
      I2 => ram_mem_reg_0_15_0_0_i_6_n_0,
      I3 => pc_reg_rep(3),
      I4 => pc_reg_rep(2),
      I5 => pc_reg_rep(1),
      O => ADDRD(0)
    );
reg_file_reg_r1_0_7_0_5_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000030"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => pc_reg_rep(4),
      I2 => ram_mem_reg_0_15_0_0_i_6_n_0,
      I3 => pc_reg_rep(3),
      I4 => pc_reg_rep(2),
      I5 => pc_reg_rep(1),
      O => reg_file_reg_r1_0_7_0_5_i_14_n_0
    );
reg_file_reg_r1_0_7_0_5_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4F44"
    )
        port map (
      I0 => ram_mem_reg_0_15_0_0_i_7_n_0,
      I1 => data0(5),
      I2 => ram_mem_reg_0_15_0_0_i_9_n_0,
      I3 => plusOp_carry_i_9_0(1),
      I4 => reg_file_reg_r1_0_7_0_5_i_20_n_0,
      O => reg_file_reg_r1_0_7_0_5_i_15_n_0
    );
reg_file_reg_r1_0_7_0_5_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF22F2"
    )
        port map (
      I0 => data0(4),
      I1 => ram_mem_reg_0_15_0_0_i_7_n_0,
      I2 => plusOp_carry_i_9_0(0),
      I3 => ram_mem_reg_0_15_0_0_i_9_n_0,
      I4 => reg_file_reg_r1_0_7_0_5_i_21_n_0,
      I5 => reg_file_reg_r1_0_7_0_5_i_22_n_0,
      O => reg_file_reg_r1_0_7_0_5_i_16_n_0
    );
reg_file_reg_r1_0_7_0_5_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => pc_reg_rep(7),
      I1 => pc_reg_rep(5),
      I2 => pc_reg_rep(6),
      I3 => pc_reg_rep(4),
      O => reg_file_reg_r1_0_7_0_5_i_17_n_0
    );
reg_file_reg_r1_0_7_0_5_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40408048"
    )
        port map (
      I0 => pc_reg_rep(2),
      I1 => reg_file_reg_r1_0_7_0_5_i_17_n_0,
      I2 => pc_reg_rep(1),
      I3 => pc_reg_rep(3),
      I4 => pc_reg_rep(0),
      O => \^pc_reg[0]_0\(5)
    );
reg_file_reg_r1_0_7_0_5_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(1),
      I1 => reg_file_reg_r1_0_7_0_5_i_14_n_0,
      I2 => \^pc_reg[1]_0\,
      O => wd(1)
    );
reg_file_reg_r1_0_7_0_5_i_20: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000056A6"
    )
        port map (
      I0 => rd1(5),
      I1 => RD2(5),
      I2 => \^pc_reg[1]_2\,
      I3 => \^pc_reg[0]_0\(4),
      I4 => \^pc_reg[0]_4\,
      O => reg_file_reg_r1_0_7_0_5_i_20_n_0
    );
reg_file_reg_r1_0_7_0_5_i_21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002A2"
    )
        port map (
      I0 => rd1(4),
      I1 => RD2(4),
      I2 => \^pc_reg[1]_2\,
      I3 => \^pc_reg[0]_0\(3),
      I4 => \^pc_reg[0]_4\,
      O => reg_file_reg_r1_0_7_0_5_i_21_n_0
    );
reg_file_reg_r1_0_7_0_5_i_22: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => RD2(4),
      I1 => \^pc_reg[1]_2\,
      I2 => \^pc_reg[0]_0\(3),
      I3 => rd1(4),
      I4 => \^pc_reg[0]_4\,
      O => reg_file_reg_r1_0_7_0_5_i_22_n_0
    );
reg_file_reg_r1_0_7_0_5_i_25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \^pc_reg[0]_0\(4),
      I1 => \^pc_reg[1]_2\,
      I2 => RD2(5),
      I3 => rd1(5),
      O => \pc_reg[2]_0\(0)
    );
reg_file_reg_r1_0_7_0_5_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(0),
      I1 => reg_file_reg_r1_0_7_0_5_i_14_n_0,
      I2 => \^pc_reg[0]_3\,
      O => wd(0)
    );
reg_file_reg_r1_0_7_0_5_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(3),
      I1 => reg_file_reg_r1_0_7_0_5_i_14_n_0,
      I2 => \^pc_reg[0]_2\,
      O => wd(3)
    );
reg_file_reg_r1_0_7_0_5_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(2),
      I1 => reg_file_reg_r1_0_7_0_5_i_14_n_0,
      I2 => \^pc_reg[0]_1\,
      O => wd(2)
    );
reg_file_reg_r1_0_7_0_5_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(5),
      I1 => reg_file_reg_r1_0_7_0_5_i_14_n_0,
      I2 => reg_file_reg_r1_0_7_0_5_i_15_n_0,
      O => wd(5)
    );
reg_file_reg_r1_0_7_0_5_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(4),
      I1 => reg_file_reg_r1_0_7_0_5_i_14_n_0,
      I2 => reg_file_reg_r1_0_7_0_5_i_16_n_0,
      O => wd(4)
    );
reg_file_reg_r1_0_7_0_5_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C8040C0"
    )
        port map (
      I0 => pc_reg_rep(2),
      I1 => reg_file_reg_r1_0_7_0_5_i_17_n_0,
      I2 => pc_reg_rep(1),
      I3 => pc_reg_rep(0),
      I4 => pc_reg_rep(3),
      O => \^pc_reg[0]_0\(11)
    );
reg_file_reg_r1_0_7_0_5_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74008000"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(0),
      I2 => pc_reg_rep(1),
      I3 => reg_file_reg_r1_0_7_0_5_i_17_n_0,
      I4 => pc_reg_rep(2),
      O => \^pc_reg[0]_0\(10)
    );
reg_file_reg_r1_0_7_12_15_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(13),
      I1 => reg_file_reg_r1_0_7_0_5_i_14_n_0,
      I2 => reg_file_reg_r1_0_7_12_15_i_5_n_0,
      O => wd(13)
    );
reg_file_reg_r1_0_7_12_15_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DD0D"
    )
        port map (
      I0 => data0(15),
      I1 => ram_mem_reg_0_15_0_0_i_7_n_0,
      I2 => reg_file_reg_r1_0_7_12_15_i_7_0(3),
      I3 => ram_mem_reg_0_15_0_0_i_9_n_0,
      O => reg_file_reg_r1_0_7_12_15_i_12_n_0
    );
reg_file_reg_r1_0_7_12_15_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4414"
    )
        port map (
      I0 => \^pc_reg[0]_4\,
      I1 => rd1(8),
      I2 => RD2(8),
      I3 => \^pc_reg[1]_2\,
      O => reg_file_reg_r1_0_7_12_15_i_13_n_0
    );
reg_file_reg_r1_0_7_12_15_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(12),
      I1 => reg_file_reg_r1_0_7_0_5_i_14_n_0,
      I2 => reg_file_reg_r1_0_7_12_15_i_6_n_0,
      O => wd(12)
    );
reg_file_reg_r1_0_7_12_15_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(15),
      I1 => reg_file_reg_r1_0_7_0_5_i_14_n_0,
      I2 => reg_file_reg_r1_0_7_12_15_i_7_n_0,
      O => wd(15)
    );
reg_file_reg_r1_0_7_12_15_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(14),
      I1 => reg_file_reg_r1_0_7_0_5_i_14_n_0,
      I2 => reg_file_reg_r1_0_7_12_15_i_8_n_0,
      O => wd(14)
    );
reg_file_reg_r1_0_7_12_15_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => ram_mem_reg_0_15_0_0_i_9_n_0,
      I1 => reg_file_reg_r1_0_7_12_15_i_7_0(1),
      I2 => plusOp_carry_i_8_0,
      I3 => data0(13),
      I4 => ram_mem_reg_0_15_0_0_i_7_n_0,
      O => reg_file_reg_r1_0_7_12_15_i_5_n_0
    );
reg_file_reg_r1_0_7_12_15_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FFF4F4"
    )
        port map (
      I0 => ram_mem_reg_0_15_0_0_i_9_n_0,
      I1 => reg_file_reg_r1_0_7_12_15_i_7_0(0),
      I2 => plusOp_carry_i_9_2,
      I3 => ram_mem_reg_0_15_0_0_i_7_n_0,
      I4 => data0(12),
      O => reg_file_reg_r1_0_7_12_15_i_6_n_0
    );
reg_file_reg_r1_0_7_12_15_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B4FFFF"
    )
        port map (
      I0 => \^pc_reg[1]_2\,
      I1 => RD2(9),
      I2 => rd1(9),
      I3 => \^pc_reg[0]_4\,
      I4 => reg_file_reg_r1_0_7_12_15_i_12_n_0,
      O => reg_file_reg_r1_0_7_12_15_i_7_n_0
    );
reg_file_reg_r1_0_7_12_15_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FFF4F4"
    )
        port map (
      I0 => ram_mem_reg_0_15_0_0_i_9_n_0,
      I1 => reg_file_reg_r1_0_7_12_15_i_7_0(2),
      I2 => reg_file_reg_r1_0_7_12_15_i_13_n_0,
      I3 => ram_mem_reg_0_15_0_0_i_7_n_0,
      I4 => data0(14),
      O => reg_file_reg_r1_0_7_12_15_i_8_n_0
    );
reg_file_reg_r1_0_7_6_11_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(7),
      I1 => reg_file_reg_r1_0_7_0_5_i_14_n_0,
      I2 => reg_file_reg_r1_0_7_6_11_i_7_n_0,
      O => wd(7)
    );
reg_file_reg_r1_0_7_6_11_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FFF4F4"
    )
        port map (
      I0 => ram_mem_reg_0_15_0_0_i_9_n_0,
      I1 => reg_file_reg_r1_0_7_6_11_i_5_0(0),
      I2 => reg_file_reg_r1_0_7_6_11_i_17_n_0,
      I3 => ram_mem_reg_0_15_0_0_i_7_n_0,
      I4 => data0(8),
      O => reg_file_reg_r1_0_7_6_11_i_10_n_0
    );
reg_file_reg_r1_0_7_6_11_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => ram_mem_reg_0_15_0_0_i_7_n_0,
      I1 => data0(11),
      I2 => reg_file_reg_r1_0_7_6_11_i_5_1,
      I3 => reg_file_reg_r1_0_7_6_11_i_5_0(3),
      I4 => ram_mem_reg_0_15_0_0_i_9_n_0,
      O => reg_file_reg_r1_0_7_6_11_i_11_n_0
    );
reg_file_reg_r1_0_7_6_11_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4F44"
    )
        port map (
      I0 => ram_mem_reg_0_15_0_0_i_7_n_0,
      I1 => data0(10),
      I2 => ram_mem_reg_0_15_0_0_i_9_n_0,
      I3 => reg_file_reg_r1_0_7_6_11_i_5_0(2),
      I4 => reg_file_reg_r1_0_7_6_11_i_6_0,
      O => reg_file_reg_r1_0_7_6_11_i_12_n_0
    );
reg_file_reg_r1_0_7_6_11_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22F2"
    )
        port map (
      I0 => plusOp_carry_i_9_0(2),
      I1 => ram_mem_reg_0_15_0_0_i_9_n_0,
      I2 => data0(6),
      I3 => ram_mem_reg_0_15_0_0_i_7_n_0,
      O => reg_file_reg_r1_0_7_6_11_i_14_n_0
    );
reg_file_reg_r1_0_7_6_11_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4414"
    )
        port map (
      I0 => \^pc_reg[0]_4\,
      I1 => rd1(7),
      I2 => RD2(7),
      I3 => \^pc_reg[1]_2\,
      O => reg_file_reg_r1_0_7_6_11_i_17_n_0
    );
reg_file_reg_r1_0_7_6_11_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(6),
      I1 => reg_file_reg_r1_0_7_0_5_i_14_n_0,
      I2 => reg_file_reg_r1_0_7_6_11_i_8_n_0,
      O => wd(6)
    );
reg_file_reg_r1_0_7_6_11_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(9),
      I1 => reg_file_reg_r1_0_7_0_5_i_14_n_0,
      I2 => reg_file_reg_r1_0_7_6_11_i_9_n_0,
      O => wd(9)
    );
reg_file_reg_r1_0_7_6_11_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(8),
      I1 => reg_file_reg_r1_0_7_0_5_i_14_n_0,
      I2 => reg_file_reg_r1_0_7_6_11_i_10_n_0,
      O => wd(8)
    );
reg_file_reg_r1_0_7_6_11_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(11),
      I1 => reg_file_reg_r1_0_7_0_5_i_14_n_0,
      I2 => reg_file_reg_r1_0_7_6_11_i_11_n_0,
      O => wd(11)
    );
reg_file_reg_r1_0_7_6_11_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(10),
      I1 => reg_file_reg_r1_0_7_0_5_i_14_n_0,
      I2 => reg_file_reg_r1_0_7_6_11_i_12_n_0,
      O => wd(10)
    );
reg_file_reg_r1_0_7_6_11_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4F44"
    )
        port map (
      I0 => ram_mem_reg_0_15_0_0_i_7_n_0,
      I1 => data0(7),
      I2 => ram_mem_reg_0_15_0_0_i_9_n_0,
      I3 => plusOp_carry_i_9_0(3),
      I4 => plusOp_carry_i_9_1,
      O => reg_file_reg_r1_0_7_6_11_i_7_n_0
    );
reg_file_reg_r1_0_7_6_11_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF00D2"
    )
        port map (
      I0 => RD2(6),
      I1 => \^pc_reg[1]_2\,
      I2 => rd1(6),
      I3 => \^pc_reg[0]_4\,
      I4 => reg_file_reg_r1_0_7_6_11_i_14_n_0,
      O => reg_file_reg_r1_0_7_6_11_i_8_n_0
    );
reg_file_reg_r1_0_7_6_11_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4F44"
    )
        port map (
      I0 => ram_mem_reg_0_15_0_0_i_7_n_0,
      I1 => data0(9),
      I2 => ram_mem_reg_0_15_0_0_i_9_n_0,
      I3 => reg_file_reg_r1_0_7_6_11_i_5_0(1),
      I4 => plusOp_carry_i_7_0,
      O => reg_file_reg_r1_0_7_6_11_i_9_n_0
    );
reg_file_reg_r2_0_7_0_5_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"040C0C000C480408"
    )
        port map (
      I0 => pc_reg_rep(1),
      I1 => ram_mem_reg_0_15_0_0_i_6_n_0,
      I2 => pc_reg_rep(4),
      I3 => pc_reg_rep(3),
      I4 => pc_reg_rep(0),
      I5 => pc_reg_rep(2),
      O => \^pc_reg[0]_0\(8)
    );
reg_file_reg_r2_0_7_0_5_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4000600"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => pc_reg_rep(3),
      I2 => pc_reg_rep(1),
      I3 => reg_file_reg_r1_0_7_0_5_i_17_n_0,
      I4 => pc_reg_rep(2),
      O => \^pc_reg[0]_0\(7)
    );
reg_file_reg_r2_0_7_0_5_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000304000302030"
    )
        port map (
      I0 => pc_reg_rep(2),
      I1 => pc_reg_rep(4),
      I2 => ram_mem_reg_0_15_0_0_i_6_n_0,
      I3 => pc_reg_rep(1),
      I4 => pc_reg_rep(3),
      I5 => pc_reg_rep(0),
      O => \^pc_reg[0]_0\(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_env is
  port (
    clk : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 );
    led : out STD_LOGIC_VECTOR ( 7 downto 0 );
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cat : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of test_env : entity is true;
end test_env;

architecture STRUCTURE of test_env is
  signal Addr1 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal Debouncer2_n_10 : STD_LOGIC;
  signal Debouncer2_n_11 : STD_LOGIC;
  signal Debouncer2_n_12 : STD_LOGIC;
  signal Debouncer2_n_13 : STD_LOGIC;
  signal Debouncer2_n_3 : STD_LOGIC;
  signal Debouncer2_n_4 : STD_LOGIC;
  signal Debouncer2_n_5 : STD_LOGIC;
  signal Debouncer2_n_6 : STD_LOGIC;
  signal Debouncer2_n_7 : STD_LOGIC;
  signal Debouncer2_n_8 : STD_LOGIC;
  signal Debouncer2_n_9 : STD_LOGIC;
  signal Display_n_0 : STD_LOGIC;
  signal ExecutionUnit_n_15 : STD_LOGIC;
  signal ExecutionUnit_n_16 : STD_LOGIC;
  signal ExecutionUnit_n_17 : STD_LOGIC;
  signal ExecutionUnit_n_18 : STD_LOGIC;
  signal ExecutionUnit_n_19 : STD_LOGIC;
  signal ExecutionUnit_n_20 : STD_LOGIC;
  signal ExecutionUnit_n_21 : STD_LOGIC;
  signal ExecutionUnit_n_22 : STD_LOGIC;
  signal ExecutionUnit_n_23 : STD_LOGIC;
  signal ExecutionUnit_n_24 : STD_LOGIC;
  signal ExecutionUnit_n_25 : STD_LOGIC;
  signal ExecutionUnit_n_26 : STD_LOGIC;
  signal ExecutionUnit_n_27 : STD_LOGIC;
  signal ExecutionUnit_n_28 : STD_LOGIC;
  signal ExecutionUnit_n_29 : STD_LOGIC;
  signal ExecutionUnit_n_30 : STD_LOGIC;
  signal InstrOut : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal InstructionDecode_n_0 : STD_LOGIC;
  signal InstructionDecode_n_1 : STD_LOGIC;
  signal InstructionDecode_n_2 : STD_LOGIC;
  signal InstructionDecode_n_3 : STD_LOGIC;
  signal InstructionDecode_n_36 : STD_LOGIC;
  signal InstructionDecode_n_37 : STD_LOGIC;
  signal InstructionDecode_n_38 : STD_LOGIC;
  signal InstructionDecode_n_39 : STD_LOGIC;
  signal InstructionDecode_n_40 : STD_LOGIC;
  signal InstructionDecode_n_41 : STD_LOGIC;
  signal InstructionDecode_n_42 : STD_LOGIC;
  signal InstructionDecode_n_43 : STD_LOGIC;
  signal InstructionDecode_n_44 : STD_LOGIC;
  signal InstructionDecode_n_45 : STD_LOGIC;
  signal InstructionDecode_n_46 : STD_LOGIC;
  signal InstructionDecode_n_47 : STD_LOGIC;
  signal InstructionDecode_n_48 : STD_LOGIC;
  signal InstructionDecode_n_49 : STD_LOGIC;
  signal InstructionDecode_n_50 : STD_LOGIC;
  signal InstructionDecode_n_51 : STD_LOGIC;
  signal InstructionDecode_n_52 : STD_LOGIC;
  signal InstructionDecode_n_53 : STD_LOGIC;
  signal InstructionDecode_n_54 : STD_LOGIC;
  signal InstructionDecode_n_55 : STD_LOGIC;
  signal InstructionDecode_n_56 : STD_LOGIC;
  signal InstructionDecode_n_57 : STD_LOGIC;
  signal InstructionDecode_n_58 : STD_LOGIC;
  signal InstructionDecode_n_59 : STD_LOGIC;
  signal InstructionDecode_n_60 : STD_LOGIC;
  signal InstructionDecode_n_61 : STD_LOGIC;
  signal InstructionDecode_n_62 : STD_LOGIC;
  signal InstructionDecode_n_79 : STD_LOGIC;
  signal InstructionDecode_n_80 : STD_LOGIC;
  signal InstructionDecode_n_81 : STD_LOGIC;
  signal InstructionDecode_n_82 : STD_LOGIC;
  signal InstructionDecode_n_83 : STD_LOGIC;
  signal InstructionDecode_n_84 : STD_LOGIC;
  signal InstructionDecode_n_85 : STD_LOGIC;
  signal InstructionDecode_n_86 : STD_LOGIC;
  signal InstructionDecode_n_87 : STD_LOGIC;
  signal InstructionDecode_n_88 : STD_LOGIC;
  signal InstructionFetch_n_100 : STD_LOGIC;
  signal InstructionFetch_n_101 : STD_LOGIC;
  signal InstructionFetch_n_102 : STD_LOGIC;
  signal InstructionFetch_n_103 : STD_LOGIC;
  signal InstructionFetch_n_31 : STD_LOGIC;
  signal InstructionFetch_n_32 : STD_LOGIC;
  signal InstructionFetch_n_33 : STD_LOGIC;
  signal InstructionFetch_n_34 : STD_LOGIC;
  signal InstructionFetch_n_35 : STD_LOGIC;
  signal InstructionFetch_n_52 : STD_LOGIC;
  signal InstructionFetch_n_53 : STD_LOGIC;
  signal InstructionFetch_n_54 : STD_LOGIC;
  signal InstructionFetch_n_55 : STD_LOGIC;
  signal InstructionFetch_n_56 : STD_LOGIC;
  signal InstructionFetch_n_57 : STD_LOGIC;
  signal InstructionFetch_n_58 : STD_LOGIC;
  signal InstructionFetch_n_61 : STD_LOGIC;
  signal InstructionFetch_n_62 : STD_LOGIC;
  signal InstructionFetch_n_63 : STD_LOGIC;
  signal InstructionFetch_n_67 : STD_LOGIC;
  signal InstructionFetch_n_68 : STD_LOGIC;
  signal InstructionFetch_n_77 : STD_LOGIC;
  signal InstructionFetch_n_80 : STD_LOGIC;
  signal InstructionFetch_n_81 : STD_LOGIC;
  signal InstructionFetch_n_82 : STD_LOGIC;
  signal InstructionFetch_n_83 : STD_LOGIC;
  signal InstructionFetch_n_84 : STD_LOGIC;
  signal InstructionFetch_n_85 : STD_LOGIC;
  signal InstructionFetch_n_86 : STD_LOGIC;
  signal InstructionFetch_n_87 : STD_LOGIC;
  signal InstructionFetch_n_88 : STD_LOGIC;
  signal InstructionFetch_n_89 : STD_LOGIC;
  signal InstructionFetch_n_90 : STD_LOGIC;
  signal InstructionFetch_n_91 : STD_LOGIC;
  signal InstructionFetch_n_92 : STD_LOGIC;
  signal InstructionFetch_n_93 : STD_LOGIC;
  signal InstructionFetch_n_94 : STD_LOGIC;
  signal InstructionFetch_n_95 : STD_LOGIC;
  signal InstructionFetch_n_96 : STD_LOGIC;
  signal InstructionFetch_n_97 : STD_LOGIC;
  signal InstructionFetch_n_98 : STD_LOGIC;
  signal InstructionFetch_n_99 : STD_LOGIC;
  signal MemData : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal MemData1 : STD_LOGIC;
  signal RD1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal RD2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal RegWrite : STD_LOGIC;
  signal an_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal btn_IBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cat_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data6 : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal led_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal out1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reset : STD_LOGIC;
  signal sw_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wa : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal wd : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
Debouncer2: entity work.mpg
     port map (
      AR(0) => reset,
      D(3) => Debouncer2_n_7,
      D(2) => Debouncer2_n_8,
      D(1) => Debouncer2_n_9,
      D(0) => Debouncer2_n_10,
      btn_IBUF(0) => btn_IBUF(1),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \cnt_reg[14]_0\ => Debouncer2_n_4,
      \cnt_reg[14]_1\ => Debouncer2_n_6,
      \cnt_reg[14]_2\ => Debouncer2_n_12,
      \cnt_reg[14]_3\ => Debouncer2_n_13,
      \cnt_reg[15]_0\ => Debouncer2_n_3,
      \cnt_reg[15]_1\ => Debouncer2_n_5,
      \cnt_reg[15]_2\ => Debouncer2_n_11,
      eqOp => eqOp,
      \iesire_mux1[0]_i_6_0\ => InstructionFetch_n_81,
      \iesire_mux1[0]_i_6_1\ => InstructionDecode_n_43,
      \iesire_mux1[1]_i_3_0\ => InstructionFetch_n_68,
      \iesire_mux1[1]_i_3_1\ => InstructionDecode_n_40,
      \iesire_mux1[2]_i_5_0\ => InstructionDecode_n_37,
      \iesire_mux1[2]_i_5_1\ => InstructionFetch_n_67,
      \iesire_mux1_reg[0]\ => InstructionFetch_n_80,
      \iesire_mux1_reg[0]_0\ => InstructionDecode_n_38,
      \iesire_mux1_reg[1]\ => InstructionFetch_n_62,
      \iesire_mux1_reg[1]_0\ => InstructionDecode_n_36,
      \iesire_mux1_reg[2]\ => InstructionDecode_n_42,
      \iesire_mux1_reg[2]_0\ => InstructionDecode_n_39,
      p_0_in(1 downto 0) => p_0_in_0(1 downto 0),
      sw_IBUF(0) => sw_IBUF(7)
    );
Display: entity work.SSD
     port map (
      D(3) => InstructionFetch_n_32,
      D(2) => InstructionFetch_n_33,
      D(1) => InstructionFetch_n_34,
      D(0) => InstructionFetch_n_35,
      Q(3 downto 0) => an_OBUF(3 downto 0),
      \an_reg[3]_0\(3) => Debouncer2_n_7,
      \an_reg[3]_0\(2) => Debouncer2_n_8,
      \an_reg[3]_0\(1) => Debouncer2_n_9,
      \an_reg[3]_0\(0) => Debouncer2_n_10,
      cat_OBUF(6 downto 0) => cat_OBUF(6 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \sw[5]\ => Display_n_0,
      sw_IBUF(1 downto 0) => sw_IBUF(6 downto 5)
    );
ExecutionUnit: entity work.execUnit
     port map (
      CO(0) => data6,
      D(0) => Addr1(13),
      DI(3) => InstructionDecode_n_62,
      DI(2) => InstructionFetch_n_56,
      DI(1) => InstructionFetch_n_57,
      DI(0) => InstructionFetch_n_58,
      O(3) => ExecutionUnit_n_15,
      O(2) => ExecutionUnit_n_16,
      O(1) => ExecutionUnit_n_17,
      O(0) => ExecutionUnit_n_18,
      S(3) => InstructionFetch_n_82,
      S(2) => InstructionFetch_n_83,
      S(1) => InstructionFetch_n_84,
      S(0) => InstructionFetch_n_85,
      data1(14 downto 0) => data1(14 downto 0),
      \ltOp_carry__0_0\(3) => InstructionDecode_n_0,
      \ltOp_carry__0_0\(2) => InstructionDecode_n_1,
      \ltOp_carry__0_0\(1) => InstructionDecode_n_2,
      \ltOp_carry__0_0\(0) => InstructionDecode_n_3,
      \minusOp_carry__0_i_4\(3) => ExecutionUnit_n_19,
      \minusOp_carry__0_i_4\(2) => ExecutionUnit_n_20,
      \minusOp_carry__0_i_4\(1) => ExecutionUnit_n_21,
      \minusOp_carry__0_i_4\(0) => ExecutionUnit_n_22,
      \minusOp_carry__1_i_4\(3) => ExecutionUnit_n_23,
      \minusOp_carry__1_i_4\(2) => ExecutionUnit_n_24,
      \minusOp_carry__1_i_4\(1) => ExecutionUnit_n_25,
      \minusOp_carry__1_i_4\(0) => ExecutionUnit_n_26,
      \minusOp_carry__2_i_4\(3) => ExecutionUnit_n_27,
      \minusOp_carry__2_i_4\(2) => ExecutionUnit_n_28,
      \minusOp_carry__2_i_4\(1) => ExecutionUnit_n_29,
      \minusOp_carry__2_i_4\(0) => ExecutionUnit_n_30,
      \pc_reg[11]\(3) => InstructionFetch_n_94,
      \pc_reg[11]\(2) => InstructionFetch_n_95,
      \pc_reg[11]\(1) => InstructionFetch_n_96,
      \pc_reg[11]\(0) => InstructionFetch_n_97,
      \pc_reg[13]\ => InstructionFetch_n_63,
      \pc_reg[15]\(14 downto 13) => out1(15 downto 14),
      \pc_reg[15]\(12 downto 0) => out1(12 downto 0),
      \pc_reg[15]_0\(3) => InstructionFetch_n_90,
      \pc_reg[15]_0\(2) => InstructionFetch_n_91,
      \pc_reg[15]_0\(1) => InstructionFetch_n_92,
      \pc_reg[15]_0\(0) => InstructionFetch_n_93,
      \pc_reg[7]\(3) => InstructionFetch_n_86,
      \pc_reg[7]\(2) => InstructionFetch_n_87,
      \pc_reg[7]\(1) => InstructionFetch_n_88,
      \pc_reg[7]\(0) => InstructionFetch_n_89,
      ram_mem_reg_0_15_0_0_i_10(3) => InstructionDecode_n_54,
      ram_mem_reg_0_15_0_0_i_10(2) => InstructionDecode_n_55,
      ram_mem_reg_0_15_0_0_i_10(1) => InstructionDecode_n_56,
      ram_mem_reg_0_15_0_0_i_10(0) => InstructionDecode_n_57,
      ram_mem_reg_0_15_0_0_i_10_0(3) => InstructionDecode_n_58,
      ram_mem_reg_0_15_0_0_i_10_0(2) => InstructionDecode_n_59,
      ram_mem_reg_0_15_0_0_i_10_0(1) => InstructionDecode_n_60,
      ram_mem_reg_0_15_0_0_i_10_0(0) => InstructionDecode_n_61,
      ram_mem_reg_0_15_0_0_i_2(3) => InstructionDecode_n_79,
      ram_mem_reg_0_15_0_0_i_2(2) => InstructionFetch_n_101,
      ram_mem_reg_0_15_0_0_i_2(1) => InstructionDecode_n_80,
      ram_mem_reg_0_15_0_0_i_2(0) => InstructionDecode_n_81,
      rd1(14 downto 0) => RD1(14 downto 0),
      reg_file_reg_r1_0_7_0_5_i_16(3) => InstructionDecode_n_82,
      reg_file_reg_r1_0_7_0_5_i_16(2) => InstructionDecode_n_83,
      reg_file_reg_r1_0_7_0_5_i_16(1) => InstructionDecode_n_84,
      reg_file_reg_r1_0_7_0_5_i_16(0) => InstructionFetch_n_103,
      reg_file_reg_r1_0_7_12_15_i_6(3) => InstructionDecode_n_50,
      reg_file_reg_r1_0_7_12_15_i_6(2) => InstructionDecode_n_51,
      reg_file_reg_r1_0_7_12_15_i_6(1) => InstructionDecode_n_52,
      reg_file_reg_r1_0_7_12_15_i_6(0) => InstructionDecode_n_53,
      reg_file_reg_r1_0_7_6_11_i_10(3) => InstructionDecode_n_85,
      reg_file_reg_r1_0_7_6_11_i_10(2) => InstructionDecode_n_86,
      reg_file_reg_r1_0_7_6_11_i_10(1) => InstructionDecode_n_87,
      reg_file_reg_r1_0_7_6_11_i_10(0) => InstructionDecode_n_88
    );
InstructionDecode: entity work.IDUnit
     port map (
      ADDRD(2 downto 0) => wa(2 downto 0),
      DI(0) => InstructionDecode_n_62,
      InstrOut(14 downto 2) => InstrOut(15 downto 3),
      InstrOut(1 downto 0) => InstrOut(1 downto 0),
      RD2(15 downto 0) => RD2(15 downto 0),
      RegWrite => RegWrite,
      S(2) => InstructionFetch_n_98,
      S(1) => InstructionFetch_n_99,
      S(0) => InstructionFetch_n_100,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \cnt_reg[15]\ => InstructionDecode_n_41,
      data0(15 downto 0) => data0(15 downto 0),
      data1(10 downto 1) => data1(15 downto 6),
      data1(0) => data1(3),
      ltOp_carry => InstructionFetch_n_61,
      p_0_in(1) => p_0_in(4),
      p_0_in(0) => p_0_in(2),
      p_0_in_0(1 downto 0) => p_0_in_0(1 downto 0),
      \pc_reg[0]\ => InstructionDecode_n_38,
      \pc_reg[0]_0\ => InstructionDecode_n_39,
      \pc_reg[0]_1\ => InstructionDecode_n_40,
      \pc_reg[1]\(3) => InstructionDecode_n_0,
      \pc_reg[1]\(2) => InstructionDecode_n_1,
      \pc_reg[1]\(1) => InstructionDecode_n_2,
      \pc_reg[1]\(0) => InstructionDecode_n_3,
      \pc_reg[1]_0\ => InstructionDecode_n_36,
      \pc_reg[1]_1\ => InstructionDecode_n_42,
      \pc_reg[1]_10\(3) => InstructionDecode_n_58,
      \pc_reg[1]_10\(2) => InstructionDecode_n_59,
      \pc_reg[1]_10\(1) => InstructionDecode_n_60,
      \pc_reg[1]_10\(0) => InstructionDecode_n_61,
      \pc_reg[1]_11\(2) => InstructionDecode_n_79,
      \pc_reg[1]_11\(1) => InstructionDecode_n_80,
      \pc_reg[1]_11\(0) => InstructionDecode_n_81,
      \pc_reg[1]_12\(2) => InstructionDecode_n_82,
      \pc_reg[1]_12\(1) => InstructionDecode_n_83,
      \pc_reg[1]_12\(0) => InstructionDecode_n_84,
      \pc_reg[1]_13\(3) => InstructionDecode_n_85,
      \pc_reg[1]_13\(2) => InstructionDecode_n_86,
      \pc_reg[1]_13\(1) => InstructionDecode_n_87,
      \pc_reg[1]_13\(0) => InstructionDecode_n_88,
      \pc_reg[1]_2\ => InstructionDecode_n_44,
      \pc_reg[1]_3\ => InstructionDecode_n_45,
      \pc_reg[1]_4\ => InstructionDecode_n_46,
      \pc_reg[1]_5\ => InstructionDecode_n_47,
      \pc_reg[1]_6\ => InstructionDecode_n_48,
      \pc_reg[1]_7\ => InstructionDecode_n_49,
      \pc_reg[1]_8\(3) => InstructionDecode_n_50,
      \pc_reg[1]_8\(2) => InstructionDecode_n_51,
      \pc_reg[1]_8\(1) => InstructionDecode_n_52,
      \pc_reg[1]_8\(0) => InstructionDecode_n_53,
      \pc_reg[1]_9\(3) => InstructionDecode_n_54,
      \pc_reg[1]_9\(2) => InstructionDecode_n_55,
      \pc_reg[1]_9\(1) => InstructionDecode_n_56,
      \pc_reg[1]_9\(0) => InstructionDecode_n_57,
      \pc_reg[2]\ => InstructionDecode_n_43,
      \pc_reg[8]\ => InstructionDecode_n_37,
      rd1(15 downto 0) => RD1(15 downto 0),
      reg_file_reg_r1_0_7_0_5_i_16(0) => InstructionFetch_n_102,
      reg_file_reg_r1_0_7_6_11_i_7 => InstructionFetch_n_55,
      sw_IBUF(2 downto 0) => sw_IBUF(7 downto 5),
      wd(15 downto 0) => wd(15 downto 0)
    );
InstructionFetch: entity work.InstrFetch
     port map (
      ADDRD(2 downto 0) => wa(2 downto 0),
      AR(0) => reset,
      CO(0) => data6,
      D(3) => InstructionFetch_n_32,
      D(2) => InstructionFetch_n_33,
      D(1) => InstructionFetch_n_34,
      D(0) => InstructionFetch_n_35,
      DI(2) => InstructionFetch_n_56,
      DI(1) => InstructionFetch_n_57,
      DI(0) => InstructionFetch_n_58,
      E(0) => MemData1,
      MemWrite => InstructionFetch_n_77,
      O(3) => ExecutionUnit_n_15,
      O(2) => ExecutionUnit_n_16,
      O(1) => ExecutionUnit_n_17,
      O(0) => ExecutionUnit_n_18,
      Q(15 downto 0) => MemData(15 downto 0),
      RD2(9 downto 8) => RD2(15 downto 14),
      RD2(7) => RD2(8),
      RD2(6 downto 0) => RD2(6 downto 0),
      RegWrite => RegWrite,
      S(3) => InstructionFetch_n_82,
      S(2) => InstructionFetch_n_83,
      S(1) => InstructionFetch_n_84,
      S(0) => InstructionFetch_n_85,
      btn_IBUF(0) => btn_IBUF(0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      data0(15 downto 0) => data0(15 downto 0),
      data1(15 downto 0) => data1(15 downto 0),
      eqOp => eqOp,
      \iesire_mux1[1]_i_5_0\ => Display_n_0,
      \iesire_mux1_reg[0]\ => Debouncer2_n_12,
      \iesire_mux1_reg[0]_0\ => Debouncer2_n_5,
      \iesire_mux1_reg[1]\ => Debouncer2_n_3,
      \iesire_mux1_reg[2]\ => Debouncer2_n_13,
      \iesire_mux1_reg[2]_0\ => Debouncer2_n_4,
      \iesire_mux1_reg[2]_1\ => Debouncer2_n_6,
      \iesire_mux1_reg[2]_2\ => Debouncer2_n_11,
      \iesire_mux1_reg[3]\ => InstructionDecode_n_41,
      led_OBUF(7 downto 0) => led_OBUF(7 downto 0),
      \pc_reg[0]_0\(14 downto 2) => InstrOut(15 downto 3),
      \pc_reg[0]_0\(1 downto 0) => InstrOut(1 downto 0),
      \pc_reg[0]_1\ => InstructionFetch_n_31,
      \pc_reg[0]_10\(2) => InstructionFetch_n_98,
      \pc_reg[0]_10\(1) => InstructionFetch_n_99,
      \pc_reg[0]_10\(0) => InstructionFetch_n_100,
      \pc_reg[0]_2\ => InstructionFetch_n_52,
      \pc_reg[0]_3\ => InstructionFetch_n_54,
      \pc_reg[0]_4\ => InstructionFetch_n_55,
      \pc_reg[0]_5\ => InstructionFetch_n_62,
      \pc_reg[0]_6\ => InstructionFetch_n_63,
      \pc_reg[0]_7\ => InstructionFetch_n_67,
      \pc_reg[0]_8\ => InstructionFetch_n_80,
      \pc_reg[0]_9\(3) => InstructionFetch_n_90,
      \pc_reg[0]_9\(2) => InstructionFetch_n_91,
      \pc_reg[0]_9\(1) => InstructionFetch_n_92,
      \pc_reg[0]_9\(0) => InstructionFetch_n_93,
      \pc_reg[12]_0\(3) => InstructionFetch_n_94,
      \pc_reg[12]_0\(2) => InstructionFetch_n_95,
      \pc_reg[12]_0\(1) => InstructionFetch_n_96,
      \pc_reg[12]_0\(0) => InstructionFetch_n_97,
      \pc_reg[13]_0\(0) => Addr1(13),
      \pc_reg[15]_0\(14 downto 13) => out1(15 downto 14),
      \pc_reg[15]_0\(12 downto 0) => out1(12 downto 0),
      \pc_reg[1]_0\ => InstructionFetch_n_53,
      \pc_reg[1]_1\(1) => p_0_in(4),
      \pc_reg[1]_1\(0) => p_0_in(2),
      \pc_reg[1]_2\ => InstructionFetch_n_61,
      \pc_reg[1]_3\ => InstructionFetch_n_81,
      \pc_reg[1]_4\(0) => InstructionFetch_n_103,
      \pc_reg[2]_0\(0) => InstructionFetch_n_102,
      \pc_reg[8]_0\ => InstructionFetch_n_68,
      \pc_reg[8]_1\(3) => InstructionFetch_n_86,
      \pc_reg[8]_1\(2) => InstructionFetch_n_87,
      \pc_reg[8]_1\(1) => InstructionFetch_n_88,
      \pc_reg[8]_1\(0) => InstructionFetch_n_89,
      plusOp_carry_i_7_0 => InstructionDecode_n_49,
      plusOp_carry_i_8_0 => InstructionDecode_n_48,
      plusOp_carry_i_9_0(3) => ExecutionUnit_n_19,
      plusOp_carry_i_9_0(2) => ExecutionUnit_n_20,
      plusOp_carry_i_9_0(1) => ExecutionUnit_n_21,
      plusOp_carry_i_9_0(0) => ExecutionUnit_n_22,
      plusOp_carry_i_9_1 => InstructionDecode_n_44,
      plusOp_carry_i_9_2 => InstructionDecode_n_46,
      rd1(9 downto 8) => RD1(15 downto 14),
      rd1(7) => RD1(8),
      rd1(6 downto 0) => RD1(6 downto 0),
      reg_file_reg_r1_0_7_0_5(0) => InstructionFetch_n_101,
      reg_file_reg_r1_0_7_12_15_i_7_0(3) => ExecutionUnit_n_27,
      reg_file_reg_r1_0_7_12_15_i_7_0(2) => ExecutionUnit_n_28,
      reg_file_reg_r1_0_7_12_15_i_7_0(1) => ExecutionUnit_n_29,
      reg_file_reg_r1_0_7_12_15_i_7_0(0) => ExecutionUnit_n_30,
      reg_file_reg_r1_0_7_6_11_i_5_0(3) => ExecutionUnit_n_23,
      reg_file_reg_r1_0_7_6_11_i_5_0(2) => ExecutionUnit_n_24,
      reg_file_reg_r1_0_7_6_11_i_5_0(1) => ExecutionUnit_n_25,
      reg_file_reg_r1_0_7_6_11_i_5_0(0) => ExecutionUnit_n_26,
      reg_file_reg_r1_0_7_6_11_i_5_1 => InstructionDecode_n_45,
      reg_file_reg_r1_0_7_6_11_i_6_0 => InstructionDecode_n_47,
      sw_IBUF(2 downto 1) => sw_IBUF(6 downto 5),
      sw_IBUF(0) => sw_IBUF(0),
      wd(15 downto 0) => wd(15 downto 0)
    );
Memory: entity work.ram
     port map (
      E(0) => MemData1,
      MemData(15 downto 0) => MemData(15 downto 0),
      \MemData_reg[15]_0\ => InstructionFetch_n_54,
      \MemData_reg[15]_1\ => InstructionFetch_n_53,
      \MemData_reg[15]_2\ => InstructionFetch_n_31,
      \MemData_reg[15]_3\ => InstructionFetch_n_52,
      MemWrite => InstructionFetch_n_77,
      RD2(15 downto 0) => RD2(15 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG
    );
\an_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(0),
      O => an(0)
    );
\an_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(1),
      O => an(1)
    );
\an_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(2),
      O => an(2)
    );
\an_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(3),
      O => an(3)
    );
\an_OBUF[4]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => an(4),
      T => '1'
    );
\an_OBUF[5]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => an(5),
      T => '1'
    );
\an_OBUF[6]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => an(6),
      T => '1'
    );
\an_OBUF[7]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => an(7),
      T => '1'
    );
\btn_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => btn(0),
      O => btn_IBUF(0)
    );
\btn_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => btn(1),
      O => btn_IBUF(1)
    );
\cat_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cat_OBUF(0),
      O => cat(0)
    );
\cat_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cat_OBUF(1),
      O => cat(1)
    );
\cat_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cat_OBUF(2),
      O => cat(2)
    );
\cat_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cat_OBUF(3),
      O => cat(3)
    );
\cat_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cat_OBUF(4),
      O => cat(4)
    );
\cat_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cat_OBUF(5),
      O => cat(5)
    );
\cat_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cat_OBUF(6),
      O => cat(6)
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\led_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(0),
      O => led(0)
    );
\led_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(1),
      O => led(1)
    );
\led_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(2),
      O => led(2)
    );
\led_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(3),
      O => led(3)
    );
\led_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(4),
      O => led(4)
    );
\led_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(5),
      O => led(5)
    );
\led_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(6),
      O => led(6)
    );
\led_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(7),
      O => led(7)
    );
\sw_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => sw(0),
      O => sw_IBUF(0)
    );
\sw_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => sw(5),
      O => sw_IBUF(5)
    );
\sw_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => sw(6),
      O => sw_IBUF(6)
    );
\sw_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => sw(7),
      O => sw_IBUF(7)
    );
end STRUCTURE;
