library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity subtractor is
    Port ( in1s : in STD_LOGIC_VECTOR (3 downto 0);
           in2s : in STD_LOGIC_VECTOR (3 downto 0);
           sums : out STD_LOGIC_VECTOR (3 downto 0));
end subtractor;

architecture Behavioral of subtractor is

signal c1,c2,c3,c4s: STD_LOGIC;
signal b4 : STD_LOGIC_VECTOR (3 downto 0);

COMPONENT full_adder is
    Port ( x1 : in STD_LOGIC;
           y1 : in STD_LOGIC;
           ci : in STD_LOGIC;
           sumf : out STD_LOGIC;
           carryf : out STD_LOGIC);
END COMPONENT;

begin
b4 <= not in2s;
U1  : full_adder PORT MAP (in1s(0),b4(0),'1',sums(0),c1);
U2  : full_adder PORT MAP(in1s(1),b4(1),c1,sums(1),c2);
U3  : full_adder PORT MAP (in1s(2), b4(2), c2, sums(2), c3);
U4  : full_adder PORT MAP (in1s(3), b4(3), c3, sums(3), c4s);




end Behavioral;
