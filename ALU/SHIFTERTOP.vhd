library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shiftertop is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           res : out STD_LOGIC_VECTOR (3 downto 0));
end shiftertop;

architecture Behavioral of shiftertop is

signal y3,y2,y1,y0 : STD_LOGIC;

COMPONENT shifterbase is
Port ( snot  : in STD_LOGIC;
           bit1 : in STD_LOGIC;
           shift : in STD_LOGIC;
           bit2 : in STD_LOGIC;
           out1 : out STD_LOGIC);
END COMPONENT;


begin


U1: shifterbase PORT MAP ('1', a(3), '1', a(2),y3);
U2: shifterbase PORT MAP ('1', a(2), '1', a(1),y2);
U3: shifterbase PORT MAP ('1', a(1), '1', a(0), y1);
U4: shifterbase PORT MAP ('1', a(0), '1', a(3), y0);

res(0) <= y0;
res(1) <= y1;
res(2) <= y2;
res(3) <= y3;


end Behavioral;
