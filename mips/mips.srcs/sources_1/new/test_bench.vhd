library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_bench is
end test_bench;

architecture Behavioral of test_bench is

  component test_env is
    Port( clk, enable, reset: in std_logic;
          rd_1, rd_2, instr_out, pc_out, extImm, alu_res, mem_data, write_data: out std_logic_vector(15 downto 0);
          reg_dst, Ext_Op, ALU_Src, branch0, jump0, Mem_Write, Mem_Reg, Reg_Write: out std_logic;
          alu_op: out std_logic_vector(2 downto 0));
  end component test_env;

  signal clk_sim, enable_sim, reset_sim : std_logic := '0';  
  signal rd1, rd2, instrOut, pcOut, imm, res, mem, write : std_logic_vector(15 downto 0);
  signal aluOp: std_logic_vector(2 downto 0);
  signal dst, ext, src, branch, jump, memWrite, memReg, regWrite: std_logic;

begin

  clk_process : process
  begin
    while now < 10000 ns loop 
      clk_sim <= not clk_sim;  
      wait for 10 ns;  
    end loop;
    wait;
  end process clk_process;

  tb : test_env port map(clk_sim, enable_sim, reset_sim, rd1, rd2, instrOut, pcOut, imm, res, mem, write, 
                         dst, ext, src, branch, jump, memWrite, memReg, regWrite, aluOp);

end Behavioral;
