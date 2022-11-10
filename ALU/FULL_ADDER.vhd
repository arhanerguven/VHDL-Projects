library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port ( x1 : in STD_LOGIC;
           y1 : in STD_LOGIC;
           ci : in STD_LOGIC;
           sumf : out STD_LOGIC;
           carryf : out STD_LOGIC);
end full_adder;

architecture Structure of full_adder is
signal s0,c0,c2 : STD_LOGIC;

COMPONENT half_adder is
    PORT (in1 : in STD_LOGIC;
           in2 : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry : out STD_LOGIC);
END COMPONENT;
 
begin
U1 : half_adder PORT MAP (x1, y1, s0, c0);
U2: half_adder PORT MAP (ci, s0, sumf, c2);
carryf <= c2 or c0; 

end Structure;
