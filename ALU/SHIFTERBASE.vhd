library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity shifterbase is
    Port ( snot : in STD_LOGIC;
           bit1 : in STD_LOGIC;
           shift : in STD_LOGIC;
           bit2 : in STD_LOGIC;
           out1 : out STD_LOGIC);
end shifterbase;

architecture Behavioral of shifterbase is
signal c1,c2 : STD_LOGIC;

begin

c1 <= (not snot) and bit1;
c2 <= shift and bit2;
out1 <= c1 or c2;


end Behavioral;
