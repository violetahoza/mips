library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD;

entity IDUnit is
  Port ( RegWrite, RegDest, ExtOp, clk: in std_logic;
         instr, WD: in std_logic_vector(15 downto 0);
         func: out std_logic_vector(2 downto 0);
         sa: out std_logic;
         RD1, RD2, Ext_imm:out std_logic_vector(15 downto 0));
end IDUnit;

architecture Behavioral of IDUnit is

component reg_file is
    port (
        clk : in std_logic;
        ra1 : in std_logic_vector (2 downto 0);
        ra2 : in std_logic_vector (2 downto 0);
        wa : in std_logic_vector (2 downto 0);
        wd : in std_logic_vector (15 downto 0);
        wen : in std_logic;
        rd1 : out std_logic_vector (15 downto 0);
        rd2 : out std_logic_vector (15 downto 0)
    );
end component reg_file;

signal ext_op, rd_1, rd_2: std_logic_vector(15 downto 0);
signal mux_out: std_logic_vector(2 downto 0);

begin

extUnit: process(ExtOp, instr)
begin
    case ExtOp is
        when '1' => case instr(6) is
                        when '0' => ext_op <= B"000000000" & instr(6 downto 0);
                        when '1' => ext_op <= B"111111111" & instr(6 downto 0);
                        when others => 
                    end case;
        when others => ext_op <= B"000000000" & instr(6 downto 0);    
    end case;
end process;

mux: process(instr, RegDest)
     begin
        case RegDest is
            when '0' => mux_out <= instr(9 downto 7);
            when '1' => mux_out <= instr(6 downto 4);
            when others => 
        end case;    
     end process;
     
regFile: reg_file port map(clk, instr(12 downto 10), instr(9 downto 7), mux_out, WD, RegWrite, rd_1, rd_2);     
     
RD1 <= rd_1;
RD2 <= rd_2;
Ext_imm <= ext_op;
func <= instr(2 downto 0);
sa <= instr(3);     

end Behavioral;
