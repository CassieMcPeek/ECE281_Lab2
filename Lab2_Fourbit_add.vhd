----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: C2C Cassie McPeek
-- 
-- Create Date:    10:51:17 02/10/2014 
-- Design Name: 		Four Bit adder
-- Module Name:    Lab2_Fourbit_add - Structural 
-- Project Name:   Lab 2
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

entity Lab2_Fourbit_add is
    Port ( Ain : in  STD_LOGIC_VECTOR (3 downto 0);
           Bin : in  STD_LOGIC_VECTOR (3 downto 0);
			  Cin : in STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (3 downto 0);
			  Cout : out STD_LOGIC);
end Lab2_Fourbit_add;

architecture Structural of Lab2_Fourbit_add is

-- Component Statements
component Lab2_Add_Sub is
	Port (A : in STD_LOGIC;
			B : in STD_LOGIC;
			Cin : in STD_LOGIC;
			Sum : out STD_LOGIC;
			Cout : out STD_LOGIC);
end component Lab2_Add_Sub;

-- declare signals
signal Add_or_sub: STD_LOGIC_VECTOR (3 downto 0);
signal carryout : STD_LOGIC_VECTOR (3 downto 0);

begin
 -- Instantiation Statements
 Bit0: component Lab2_Add_Sub 
	port map (A => Ain(0),
				 B => Add_or_sub(0),
				 Cin => Cin,
				 Sum => Sum(0),
				 Cout => carryout(0));
				 
 Bit1: component Lab2_Add_Sub
	port map(A => Ain(1),
				B => Add_or_sub(1),
				Cin => carryout(0),
				Sum => Sum(1),
				Cout => carryout(1));

 Bit2: component Lab2_Add_Sub
	port map(A => Ain(2),
				B => Add_or_sub(2),
				Cin => carryout(1),
				Sum => Sum(2),
				Cout => carryout(2));

	
 Bit3: component Lab2_Add_Sub
	port map(A => Ain(3),
				B => Add_or_sub(3),
				Cin => carryout(2),
				Sum => Sum(3),
				Cout => carryout(3));	
				
	-- check for overflow
	Cout <= carryout(3);
	
	-- subtractor code
	Add_or_sub(0) <= (Bin(0) and (not Cin)) or ((not Bin(0)) and Cin);
	Add_or_sub(1) <= (Bin(1) and (not Cin)) or ((not Bin(1)) and Cin);
	Add_or_sub(2) <= (Bin(2) and (not Cin)) or ((not Bin(2)) and Cin);
	Add_or_sub(3) <= (Bin(3) and (not Cin)) or ((not Bin(3)) and Cin);
	
	


end Structural;

