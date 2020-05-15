--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package AluPack is
component alu1 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           oper : in  STD_LOGIC_VECTOR (3 downto 0);
           res : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;

end AluPack;


