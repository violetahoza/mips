library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity test_env is
--  Port ( clk : in STD_LOGIC := '1';
--         btn : in STD_LOGIC_VECTOR (3 downto 0):="1111" ;
--         sw : in STD_LOGIC_VECTOR (15 downto 0);
--         led : out STD_LOGIC_VECTOR (7 downto 0);
--         an : out STD_LOGIC_VECTOR (7 downto 0);
--         cat : out STD_LOGIC_VECTOR (6 downto 0));
    Port( clk, enable, reset: in std_logic;
          rd_1, rd_2, instr_out, pc_out, extImm, alu_res, mem_data, write_data: out std_logic_vector(15 downto 0);
          reg_dst, Ext_Op, ALU_Src, branch0, jump0, Mem_Write, Mem_Reg, Reg_Write: out std_logic;
          alu_op: out std_logic_vector(2 downto 0));
end test_env;

architecture Behavioral of test_env is

--component mpg is
--    Port ( clk : in STD_LOGIC;
--           en : out STD_LOGIC;
--           btn : in STD_LOGIC);
--end component mpg;

--component SSD is
--  Port ( digit : in STD_LOGIC_VECTOR (15 downto 0);
--           clk : in STD_LOGIC;
--           cat : out STD_LOGIC_VECTOR (6 downto 0);
--           an : out STD_LOGIC_VECTOR (3 downto 0));
--end component SSD;

component InstrFetch is
  Port ( clk: in std_logic;
    branchAddr: in std_logic_vector(15 downto 0);
    jmpAddr: in std_logic_vector(15 downto 0);
    jmpCtr: in std_logic;
    PcSrc: in std_logic;
    btn_meu: in std_logic;
    PcReset: in std_logic;
    nextAddr: out std_logic_vector(15 downto 0);
    instr_out: out std_logic_vector(15 downto 0 ));
end component InstrFetch;

component IDUnit is
  Port ( RegWrite, RegDest, ExtOp, clk: in std_logic;
         instr, WD: in std_logic_vector(15 downto 0);
         func: out std_logic_vector(2 downto 0);
         sa: out std_logic;
         RD1, RD2, Ext_imm:out std_logic_vector(15 downto 0));
end component IDUnit;

component execUnit is
  Port ( PC4, RD1, RD2, Ext_Imm: in std_logic_vector(15 downto 0);
         ALUSrc, sa: in std_logic;
         AluOp, func: in std_logic_vector(2 downto 0);
         zero: out std_logic;
         BranchAddress, ALURes: out std_logic_vector(15 downto 0));
end component execUnit;

component UC is
  Port ( instr: in std_logic_vector(2 downto 0);
         RegDest, RegWrite, ExtOp, ALUSrc, Branch, Jump, MemWrite, MemtoReg: out std_logic;
         ALUOp: out std_logic_vector(2 downto 0));
end component UC;

component ram is
    port(  MemWrite : in STD_LOGIC;
           ALUResIn : in STD_LOGIC_VECTOR (15 downto 0);
           RD2 : in STD_LOGIC_VECTOR (15 downto 0);
           CLK : in STD_LOGIC;
           EN : in STD_LOGIC;
           MemData : out STD_LOGIC_VECTOR (15 downto 0);
           ALUResOut : out STD_LOGIC_VECTOR (15 downto 0));
end component ram;

-- UC signals
signal RegDst: std_logic;
signal ExtOp: std_logic;
signal ALUSrc: std_logic;
signal Branch: std_logic;
signal Jump: std_logic;
signal ALUOp: std_logic_vector(2 downto 0);
signal MemWrite: std_logic;
signal MemtoReg: std_logic;
signal RegWrite: std_logic;

-- memory
signal MemData: std_logic_vector(15 downto 0); -- Mem Data = Read Data --Memory -- OUT
signal ALUResFinal: std_logic_vector(15 downto 0); -- ALU Result - OUT from Memory

-- SSD signal
signal SSDOUT: std_logic_vector(15 downto 0); -- display SSD

-- ID signals
signal RD1: std_logic_vector(15 downto 0);
signal RD2: std_logic_vector(15 downto 0);					
signal Ext_Imm : std_logic_vector(15 downto 0);				
signal func :std_logic_vector(2 downto 0); -- func - Instruction(2 downto 0)
signal SA : std_logic;	-- Shift Amount
signal WriteDataReg: std_logic_vector(15 downto 0);

-- execUnit signals
signal ALURes: std_logic_vector(15 downto 0); 
signal ZeroSignal: std_logic; -- Zero Signal used for Branch

-- IF signals
--signal enable: STD_LOGIC := '1'; -- Instruction Fetch - enable
--signal reset: STD_LOGIC; -- Instruction Fetch - reset
signal BranchAddress: std_logic_vector(15 downto 0); -- branch address used for IF
signal JumpAddress: std_logic_vector(15 downto 0); -- jump address used for IF
signal InstrOut: std_logic_vector(15 downto 0); -- next instruction  
signal PCout: std_logic_vector(15 downto 0); -- program counter	 
signal PCSrc:std_logic;	--PCSrc signal = BranchAddress and ZeroSignal
signal clock_divizat: std_logic;

-- pipeline signals

-- IF/ID
signal if_id_instrOut: std_logic_vector(15 downto 0);
signal if_id_nextAddr: std_logic_vector(15 downto 0);

-- ID/EX
signal id_ex_sa: std_logic;
signal id_ex_fnc: std_logic_vector(2 downto 0);
signal id_ex_rd1: std_logic_vector(15 downto 0);
signal id_ex_rd2: std_logic_vector(15 downto 0);
signal id_ex_imm: std_logic_vector(15 downto 0);

-- EX/MEM
signal ex_mem_zero: std_logic;
signal ex_mem_ALURes, ex_mem_branchAddr: std_logic_vector(15 downto 0);

-- MEM/WB
signal mem_wb_memData, mem_wb_ALUREsOut: std_logic_vector(15 downto 0);
  
begin

-- IF/ID
process(clk)
begin
    if_id_instrOut <= InstrOut;
    if_id_nextAddr <= PCOut;
end process;

-- ID/EX
process(clk)
begin
    id_ex_sa <= sa;
    id_ex_fnc <= func;
    id_ex_rd1 <= rd1;
    id_ex_rd2 <= rd2;
    id_ex_imm <= Ext_Imm;
end process;

-- MEM/WB
process(clk)
begin
    mem_wb_memData <= MemData;
    mem_wb_ALUREsOut <= ALUResFinal;
end process;

-- EX/MEM
process(clk)
begin
    ex_mem_zero <= ZeroSignal;
    ex_mem_ALURes <= AluRes;
    ex_mem_branchAddr <= BranchAddress;
end process;

--Debouncer: mpg port map(clk, clock_divizat, btn(0));
--Debouncer2: mpg port map(clk, reset, btn(1));
InstructionFetch: InstrFetch port map(clk, BranchAddress, JumpAddress, Jump, PcSrc, enable, reset, if_id_nextAddr, if_id_instrOut);
InstructionDecode: IDUnit port map(RegWrite, RegDst, ExtOp, clk, InstrOut, WriteDataReg, id_ex_fnc, id_ex_sa, id_ex_rd1, id_ex_rd2, id_ex_imm);
ControlUnit: UC port map(InstrOut(15 downto 13), RegDst, RegWrite, ExtOp, ALUSrc, Branch, Jump, MemWrite, MemtoReg, ALUOp);
ExecutionUnit: execUnit port map(PCOut, rd1, rd2, ext_imm, ALUSrc, sa, ALUOp, func, ex_mem_zero, ex_mem_branchAddr, ex_mem_ALURes);
Memory: ram port map(MemWrite, ALURes, rd2, clk, enable, mem_wb_memData, mem_wb_ALUREsOut);
--Display: SSD port map(SSDOut, clk, cat, an(3 downto 0));

process(MemtoReg,mem_wb_ALUREsOut,mem_wb_memData)
begin
	case (MemtoReg) is
		when '1' => WriteDataReg <= mem_wb_memData;
		when '0' => WriteDataReg <= mem_wb_ALUREsOut;
		when others => WriteDataReg <= WriteDataReg;
	end case; 
end process;	

PCSrc <= ex_mem_zero and Branch;
JumpAddress <= if_id_nextAddr(15 downto 14) & if_id_instrOut(13 downto 0);

--process(InstrOut, PCout, RD1, RD2, Ext_Imm, ALURes, MemData, WriteDataReg, sw(7 downto 5))
--begin
--	case(sw(7 downto 5)) is
--		when "000" =>
--				SSDOut <= InstrOut;			
--		when "001" =>
--				SSDOut <= PCout;				
--		when "010" =>
--				SSDOut <= RD1;				
--		when "011" =>
--				SSDOut <= RD2;				
--		when "100" =>
--				SSDOut <= Ext_Imm;			
--		when "101" =>
--				SSDOut <= ALURes;				
--		when "110" =>
--				SSDOut <= MemData;			
--		when "111" =>
--				SSDOut <= WriteDataReg;	
--		when others =>
--				SSDOut <= X"0000";
--	end case;
--end process;

-- displaying the control signals
--process(RegDst, ExtOp, ALUSrc, Branch,Jump, MemWrite, MemtoReg, RegWrite, sw(0), ALUOp)
--begin
--	if sw(0)='0' then		
--		led(7) <= RegDst;
--		led(6) <= ExtOp;
--		led(5) <= ALUSrc;
--		led(4) <= Branch;
--		led(3) <= Jump;
--		led(2) <= MemWrite;
--		led(1) <= MemtoReg;
--		led(0) <= RegWrite;	
--	else
--		led(2 downto 0) <= ALUOp(2 downto 0);
--		led(7 downto 3) <= "00000";
--	end if;
--end process;

rd_1 <= id_ex_rd1;
rd_2 <= id_ex_rd2;
extImm <= id_ex_imm;
instr_out <= if_id_instrOut;
pc_out <= if_id_nextAddr;
alu_res <= ex_mem_ALURes;
mem_data <= mem_wb_memData;
write_data <= WriteDataReg;

alu_op <= ALUOp;
reg_dst <= RegDst;
Ext_Op <= ExtOp; 
ALU_Src <= ALUSrc; 
branch0 <= Branch; 
jump0 <= Jump; 
Mem_Write <= MemWrite; 
Mem_Reg <= MemToReg;
Reg_Write <= RegWrite;

end Behavioral;
