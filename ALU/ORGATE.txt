library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ORGATE is
    Port ( in1o : in STD_LOGIC_VECTOR (3 downto 0);
           in2o : in STD_LOGIC_VECTOR (3 downto 0);
           reso : out STD_LOGIC_VECTOR (3 downto 0));
end ORGATE;

architecture Behavioral of ORGATE is

begin

reso <= in1o or in2o;

end Behavioral;
