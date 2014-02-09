----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: C2C Cassie McPeek
-- 
-- Create Date:    10:51:11 02/07/2014 
-- Design Name: 	Adder_Subtractor
-- Module Name:    Lab2_Add_Sub - Behavioral 
-- Project Name:  Lab 2
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

entity Lab2_Add_Sub is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
			  Cin : in STD_LOGIC;
			  Sum : out STD_LOGIC;
			  Cout : out STD_LOGIC
			  );
end Lab2_Add_Sub;

architecture Behavioral of Lab2_Add_Sub is

begin

Sum <= A xor B xor Cin;
Cout <= (A and B) or (A and Cin) or (B and Cin);

end Behavioral;

