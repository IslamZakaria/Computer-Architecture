----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:32:54 05/01/2019 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
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
use work.RegPack.all;
use work.decoderPack.all;
use work.muxpack.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile is
    Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is
signal tmp : std_logic_vector(31 downto 0);

signal   R0 : std_logic_vector(31 downto 0);
signal	R1 : std_logic_vector(31 downto 0);
signal	R2 : std_logic_vector(31 downto 0);
signal	R3 : std_logic_vector(31 downto 0);
signal	R4 : std_logic_vector(31 downto 0);
signal	R5 : std_logic_vector(31 downto 0);
signal	R6 : std_logic_vector(31 downto 0);
signal	R7 : std_logic_vector(31 downto 0);
signal	R8 : std_logic_vector(31 downto 0);
signal	R9 : std_logic_vector(31 downto 0);	
signal	R10 : std_logic_vector(31 downto 0);
signal	R11 : std_logic_vector(31 downto 0);
signal	R12 : std_logic_vector(31 downto 0);
signal	R13 : std_logic_vector(31 downto 0);
signal	R14 : std_logic_vector(31 downto 0);
signal	R15 : std_logic_vector(31 downto 0);
signal	R16 : std_logic_vector(31 downto 0);
signal	R17 : std_logic_vector(31 downto 0);
signal	R18 : std_logic_vector(31 downto 0);
signal	R19 : std_logic_vector(31 downto 0);
	
signal	R20 : std_logic_vector(31 downto 0);
signal	R21 : std_logic_vector(31 downto 0);
signal	R22 : std_logic_vector(31 downto 0);
signal	R23 : std_logic_vector(31 downto 0);
signal	R24 : std_logic_vector(31 downto 0);
signal	R25 : std_logic_vector(31 downto 0);
signal	R26 : std_logic_vector(31 downto 0);
signal	R27 : std_logic_vector(31 downto 0);
signal	R28 : std_logic_vector(31 downto 0);
signal	R29 : std_logic_vector(31 downto 0);
	
signal	R30 : std_logic_vector(31 downto 0);
signal	R31 : std_logic_vector(31 downto 0);

signal	o1 : std_logic_vector(31 downto 0);
signal	o2 : std_logic_vector(31 downto 0);
	 
begin

	d : decoder port map(write_sel,tmp);

	Reading0 : reg port map(write_data,clk,tmp(0) and write_ena , '0' , '0',R0 );
	Reading1 : reg port map(write_data,clk,tmp(1) and write_ena , '0' , '0',R1 );
	Reading2 : reg port map(write_data,clk,tmp(2) and write_ena , '0' , '0',R2 );
	Reading3 : reg port map(write_data,clk,tmp(3) and write_ena , '0' , '0',R3 );
	Reading4 : reg port map(write_data,clk,tmp(4) and write_ena , '0' , '0',R4 );
	Reading5 : reg port map(write_data,clk,tmp(5) and write_ena , '0' , '0',R5 );
	Reading6 : reg port map(write_data,clk,tmp(6) and write_ena , '0' , '0',R6 );
	Reading7 : reg port map(write_data,clk,tmp(7) and write_ena , '0' , '0',R7 );
	Reading8 : reg port map(write_data,clk,tmp(8) and write_ena , '0' , '0',R8 );
	Reading9 : reg port map(write_data,clk,tmp(9) and write_ena , '0' , '0',R9 );
	
	Reading10 : reg port map(write_data,clk,tmp(10) and write_ena , '0' , '0',R10 );
	Reading11 : reg port map(write_data,clk,tmp(11) and write_ena , '0' , '0',R11 );
	Reading12 : reg port map(write_data,clk,tmp(12) and write_ena , '0' , '0',R12 );
	Reading13 : reg port map(write_data,clk,tmp(13) and write_ena , '0' , '0',R13 );
	Reading14 : reg port map(write_data,clk,tmp(14) and write_ena , '0' , '0',R14 );
	Reading15 : reg port map(write_data,clk,tmp(15) and write_ena , '0' , '0',R15 );
	Reading16 : reg port map(write_data,clk,tmp(16) and write_ena , '0' , '0',R16 );
	Reading17 : reg port map(write_data,clk,tmp(17) and write_ena , '0' , '0',R17 );
	Reading18 : reg port map(write_data,clk,tmp(18) and write_ena , '0' , '0',R18 );
	Reading19 : reg port map(write_data,clk,tmp(19) and write_ena , '0' , '0',R19 );
	
	Reading20 : reg port map(write_data,clk,tmp(20) and write_ena , '0' , '0',R20 );
	Reading21 : reg port map(write_data,clk,tmp(21) and write_ena , '0' , '0',R21 );
	Reading22 : reg port map(write_data,clk,tmp(22) and write_ena , '0' , '0',R22 );
	Reading23 : reg port map(write_data,clk,tmp(23) and write_ena , '0' , '0',R23 );
	Reading24 : reg port map(write_data,clk,tmp(24) and write_ena , '0' , '0',R24 );
	Reading25 : reg port map(write_data,clk,tmp(25) and write_ena , '0' , '0',R25 );
	Reading26 : reg port map(write_data,clk,tmp(26) and write_ena , '0' , '0',R26 );
	Reading27 : reg port map(write_data,clk,tmp(27) and write_ena , '0' , '0',R27 );
	Reading28 : reg port map(write_data,clk,tmp(28) and write_ena , '0' , '0',R28 );
	Reading29 : reg port map(write_data,clk,tmp(29) and write_ena , '0' , '0',R29 );
	
	Reading30 : reg port map(write_data,clk,tmp(30) and write_ena , '0' , '0' ,R30 );
	Reading31 : reg port map(write_data,clk,tmp(31) and write_ena , '0' , '0' ,R31 );
		
	mux1: mux32 port map( R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,R15,R16,R17,R18,R19,R20,R21,R22,R23,R24,R25,R26,R27,R28,R29,R30,R31,read_sel1,o1);
	mux2: mux32 port map( R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,R15,R16,R17,R18,R19,R20,R21,R22,R23,R24,R25,R26,R27,R28,R29,R30,R31,read_sel2,o2);
	
	data1<=o1;
	data2<=o2;


end Behavioral;

