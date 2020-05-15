----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:13:25 05/01/2019 
-- Design Name: 
-- Module Name:    Mux32 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux32 is
port(
	reg0,reg1,reg2,reg3,reg4,reg5,reg6,reg7,reg8,reg9 : in std_logic_vector(31 downto 0 );
	reg10,reg11,reg12,reg13,reg14,reg15,reg16,reg17,reg18,reg19 : in std_logic_vector(31 downto 0 );
	reg20,reg21,reg22,reg23,reg24,reg25,reg26,reg27,reg28,reg29 : in std_logic_vector(31 downto 0 );
	reg30,reg31 : in std_logic_vector(31 downto 0);
	selector : in std_logic_vector(4 downto 0);
	output : out std_logic_vector(31 downto 0)
);
end Mux32;

architecture Behavioral of Mux32 is

begin
output <=	reg0 when Selector="00000" else --0
				reg1 when Selector="00001" else --1
				reg2 when Selector="00010" else --2
				reg3 when Selector="00011" else --3
				reg4 when Selector="00100" else --4
				reg5 when Selector="00101" else --5
				reg6 when Selector="00110" else --6
				reg7 when Selector="00111" else --7
				reg8 when Selector="01000" else --8
				reg9 when Selector="01001" else --9				 
				reg10 when Selector="01010" else --10				 
				reg11 when Selector="01011" else --11
				reg12 when Selector="01100" else --12
				reg13 when Selector="01101" else --13
				reg14 when Selector="01110" else --14
				reg15 when Selector="01111" else --15
				reg16 when Selector="10000" else --16
				reg17 when Selector="10001" else --17
				reg18 when Selector="10010" else --18
				reg19 when Selector="10011" else --19				 
				reg20 when Selector="10100" else --20				 
				reg21 when Selector="10101" else --21
				reg22 when Selector="10110" else --22
				reg23 when Selector="10111" else --23
				reg24 when Selector="11000" else --24
				reg25 when Selector="11001" else --25
				reg26 when Selector="11010" else --26
				reg27 when Selector="11011" else --27
				reg28 when Selector="11100" else --28
				reg29 when Selector="11101" else --29
				reg30 when Selector="11110" else --30
				reg31 when Selector="11111" ; --31
end Behavioral;

