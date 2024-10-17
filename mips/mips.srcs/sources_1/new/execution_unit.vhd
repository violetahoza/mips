library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.all;

entity execUnit is
  Port ( PC4, RD1, RD2, Ext_Imm: in std_logic_vector(15 downto 0);
         ALUSrc, sa: in std_logic;
         AluOp, func: in std_logic_vector(2 downto 0);
         zero: out std_logic;
         BranchAddress, ALURes: out std_logic_vector(15 downto 0));
end execUnit;

architecture Behavioral of execUnit is

signal ALUCtrl: std_logic_vector(3 downto 0);
signal a, b, res: std_logic_vector(15 downto 0);

begin

a <= RD1;

process(ALUOp, func)
begin
    case ALUOp is
        when "000" => 
            case func is
                when "000" => ALUCtrl <= "0000"; -- add
                when "001" => ALUCtrl <= "0001"; -- sub
                when "010" => ALUCtrl <= "0010"; -- sll
                when "011" => ALUCtrl <= "0011"; -- srl
                when "100" => ALUCtrl <= "0100"; -- and
                when "101" => ALUCtrl <= "0101"; -- or
                when "110" => ALUCtrl <= "0110"; -- xor
                when "111" => ALUCtrl <= "0111"; -- set on less than
                when others => ALUCtrl <= "0000"; 
            end case;   
        when "001" => ALUCtrl <= "0000"; -- addi
        when "010" => ALUCtrl <= "0001"; -- beq
        when "101" => ALUCtrl <= "0100"; -- andi
        when "110" => ALUCtrl <= "0101"; -- ori
        when "111" => ALUCtrl <= "1000"; -- jump
        when others => ALUCtrl <= "0000";
    end case;
end process;

process(ALUSrc)
begin
    if ALUSrc = '0' then b <= RD2;
    else b <= Ext_Imm;
    end if;
end process;

process(ALUCtrl, a, b, sa)
begin
    case ALUCtrl is  
        when "0000" => res <= a + b;
        when "0001" => res <= a - b;
        when "0010" => case sa is when '1' => res <= a(14 downto 0) & '0';
                                  when others => res <= a;
                       end case;           
        when "0011" => case sa is when '1' => res <= '0' & a(15 downto 1);
                                  when others => res <= a;
                       end case;
        when "1100" => res <= a and b;
        when "0101" => res <= a or b;
        when "0110" => res <= a xor b;
        when "0111" => -- set on less than
                       if a < b then res <= x"0001";
                       else res <= x"0000";
                       end if;
        when "1000" => res <= x"0000"; -- jump     
        when others => res <= x"0000";          
    end case; 
end process;

ALURes <= res;
Zero <= '1' when res = x"0000" else '0';
BranchAddress <= PC4 + Ext_Imm;

end Behavioral;
