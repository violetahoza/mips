library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity mpg is
    Port ( clk : in STD_LOGIC;
           en : out STD_LOGIC;
           btn : in STD_LOGIC);
end mpg;

architecture Behavioral of mpg is

signal cnt: std_logic_vector(15 downto 0) := (others => '0');
signal q1, q2, q3: std_logic;

begin

  process(clk)
  begin
    if rising_edge(clk)then
        cnt <= cnt + 1;
    end if;    
  end process;
  
  process(clk)
  begin
    if rising_edge(clk) then
        if cnt(15 downto 0) = "111111111111111" then 
            q1 <= btn;
         -- cnt <= x"0000";
        end if;
    end if;
  end process;
  
  process(clk, q1, q2)
  begin
    if rising_edge(clk) then 
        q2 <= q1;
        q3 <= q2;
    end if;
  end process;
  
  en <= q2 and (not(q3));

end Behavioral;
