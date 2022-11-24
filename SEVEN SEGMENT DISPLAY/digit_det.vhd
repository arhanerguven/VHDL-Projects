
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity digit_det1 is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           LED1 : in STD_LOGIC_VECTOR (1 downto 0);
           out1 : in STD_LOGIC_VECTOR (15 downto 0);
           E : in STD_LOGIC;
           anode0 : out STD_LOGIC_VECTOR (3 downto 0);
           LED0 : out STD_LOGIC_VECTOR (6 downto 0));
end digit_det1;

architecture Behavioral of digit_det1 is

signal LEDout: STD_LOGIC_VECTOR(3 downto 0);
begin
process(LED1)
begin
    case LED1 is
    when "00" =>
        anode0 <= "0111";
        LEDout <= out1(15 downto 12);
    when "01" =>
        anode0 <= "1011";
        LEDout <= out1(11 downto 8);
    when "10" =>
        anode0 <= "1101";
        LEDout <= out1(7 downto 4);
    when others =>
        anode0 <= "1110";
        LEDout <= out1(3 downto 0);
    end case;
end process;

process(LEDout)
begin
    case LEDout is 
    when "0000" => LED0 <= "0000001";
    when "0001" => LED0 <= "1001111";
    when "0010" => LED0 <= "0010010";
    when "0011" => LED0 <= "0000110";
    when "0100" => LED0 <= "1001100";
    when "0101" => LED0 <= "0100100";
    when "0110" => LED0 <= "0100000";
    when "0111" => LED0 <= "0001111";
    when "1000" => LED0 <= "0000000";
    when "1001" => LED0 <= "0000100";
    when "1010" => LED0 <= "0000010";
    when "1011" => LED0 <= "1100000";
    when "1100" => LED0 <= "0110001";
    when "1101" => LED0 <= "1000010";
    when "1110" => LED0 <= "0110000";
    when others => LED0 <= "0111000";
    end case;
end process;



end Behavioral;
