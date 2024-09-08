<details><summary> Measuring the CPU perfomance </summary>
  
The following file contain the RISCV ASM code for the ALU C program. The CPU performance is calucated at the top of the file 
(https://github.com/srimoyi911/RISCV/blob/main/week2/ALU_asm.txt) 
</details>  
<details> <summary> Chipcron tool </summary>
  
 In week2 session2 the RISC-HDP cohort  we were introduced to the chipcron tool developed by the 
 trainer of the course Mayank Kabra
 This tool is a an automatic RISCV core generator tool which spits out synthesizable RTL for a RISC 
 core based on the specification provided by the user Core's specification. The tool also generates a 
 verilog testbench to test the core 
 This session's task for each member is to identify an IoT application for which they 
 would like to generate a RISC core using the ChipCron tool
 <ol> <li> <strong>The interface</strong> -  Tool provides a script based interface to the user where the user can modify a json file to specify their RISC-V core. 
 Fields in the json file are self explainatory ..e.g. Alu_dist actually indicates the number of pipeline stages needed.
The idea is to choose the parameters wisely and fully based on the exact needs of the application program. For example if the code only has 50 instructions then a small instruction memory will be sufficient and PC size of 6 bits can cater to the needs of the program. Similarly we can choose what all instructions our code needs and only implement those instructions in the microarchitecture of our core 
   <img width="563" alt="image" src=https://github.com/user-attachments/assets/af58e3a8-93c3-49cb-935f-b5e90233b4c4) </li> 
   <li> <strong>Steps to use the tool</strong></li> Once the json file and asm file for the application is ready upload it at http://16.16.202.21/ , wait for a few seconds and the tool will prompt back with two verilog files namely processor.v and testbench.v . The user can download it and copy these files at an appropriate location </ol>
