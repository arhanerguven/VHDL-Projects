library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity realcomparator is
    Port ( in1r : in STD_LOGIC_VECTOR (3 downto 0);
           in2r : in STD_LOGIC_VECTOR (3 downto 0);
           outr : out STD_LOGIC_VECTOR (3 downto 0));
end realcomparator;

architecture Behavioral of realcomparator is

signal k0,k1,k2,k4 : std_logic;

COMPONENT comparatorbase is
 Port ( a : in STD_LOGIC_VECTOR (1 downto 0);
           b : in STD_LOGIC_VECTOR (1 downto 0);
           g : out STD_LOGIC);
END COMPONENT;

COMPONENT comparatoreq is
 Port ( a : in STD_LOGIC_VECTOR (1 downto 0);
           b : in STD_LOGIC_VECTOR (1 downto 0);
           o : out STD_LOGIC);
END COMPONENT;

begin

U1: comparatorbase PORT MAP (in1r(1 downto 0), in2r(1 downto 0), k0);
U2: comparatoreq PORT MAP (in1r(3 downto 2), in2r(3 downto 2), k1);
U3: comparatorbase PORT MAP (in1r(3 downto 2), in2r(3 downto 2), k2);
outr(0) <= (k0 and k1) or k2;
outr(1) <= (k0 and k1) or k2;
outr(2) <= (k0 and k1) or k2;
outr(3) <= (k0 and k1) or k2;

end Behavioral;
