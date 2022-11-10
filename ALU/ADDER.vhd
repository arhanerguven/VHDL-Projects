library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder is
    Port ( in1a : in STD_LOGIC_VECTOR (3 downto 0);
           in2a : in STD_LOGIC_VECTOR (3 downto 0);
           suma : out STD_LOGIC_VECTOR (3 downto 0));
end adder;

architecture Behavioral of adder is

signal c1,c2,c3,c4a : STD_LOGIC;

COMPONENT full_adder is
    Port ( x1 : in STD_LOGIC;
           y1 : in STD_LOGIC;
           ci : in STD_LOGIC;
           sumf : out STD_LOGIC;
           carryf : out STD_LOGIC);
END COMPONENT;

begin
U1  : full_adder PORT MAP (in1a(0),in2a(0),'0',suma(0),c1);
U2  : full_adder PORT MAP(in1a(1),in2a(1),c1,suma(1),c2);
U3  : full_adder PORT MAP (in1a(2), in2a(2), c2, suma(2), c3);
U4  : full_adder PORT MAP (in1a(3), in2a(3), c3, suma(3), c4a);

end Behavioral;
