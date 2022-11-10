library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity XORGATE is
    Port ( in1x : in STD_LOGIC_VECTOR (3 downto 0);
           in2x : in STD_LOGIC_VECTOR (3 downto 0);
           outx : out STD_LOGIC_VECTOR (3 downto 0));
end XORGATE;

architecture Behavioral of XORGATE is

begin

outx <= in1x xor in2x;

end Behavioral;
