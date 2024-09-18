<details> <summary> Functional simulation of the processor design bypassing UART </summary>
1. Simulation of the POSTURE_DETECTION specific RISC-V design bypassing UART mechanism of loading the program instructions in memory the 
   Following steps were performed to do this task.
   
   a. In processor.v make following change, writing_inst_done=1 

   <img width="253" alt="image" src="https://github.com/user-attachments/assets/99d33fb9-a9da-4587-aeb2-297291ae772a">

   b. In testbench.v comment out the follwoing uart image loading and verification code

   <img width="287" alt="image" src="https://github.com/user-attachments/assets/6d08ec23-7117-4b2b-ab8d-3d9a3a8ffd79">

   c. use following commands to compile and simulate the design
   
   iverilog -o processor_bypass_uart testbench.v processor.v
   ./processor_bypass_uart
</details>   
 <details> <summary> Waveform output with the assembly code </summary>
  Below is the waveform output with tb inputs and outputs added alongwith the inputs and outputs of various black box modules like ID, 
  ID pipeline , ALU etc

  <img width="912" alt="image" src="https://github.com/user-attachments/assets/4ec49515-5474-4f91-89af-1fdea0778072">

</details>

<details> <summary> Synthesis of the processor design </summary>

</details>
  
