library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ram is
    port(  MemWrite : in STD_LOGIC;
           ALUResIn : in STD_LOGIC_VECTOR (15 downto 0);
           RD2 : in STD_LOGIC_VECTOR (15 downto 0);
           CLK : in STD_LOGIC;
           EN : in STD_LOGIC;
           MemData : out STD_LOGIC_VECTOR (15 downto 0);
           ALUResOut : out STD_LOGIC_VECTOR (15 downto 0));
end ram;

architecture behav of ram is

type RAM_ARRAY is array (0 to 15) of std_logic_vector (15 downto 0);
signal ram_mem: RAM_ARRAY := (
    X"000C", -- 12
    X"0008", -- 8
    X"001D", -- 20
    X"0002", -- 2
    X"000F", -- 15
    X"0005", -- 5
    X"002A", -- 42
    X"0007", -- 7
    X"005D", -- 93
    X"000B", -- 11
    X"000A", -- 10              
    others => x"0000");

begin
    process(clk)
    begin
        if rising_edge(clk) then
            if en = '1' then
                if MemWrite = '1' then
                    ram_mem(conv_integer(ALUResIn(3 downto 0))) <= RD2;
                else
                     MemData <= ram_mem(conv_integer(ALUResIn(3 downto 0)));
                end if;
            end if;
        end if;
    end process;
    
 ALUResOut <= ALUResIn;
    
end behav;