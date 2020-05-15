----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:54:00 03/13/2012 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU1 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           oper : in  STD_LOGIC_VECTOR (3 downto 0);
           res : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end ALU1;

architecture Behavioral of ALU1 is
signal tmpres: std_logic_vector(1 downto 0) ;
signal tb: STD_LOGIC ;
begin
--------------
-- BAD DESIGN
--------------
	tb <= b when oper = "0010" else
			not(b) when oper = "0110" ; 
			
	tmpres <= ('0' & a) + ('0' & tb) + ('0' & cin);

	res <= 	a and b when oper = "0000" else
				a or b when oper = "0001" else
				tmpres(0) when oper = "0010" else
				tmpres(0) when oper = "0110" ;
				
	cout <= tmpres(1);
end Behavioral;