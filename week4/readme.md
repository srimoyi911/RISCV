<details><summary> Project tasks for this week </summary>
This week's task is to add inline assembly code to create bare metal C application for sitting
posture detection, compile it using riscv32 compiler and generate asm text file. 

</details> <details> <summary> Application C code with inline assembly </summary>
[posture_detect.asm](https://github.com/srimoyi911/RISCV/blob/main/week4/posture_detect_inline_assembly.c))

</details>
<details><summary>Full Assembly code for application  without any compiler optimization </summary>
 
[posture_detect.asm](./posture_detect.asm)


</details> <details><summary>The instruction statistics from the assembly code </summary>


<ol> <li>Total number of instructions used in assembly code - <strong>159</strong> </li>  <li> Total number of unique instructions used in the program - <strong>17</strong> </li> 



<li>List of Unique Instructions produced by the compiler</li>
<ol> <li> <strong>lui</strong></li>
 <li> <strong>li </strong></li>
<li> <strong>addi</strong> </li>
<li> <strong>not</strong> </li>
<li> <strong>and </strong> </li>
<li> <strong>andi </strong> </li>
<li> <strong> beqz </strong> </li>
<li> <strong>srli </strong> </li>
<li> <strong>bnez </strong> </li>
<li> <strong>add </strong> </li>
<li> <strong>slli </strong> </li>
<li> <strong>or </strong> </li>
<li> <strong> j </strong> </li>
<li> <strong>ret </strong> </li>
<li> <strong>mv </strong> </li>
<li> <strong>sw </strong> </li>
<li> <strong>lw </strong> </li>
</ol>
</ol>
</details>
