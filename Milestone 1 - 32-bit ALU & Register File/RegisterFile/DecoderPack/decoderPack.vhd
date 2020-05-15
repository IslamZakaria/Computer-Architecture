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

package decoderPack is
component decoder is
generic(n : natural := 32);
port(
	Selector : in std_logic_vector(4 downto 0);
	result : out std_logic_vector(n-1 downto 0)

);
end component;
end decoderPack;
