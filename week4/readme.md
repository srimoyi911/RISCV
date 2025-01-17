<details><summary> Project tasks for this week </summary>
This week's task is to add inline assembly code to create bare metal C application for sitting
posture detection and then compile it using riscv32 compiler and generate assembly text file. 

</details> <details> <summary> Application C code with inline assembly </summary>

 [posture_detect_inline_assembly.c](https://github.com/srimoyi911/RISCV/blob/main/week4/posture_detect_inline_assembly.c)

 </details>
<details><summary>Output of the application code with debug statements </summary>
 <li>When the distance measured by head sensor and back sensor placed in the chair are equal. As can be seen the led and buzzer output are zero:</li> 
   <img width="563" alt="image" src=https://github.com/user-attachments/assets/c42ba52f-4cf5-41cb-8623-45a82d49ee25>
 <li>When the difference between distance measured by head sensor and back sensor is more than user defined distance, hence, led and buzzer output are set:</li>
    <img width="563" alt="image" src=https://github.com/user-attachments/assets/da5244ce-1cbb-4cbc-85c6-e035e7cec4c3>

 </details>
<details><summary>Application code with optimizations, that is, removing the libraries and the debug statements and * and / operators. This is done, because bare metal programming desnot support external C libraries and RISCV32 bit processor doesnot support multiplication 
 and division operators </summary>

[posture_detect_inline_assembly_optimized.c](https://github.com/srimoyi911/RISCV/blob/main/week4/posture_detect_inline_assembly_optimized.c)

</details>
<details><summary>Commands used for compilation and dissassembly </summary>
  
  1. riscv64-unknown-elf-gcc -mabi=ilp32 -march=rv32i -nostdlib -ffreestanding  -o test.o posture_detect_inline_assembly_new.c 
  2. riscv64-unknown-elf-objdump -d test.o | less >> posture_detect.asm </li>
 
</details>
<details><summary>Full Assembly code for application </summary>

 [posture_detect.asm](https://github.com/srimoyi911/RISCV/blob/main/week4/posture_detect.asm)



</details>
<details><summary>Issues faced while debugging the application code  </summary>
 
1. If Ofast flag is used while compliation,it will skip some of the instructions in the assembly language and will also shuffle the program sequence. This will give undesired results.
2. X30 reg is a temporary register, so any changes in the x30 register will only be visible inside the scope where it is passed. So, have used x27 register which is a saved register.
3. RiscV32 doesnot support * and / operators. Compilation gives error.

</details> <details><summary>The instruction statistics from the assembly code </summary>


<ol> <li>Total number of instructions used in assembly code - <strong>231</strong> </li>  <li> Total number of unique instructions used in the program - <strong>21</strong> </li> 



<li>List of Unique Instructions produced by the compiler</li>
<ol> <li> <strong>addi</strong></li>
 <li> <strong>sw </strong></li>
<li> <strong>j</strong> </li>
<li> <strong>lw</strong> </li>
<li> <strong>sub </strong> </li>
<li> <strong>bge </strong> </li>
<li> <strong> mv </strong> </li>
<li> <strong>bnez </strong> </li>
<li> <strong>li </strong> </li>
 <li> <strong>lui </strong> </li>
<li> <strong>blez </strong> </li>
<li> <strong>add </strong> </li>
<li> <strong> jal </strong> </li>
<li> <strong>and </strong> </li>
<li> <strong>slli </strong> </li>
<li> <strong>or </strong> </li>
<li> <strong>srli </strong> </li>
 <li> <strong>ori </strong> </li>
 <li> <strong>andi </strong> </li>
<li> <strong>bne </strong> </li> 
 <li> <strong>blt </strong> </li>
</ol>
</ol>
</details>
