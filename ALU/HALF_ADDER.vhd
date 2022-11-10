
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity half_adder is
    Port ( in1 : in STD_LOGIC;
           in2 : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry : out STD_LOGIC);
end half_adder;

architecture Behavioral of half_adder is

begin
 sum <= in1 xor in2;
 carry <= in1 and in2;

end Behavioral;
