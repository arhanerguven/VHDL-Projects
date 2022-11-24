library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity countfile is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           count1 : out STD_LOGIC_VECTOR (27 downto 0);
           LED1 : out STD_LOGIC_VECTOR (1 downto 0);
           out3 : out STD_LOGIC_VECTOR (15 downto 0);
           E : out STD_LOGIC);
end countfile;

architecture Behavioral of countfile is
signal count2 : STD_LOGIC_VECTOR (27 downto 0);
signal out2: STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
begin

process(CLK,RESET)
begin
    if( RESET = '1') then
        count2 <= (others => '0');
        out2 <= (others => '0');
    elsif (rising_edge(CLK)) then
        if(count2 >= x"5F5E0FF") then
            out2 <= out2 + '1';
            count2 <= (others => '0');
    else
        count2 <= count2 + "0000001";
    end if;
  end if;
 end process;
 
 E <= '1' when count2 = x"5F5E0FF" else '0';
 LED1 <= count2(19 downto 18);
 count1 <= count2;
 out3 <= out2;
 
