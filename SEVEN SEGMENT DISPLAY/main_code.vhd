library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main_code is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           anode0 : out STD_LOGIC_VECTOR(3 downto 0);
           LED0 : out STD_LOGIC_VECTOR(6 downto 0));
end main_code;

architecture Behavioral of main_code is
signal LED1 : STD_LOGIC_VECTOR (1 downto 0);
signal E : STD_LOGIC;
signal out1 : STD_LOGIC_VECTOR(15 downto 0);

COMPONENT countfile is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           count1 : out STD_LOGIC_VECTOR (27 downto 0);
           LED1 : out STD_LOGIC_VECTOR (1 downto 0);
           out3 : out STD_LOGIC_VECTOR (15 downto 0);
           E : out STD_LOGIC);
end COMPONENT;

COMPONENT digit_det1 is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           LED1 : in STD_LOGIC_VECTOR (1 downto 0);
           out1 : in STD_LOGIC_VECTOR (15 downto 0);
           E : in STD_LOGIC;
           anode0 : out STD_LOGIC_VECTOR (3 downto 0);
           LED0 : out STD_LOGIC_VECTOR (6 downto 0));
end COMPONENT;
begin

U1: countfile PORT MAP (CLK => CLK, RESET => RESET, LED1 => LED1, E => E, out3 => out1);

U2: digit_det1 PORT MAP (CLK,RESET,LED1,out1,E,anode0,LED0);
    

        

end Behavioral;
