
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

package muxPack is

component Mux32 is
port(
	reg0,reg1,reg2,reg3,reg4,reg5,reg6,reg7,reg8,reg9 : in std_logic_vector(31 downto 0 );
	reg10,reg11,reg12,reg13,reg14,reg15,reg16,reg17,reg18,reg19 : in std_logic_vector(31 downto 0 );
	reg20,reg21,reg22,reg23,reg24,reg25,reg26,reg27,reg28,reg29 : in std_logic_vector(31 downto 0 );
	reg30,reg31 : in std_logic_vector(31 downto 0);
	selector : in std_logic_vector(4 downto 0);
	output : out std_logic_vector(31 downto 0)
);
end component;
end muxPack;
