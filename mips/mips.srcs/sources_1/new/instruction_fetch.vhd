library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity InstrFetch is
  Port ( clk: in std_logic;
    branchAddr: in std_logic_vector(15 downto 0);
    jmpAddr: in std_logic_vector(15 downto 0);
    jmpCtr: in std_logic;
    PcSrc: in std_logic;
    btn_meu: in std_logic;
    PcReset: in std_logic;
    nextAddr: out std_logic_vector(15 downto 0);
    instr_out: out std_logic_vector(15 downto 0 ));
end InstrFetch;

architecture Behavioral of InstrFetch is

signal pc_incr: STD_LOGIC_VECTOR(15 downto 0); 
signal pc: std_logic_vector(15 downto 0 );
signal out1: std_logic_vector(15 downto 0);
signal Addr1: std_logic_vector(15 downto 0);
signal btn_divizat:STD_LOGIC;

type ROM is array (0 to 255) of std_logic_vector (15 downto 0);
signal memory: ROM := ( 
--     B"000_001_000_010_0_000", -- add $2, $1, $0 -> x"0420"
--     B"000_011_010_010_0_001", -- sub $2, $3, $2 -> x"0D21"
--     B"000_010_000_010_1_010", -- sll $2, $0, 1 -> x"082A"
--     B"000_010_000_010_1_011", -- srl &2, $0, 1 -> x"082B"
--     B"000_011_010_100_0_100", -- and $4, $3, $2 -> x"0D44"
--     B"000_101_100_100_0_101", -- or $4, $5, $2 -> x"1645"
--     B"000_100_100_100_0_110", -- xor $4, $4, $4 -> x"1246"
--     B"000_010_011_100_0_111", -- slt $4, $2, $3 -> x"09C7"
--     B"001_000_100_0000100", -- addi $4, $0, 4 -> x"2204"
--     B"010_001_101_0000000", -- lw $5, 0($1) -> x"4680"
--     B"011_100_101_0000000", -- sw $5, 0($4) -> x"7280"
--     B"100_001_001_0000001", -- beq $1, $1, 1 -> x"8481"
--     B"101_100_101_0000100", -- andi $5, $4, 4 -> x"B284"
--     B"110_101_110_0000011", -- ori $6, $5, 3 -> x"D703"
--     B"111_0000000000011", -- j $3 -> x"E003"

-- S? se determine valoarea par? maxim? dintr-un ?ir de N numere stocate în memorie începând cu adresa A (A?12).
-- A ?i N se citesc de la adresele 0, respectiv 4. Rezultatul se va scrie în memorie la adresa 8.

     B"010_000_001_0000000", -- lw $1, 0($0) // Load A from address 0 -> x"4080"
     B"010_000_010_0000100", -- lw $2, 4($0) // Load N from address 4 -> x"4104"
     B"000_100_100_100_0_110", -- xor $4, $4, $4 // Initialize the counter to 0 -> x"1246"
     B"000_101_101_101_0_110", -- xor $5, $5, $5 // Initialize the max even number to 0 -> x"16D6"
     B"000_000_001_110_0_110", -- add $6, $0, $1 // Initialize address pointer to A -> x"00E6"
     B"100_010_100_0010001", -- beq $4, $2, end_loop  // Check if the counter has reached N -> x"8A11"
     B"001_000_000_0000000", -- addi $0, $0, 0 -> x"2000"
     B"001_000_000_0000000",
     B"001_000_000_0000000",
     B"010_110_011_0000000", -- lw $3, 0($6) // Load the next number from memory -> x"5980"
     B"001_000_000_0000000",
     B"001_000_000_0000000",
     B"101_011_111_0000001", -- andi $7, $3, 1 // Check the least significant bit -> x"AF81"
     B"001_000_000_0000000",
     B"001_000_000_0000000",  
     B"100_000_111_0001011", -- beq $7, $0, even // Branch if the number is even -> x"838B"
     B"001_000_000_0000000",
     B"001_000_000_0000000",
     B"001_000_000_0000000",    
     B"001_100_100_0000001", -- addi $4, $4, 1 // Increment counter -> x"3201"
     B"111_0000000011110", -- jump 30 // go to the next address -> x"E01E"
     B"001_000_000_0000000",
     B"000_011_101_111_0_111", -- even: slt $7, $3, $5  // Check if the number is less than the current maximum -> x"0EF7"
     B"001_000_000_0000000",
     B"001_000_000_0000000",
     B"100_000_111_0001111", -- beq $7, $0, max // Branch if the number is not less than the current maximum -> x"838F"
     B"001_000_000_0000000",
     B"001_000_000_0000000",
     B"001_000_000_0000000",
     B"001_100_100_0000001", -- addi $4, $4, 1 // Increment counter -> x"3201"
     B"000_110_100_110_0_110", -- add $6, $6, 4 // Move to the next address -> x"1A66"
     B"011_101_011_0000000", -- max: sw $3, 0($5)  // Store the current number as the new max -> x"7580"
     B"111_0000000000101", -- jump Instr5   Jump back to the loop start -> x"E005"
     B"001_000_000_0000000",
     B"011_000_101_0001000", -- end_loop:  sw $5, 8($0) // Write the max even number to memory at address 8 -> x"6288"

     others => (others => '0') 
);                   

component mpg is
    Port ( clk : in STD_LOGIC;
           en : out STD_LOGIC;
           btn : in STD_LOGIC);
end component mpg;

begin

--Debouncer: mpg port map(clk=>clk, btn=>btn_meu, en=>btn_divizat);

-- program counter
process(clk, PcReset)
begin
    if PcReset = '1' then
        pc <= x"0000";
    elsif rising_edge(clk) then -- and btn_divizat = '1' then
            pc <= Addr1;
    end if;            
end process;

--mux branch
mux1: process(PcSrc, branchAddr, pc_incr)
      begin
      case PcSrc is 
            when '0' => out1 <= pc_incr;
            when '1' => out1 <= branchAddr;
            when others => out1 <= x"0000";
      end case;
      end process;                      
    
--mux jump
mux2: process(jmpCtr, jmpAddr, out1)
      begin
      case jmpCtr is
          when '0' => Addr1 <= out1;
          when '1' => Addr1 <= jmpAddr;
          when others => Addr1 <= x"0000";
      end case;
      end process;
      
-- rom
pc_incr <= pc + 1;
nextAddr <= pc_incr;
instr_out <= memory(conv_integer(pc(7 downto 0)));     

end Behavioral;
