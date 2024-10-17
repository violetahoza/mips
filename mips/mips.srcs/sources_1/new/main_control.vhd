library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity UC is
  Port ( instr: in std_logic_vector(2 downto 0);
         RegDest, RegWrite, ExtOp, ALUSrc, Branch, Jump, MemWrite, MemtoReg: out std_logic;
         ALUOp: out std_logic_vector(2 downto 0));
end UC;

architecture Behavioral of UC is

begin

process(instr)
begin

    RegDest <= '0';
    ALUSrc  <= '0';
    Jump    <= '0';
    MemWrite <= '0';
    Branch   <= '0';
    MemWrite <= '0';
    MemtoReg <= '0';
    RegWrite <= '0';
    ExtOp <= '0';
    ALUOp  <= "000";

    case instr is
        when "000" => -- R-type
                      RegDest <= '1';
                      RegWrite <= '1'; 
                      ALUOp <= "000"; 
        when "001" => -- addi
                      ExtOp <= '1';
                      AluSrc <= '1';
                      RegWrite <= '1'; 
                      ALUOp <= "001";
        when "010" => -- lw
                      ExtOp <= '1';
                      AluSrc <= '1';
                      RegWrite <= '1'; 
                      MemtoReg<='1';
                      ALUOp <= "001";
        when "011" => -- sw
                      ExtOp <= '1';
                      AluSrc <= '1';
                      MemWrite <= '1'; 
                      ALUOp <= "001";
        when "100" => -- beq
                      ExtOp <= '1';
                      Branch <= '1';
                      ALUOp <= "010";
        when "101" => -- andi
                      ExtOp <= '1';
                      AluSrc <= '1';
                      RegWrite <= '1'; 
                      ALUOp <= "101";
        when "110" => -- ori
                      ExtOp <= '1';
                      AluSrc <= '1';
                      RegWrite <= '1'; 
                      ALUOp <= "110";
        when "111" => Jump <= '1'; -- jump
                      ALUOp<="111";
                      ExtOp<='1';
        when others =>                
    end case;
end process;

end Behavioral;
