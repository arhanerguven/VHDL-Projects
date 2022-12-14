library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           r : out STD_LOGIC_VECTOR (3 downto 0));
end comparator;

architecture Behavioral of comparator is

signal s1,s2,s3,s4 : STD_LOGIC;

begin

s1 <= a(0) xnor b(0);
s2 <= a(1) xnor b(1);
s3 <= a(2) xnor b(2);
s4 <= a(3) xnor b(3);

r(0) <= (s1 and s2 and s3 and s4);
r(1) <= (s1 and s2 and s3 and s4);
r(2) <= (s1 and s2 and s3 and s4);
r(3) <= (s1 and s2 and s3 and s4);


end Behavioral;
