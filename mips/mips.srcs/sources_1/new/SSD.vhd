library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SSD is
--  Port ( );
  Port ( digit : in STD_LOGIC_VECTOR (15 downto 0);
           clk : in STD_LOGIC;
           cat : out STD_LOGIC_VECTOR (6 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0));
end SSD;

architecture Behavioral of SSD is

signal count:STD_LOGIC_VECTOR(15 downto 0):=x"0000";
signal iesire_mux1:std_logic_vector(3 downto 0);
begin

process(clk)
begin
if rising_edge(clk) then
   count <= count + 1;
end if;
end process;

process(clk)
begin
    if rising_edge(clk) then 
        case count(15 downto 14 ) is
            when "00" => iesire_mux1<=  digit(3 downto 0);
            when "01" => iesire_mux1<= digit(7 downto 4);
            when "10" => iesire_mux1<= digit(11 downto 8);
            when others => iesire_mux1<=digit(15 downto 12);
          end case;
     end if;
end process;

process(clk)
begin
    if rising_edge(clk) then 
        case count(15 downto 14 ) is
            when "00" => an (3 downto 0)<= "1110";
            when "01" => an (3 downto 0 )<= "1101";
            when "10" => an (3 downto 0)<= "1011";
            when others => an(3 downto 0) <="0111";
          end case;
    end if ;
  end process;

    with iesire_mux1 Select 
   cat<= "1111001" when "0001",   --1
         "0100100" when "0010",   --2
         "0110000" when "0011",   --3
         "0011001" when "0100",   --4
         "0010010" when "0101",   --5
         "0000010" when "0110",   --6
         "1111000" when "0111",   --7
         "0000000" when "1000",   --8
         "0010000" when "1001",   --9
         "0001000" when "1010",   --A
         "0000011" when "1011",   --b
         "1000110" when "1100",   --C
         "0100001" when "1101",   --d
         "0000110" when "1110",   --E
         "0001110" when "1111",   --F
         "1000000" when others;   --0
         
end Behavioral;

--entity SSD is
--  Port ( digits: in std_logic_vector(15 downto 0);
--         clock: in std_logic;
--         cat: out std_logic_vector(6 downto 0);
--         an: out std_logic_vector(7 downto 0) );
--end SSD;

--architecture Behavioral of SSD is

--signal counter: std_logic_vector(15 downto 0);
--signal s: std_logic_vector(1 downto 0);

--begin

--process(digits)
--    begin
--        for i in 0 to 3 loop
--        -- extract 4-bit segment from digits
--            case digits((i * 4 + 3) downto (i * 4)) is 
--                when "0000" => cat <= "1000000"; -- 0
--                when "0001" => cat <= "1111001"; -- 1
--                when "0010" => cat <= "0100100"; -- 2
--                when "0011" => cat <= "0110000"; -- 3
--                when "0100" => cat <= "0011001"; -- 4
--                when "0101" => cat <= "0010010"; -- 5
--                when "0110" => cat <= "0000010"; -- 6
--                when "0111" => cat <= "1111000"; -- 7
--                when "1000" => cat <= "0000000"; -- 8
--                when "1001" => cat <= "0010000"; -- 9
--                when "1010" => cat <= "0001000"; -- A
--                when "1011" => cat <= "0000011"; -- B
--                when "1100" => cat <= "1000110"; -- C
--                when "1101" => cat <= "0100001"; -- D
--                when "1110" => cat <= "0000110"; -- E
--                when "1111" => cat <= "0001110"; -- F
--                when others => cat <= "1111111"; -- Invalid segment
--            end case;
--              -- Set appropriate anode
--            --anodes <= std_logic_vector(to_unsigned(i, 3)); -- Active anode ---??
--            case i is
--                when 0 => an<="11111110";
--                when 1 => an<="11111101";
--                when 2 => an<="11111011";
--                when 3 => an<="11110111";
--                when 4 => an<="11101111";
--                when 5 => an<="11011111";
--                when 6=> an<="10111111";
--                when 7 => an<="01111111";
--            end case; 

--            -- Wait for one clock cycle
--            --wait until rising_edge(clock);
--        end loop;
--    end process;

--end Behavioral;