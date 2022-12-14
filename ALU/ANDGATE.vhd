
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ANDGATE is
    Port ( in1v : in STD_LOGIC_VECTOR (3 downto 0);
           in2v : in STD_LOGIC_VECTOR (3 downto 0);
           resv : out STD_LOGIC_VECTOR (3 downto 0));
end ANDGATE;

architecture Behavioral of ANDGATE is

begin

resv <= in1v and in2v;

end Behavioral;
