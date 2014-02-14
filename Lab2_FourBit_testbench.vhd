--------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: C2C Cassie McPeek
--
-- Create Date:   08:01:11 02/13/2014
-- Design Name:   
-- Module Name:   C:/Users/C15Cassandra.McPeek/Documents/School/Junior Year/Second Semester/ECE 281/Lab2_CMM/Lab2_FourBit_testbench.vhd
-- Project Name:  Lab2_CMM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Lab2_Fourbit_add
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY Lab2_FourBit_testbench IS
END Lab2_FourBit_testbench;
 
ARCHITECTURE behavior OF Lab2_FourBit_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Lab2_Fourbit_add
    PORT(
         Ain : IN  std_logic_vector(3 downto 0);
         Bin : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         Sum : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Ain : std_logic_vector(3 downto 0) := (others => '0');
   signal Bin : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Lab2_Fourbit_add PORT MAP (
          Ain => Ain,
          Bin => Bin,
          Cin => Cin,
          Sum => Sum,
          Cout => Cout
        );

   ---- Clock process definitions
   --<clock>_process :process
   --begin
		--<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      --wait for 100 ns;	

      --wait for <clock>_period*10;

      -- insert stimulus here 
		Ain <= "0000";
		Bin <= "0000";
		Cin <= '0';
			
			for I in 0 to 15 loop
				for J in 0 to 15 loop
					wait for 1 ns;
		
	
					assert (Sum = Ain + Bin) report "ERROR" & 
						integer'image(to_integer(unsigned((Ain+Bin)))) & "when Ain =" & 
						integer'image(to_integer(unsigned((Ain)))) & "and when Bin =" & 
						integer'image(to_integer(unsigned((Bin)))) & "The sum is" & 
						integer'image(to_integer(unsigned((Sum)))) 
						severity failure;
						Bin <= Bin + "0001";
					end loop;
					Ain <= Ain + "0001";
					end loop;
					Cin <= '1';
					
					for I in 0 to 15 loop
						for J in 0 to 15 loop
							wait for 1 ns;
							
							assert (Sum = Ain - Bin) report "Different" &
							integer'image(to_integer(unsigned((Ain-Bin)))) & "when Ain = " &
							integer'image(to_integer(unsigned((Ain)))) & "and when Bin =" & 
							integer'image(to_integer(unsigned((Bin)))) & "The difference is" & 
							integer'image(to_integer(unsigned((Sum)))) severity failure;
							
							
							Bin <= Bin + "0001";
							end loop;
							Ain <= Ain + "0001";
							end loop;
				
					report "Test worked properly";
					
  
   end process;

END;
