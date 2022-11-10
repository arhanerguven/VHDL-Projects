library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_MUX is
    Port ( s0 : in STD_LOGIC;
           s1 : in STD_LOGIC;
           s2 : in STD_LOGIC;
           input1, input2 : in STD_LOGIC_VECTOR (3 downto 0);
           out1 : out STD_LOGIC_VECTOR (3 downto 0));
end ALU_MUX;

architecture Behavioral of ALU_MUX is
signal s : STD_LOGIC_VECTOR(2 downto 0);
signal add,sub,shift2,comp,eql,and1,or1,xor1 : STD_LOGIC_VECTOR(3 downto 0);

COMPONENT adder is
 Port ( in1a : in STD_LOGIC_VECTOR (3 downto 0);
           in2a : in STD_LOGIC_VECTOR (3 downto 0);
           suma : out STD_LOGIC_VECTOR (3 downto 0));
END COMPONENT;

COMPONENT subtractor is
Port ( in1s : in STD_LOGIC_VECTOR (3 downto 0);
           in2s : in STD_LOGIC_VECTOR (3 downto 0);
           sums : out STD_LOGIC_VECTOR (3 downto 0));
END COMPONENT;

COMPONENT realcomparator is
Port ( in1r : in STD_LOGIC_VECTOR (3 downto 0);
           in2r : in STD_LOGIC_VECTOR (3 downto 0);
           outr : out STD_LOGIC_VECTOR (3 downto 0));
END COMPONENT;

COMPONENT shiftertop is
 Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           res : out STD_LOGIC_VECTOR (3 downto 0));
END COMPONENT;

COMPONENT ANDGATE is
Port ( in1v : in STD_LOGIC_VECTOR (3 downto 0);
           in2v : in STD_LOGIC_VECTOR (3 downto 0);
           resv : out STD_LOGIC_VECTOR (3 downto 0));
END COMPONENT;

COMPONENT ORGATE is
Port ( in1o : in STD_LOGIC_VECTOR (3 downto 0);
           in2o : in STD_LOGIC_VECTOR (3 downto 0);
           reso : out STD_LOGIC_VECTOR (3 downto 0));
END COMPONENT;

COMPONENT XORGATE is
Port ( in1x : in STD_LOGIC_VECTOR (3 downto 0);
           in2x : in STD_LOGIC_VECTOR (3 downto 0);
           outx : out STD_LOGIC_VECTOR (3 downto 0));
END COMPONENT;

COMPONENT comparator is
   Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           r : out STD_LOGIC_VECTOR (3 downto 0));
END COMPONENT;

begin
s(0) <= s0;
s(1) <= s1;
s(2) <= s2;

U1: adder PORT MAP (input1, input2, add);
U2: subtractor PORT MAP (input1, input2,sub);
U3: realcomparator PORT MAP (input1,input2, comp);
U4: shiftertop PORT MAP (input1, input2, shift2);
U5: ANDGATE PORT MAP (input1, input2, and1);
U6: ORGATE PORT MAP (input1, input2, or1);
U7: XORGATE PORT MAP (input1, input2, xor1);
U8: comparator PORT MAP (input1, input2, eql);

process(s,add,sub,comp,shift2,and1,or1,xor1,eql)

begin

if s = "000" then
out1 <= add;
elsif s = "001" then
out1 <= sub;
elsif s = "010" then
out1 <= comp;
elsif s = "011" then
out1 <= shift2;
elsif s = "100" then
out1 <= and1;
elsif s = "101" then
out1 <= or1;
elsif s = "110" then
out1 <= xor1;
elsif s = "111" then
out1 <= eql;
else
out1 <= "0000";
end if;
end process;


end Behavioral;

