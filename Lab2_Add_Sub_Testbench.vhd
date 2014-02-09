--------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: C2C Cassie McPeek
--
-- Create Date:   11:01:59 02/09/2014
-- Design Name:   
-- Module Name:   C:/Users/C15Cassandra.McPeek/Documents/School/Junior Year/Second Semester/ECE 281/Lab2_CMM/Lab2_Add_Sub_Testbench.vhd
-- Project Name:  Lab2_CMM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Lab2_Add_Sub
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.STD_LOGIC_UNSIGNED.ALL;
USE ieee.STD_LOGIC_ARITH.ALL;
 
ENTITY Lab2_Add_Sub_Testbench IS
END Lab2_Add_Sub_Testbench;
 
ARCHITECTURE behavior OF Lab2_Add_Sub_Testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Lab2_Add_Sub
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Cin : IN  std_logic;
         Sum : OUT  std_logic;
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   --signal A : std_logic := '0';
   --signal B : std_logic := '0';
   --signal Cin : std_logic := '0';

 	--Outputs
   signal Sum : std_logic;
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
 signal Count : STD_LOGIC_VECTOR (2 downto 0) := "000";
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Lab2_Add_Sub PORT MAP (
          A => Count(0),
          B => Count(1),
          Cin => Count(2),
          Sum => Sum,
          Cout => Cout
        );

   -- Clock process definitions
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
		-- use loop to go through each signal
		for I in 0 to 7 loop
			wait for 1 ns;
			Count <= Count +1;
		end loop;

      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
