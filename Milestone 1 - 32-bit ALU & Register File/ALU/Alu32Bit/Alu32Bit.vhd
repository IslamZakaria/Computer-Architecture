----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:39:51 04/30/2019 
-- Design Name: 
-- Module Name:    Alu32Bit - Behavioral 
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
use work.AluPack.All;

entity Alu is
generic (n:natural := 32);
port(
			data1 : IN  std_logic_vector(n-1 downto 0);
         data2 : IN  std_logic_vector(n-1 downto 0);
         aluop : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         dataout : OUT  std_logic_vector(n-1 downto 0);
         cflag : OUT  std_logic;
         zflag : OUT  std_logic;
         oflag : OUT  std_logic
	
);
end Alu;

architecture Behavioral of Alu is
signal tmp : std_logic_vector(n-1 downto 0);
signal tmpOut:std_logic_vector(n-1 downto 0);

begin

	mAlu0 : Alu1 port map(data1(0),data2(0),Cin,aluop,tmp(0),tmpout(0));	--0
	mAlu1 : Alu1 port map(data1(1),data2(1),tmpOut(0),aluop,tmp(1),tmpout(1));	--1
	mAlu2 : Alu1 port map(data1(2),data2(2),tmpOut(1),aluop,tmp(2),tmpout(2));	--2
	mAlu3 : Alu1 port map(data1(3),data2(3),tmpOut(2),aluop,tmp(3),tmpout(3));	--3
	mAlu4 : Alu1 port map(data1(4),data2(4),tmpOut(3),aluop,tmp(4),tmpout(4));	--4
	mAlu5 : Alu1 port map(data1(5),data2(5),tmpOut(4),aluop,tmp(5),tmpout(5));	--5
	mAlu6 : Alu1 port map(data1(6),data2(6),tmpOut(5),aluop,tmp(6),tmpout(6));	--6
	mAlu7 : Alu1 port map(data1(7),data2(7),tmpOut(6),aluop,tmp(7),tmpout(7));	--7
	mAlu8 : Alu1 port map(data1(8),data2(8),tmpOut(7),aluop,tmp(8),tmpout(8));	--8
	mAlu9 : Alu1 port map(data1(9),data2(9),tmpOut(8),aluop,tmp(9),tmpout(9));	--9
	
	mAlu10 : Alu1 port map(data1(10),data2(10),tmpOut(9),aluop,tmp(10),tmpout(10));	--10
	mAlu11 : Alu1 port map(data1(11),data2(11),tmpOut(10),aluop,tmp(11),tmpout(11));	--11
	mAlu12 : Alu1 port map(data1(12),data2(12),tmpOut(11),aluop,tmp(12),tmpout(12));	--12
	mAlu13 : Alu1 port map(data1(13),data2(13),tmpOut(12),aluop,tmp(13),tmpout(13));	--13
	mAlu14 : Alu1 port map(data1(14),data2(14),tmpOut(13),aluop,tmp(14),tmpout(14));	--14
	mAlu15 : Alu1 port map(data1(15),data2(15),tmpOut(14),aluop,tmp(15),tmpout(15));	--15
	mAlu16 : Alu1 port map(data1(16),data2(16),tmpOut(15),aluop,tmp(16),tmpout(16));	--16
	mAlu17 : Alu1 port map(data1(17),data2(17),tmpOut(16),aluop,tmp(17),tmpout(17));	--17
	mAlu18 : Alu1 port map(data1(18),data2(18),tmpOut(17),aluop,tmp(18),tmpout(18));	--18
	mAlu19 : Alu1 port map(data1(19),data2(19),tmpOut(18),aluop,tmp(19),tmpout(19));	--19

	mAlu20 : Alu1 port map(data1(20),data2(20),tmpOut(19),aluop,tmp(20),tmpout(20));	--20
	mAlu21 : Alu1 port map(data1(21),data2(21),tmpOut(20),aluop,tmp(21),tmpout(21));	--21
	mAlu22 : Alu1 port map(data1(22),data2(22),tmpOut(21),aluop,tmp(22),tmpout(22));	--22
	mAlu23 : Alu1 port map(data1(23),data2(23),tmpOut(22),aluop,tmp(23),tmpout(23));	--23
	mAlu24 : Alu1 port map(data1(24),data2(24),tmpOut(23),aluop,tmp(24),tmpout(24));	--24
	mAlu25 : Alu1 port map(data1(25),data2(25),tmpOut(24),aluop,tmp(25),tmpout(25));	--25
	mAlu26 : Alu1 port map(data1(26),data2(26),tmpOut(25),aluop,tmp(26),tmpout(26));	--26
	mAlu27 : Alu1 port map(data1(27),data2(27),tmpOut(26),aluop,tmp(27),tmpout(27));	--27
	mAlu28 : Alu1 port map(data1(28),data2(28),tmpOut(27),aluop,tmp(28),tmpout(28));	--28
	mAlu29 : Alu1 port map(data1(29),data2(29),tmpOut(28),aluop,tmp(29),tmpout(29));	--29
	
	mAlu30 : Alu1 port map(data1(30),data2(30),tmpOut(29),aluop,tmp(30),tmpout(30));	--30
	mAlu31 : Alu1 port map(data1(31),data2(31),tmpOut(30),aluop,tmp(31),tmpout(31));	--31
	
	dataout <= tmp;
	cflag <= tmpOut(31);
	oflag <= tmpout(30) xor tmpout(31);
	zflag <= '1' when tmp = "00000000000000000000000000000000" else '0';

end Behavioral;

