ECE281_Lab2
===========

Lab2_Add_Sub

# Overview
The purpose of this lab is to create a single bit adder with the proper sum and carryout, and then cascade four single bit adders together.

# Truth Table
![alt text] (https://raw.github.com/CassieMcPeek/ECE281_Lab2/master/TruthTable.JPG "Truth Table")

# Schematic
![alt text] (https://raw.github.com/CassieMcPeek/ECE281_Lab2/master/Lab2_Add_Sub_Schematic.JPG "Schematic")

# Testbench Output
![alt text] (https://raw.github.com/CassieMcPeek/ECE281_Lab2/master/Lab2_Add_Sub_Screenshot.JPG "Output")

# Testing
I had to play around with the view of the testbench output in order to get all of the outputs for sum and cout to be visibile. I also had to google to make sure the I had the proper syntax for the loop in the testbench VHDL code.

## Main Lab
# Schematic
![alt text] (https://raw.github.com/CassieMcPeek/ECE281_Lab2/master/Lab2_Fourbit_schematic.JPG "Schematic")

# Testbench output
![alt text] (https://raw.github.com/CassieMcPeek/ECE281_Lab2/master/Lab2_Fourbit_Testbench_Screenshot.JPG "Testbench")
This testbench output also includes the console showing that the test worked properly for all 512 pieces

# Design Process/Debugging/Testing
Once I had the schematic for the four bit adder, which Captain Silva assisted me with, I began writing the VHDL code for it. The components to define the four bits was straight forward with the output of the previous bit being the input for the next bit. After that was completed, I began researching how to conver the adder into a subtractor in the same code. I was able to check for an overflow by setting the Cout to the carryout of the last bit. I had first had that set to the carryout of bit 3 or bit 2, but C3C Goodbody informed me that that would not work because the carryout of bit 2 would be the carry in to bit 3, and therefore could not be the final carryout. The subtractor code simply performed the 2's compliment to the code. And then in the ucf file, I had to program one of the buttons to perform the subtraction when pushed. I then tested my circuit by checking that there would be a carry when 5 bits were on and then ensuring that the proper 2's compliment was done to each scenario. 

For the testbench, I also had to do a lot of research on the syntax and structure of the for loops. After I had figured that out, I had to review my class notes for the assert statements, and I also ran into trouble because I first assigned the integers to signed bits, but I soon realized that they needed to be unsigned bits, especially since that was the ieee library I was using. After I had the tesbench working for the adder part, I then added essentially the same code just slightly altered for the subtractor portion. Once I had the syntax checked off, I ran the simulation and recieved the results above with the report that the test worked properly. 

# Demonstration
