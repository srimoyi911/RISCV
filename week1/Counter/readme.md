### Assignment Statement – 
-	Go to Godbolt and run the counter.c code with different compilers like RISC-V , X86, Adrino, ARM etc and note down the observations
-	Change values/code in the c code and note down the changes in the assembly take multiple screen shots
Counter– 

##### Observations about the C Code– 
1.	The program increments a counter every 0.5 microsecond and resets the counter when the count reaches 30 and then the counter stops 
2.	Function  uses clock , while loops and print strings 

##### Observations about the RISCV-64 bit assembly code – 
1.	The compiler compiles the program in the same order in which it’s written in C code
2.	Compiler break downs the program in segments or blocks like .L1: L2: 
3.	One segment for each function or loop 
4.	Each of these segments contains the assembly version of the C code which are the sequences of load, store ,mathematical operations, function calls and branch instruction 
5.	Total 81 lines of assembly code

![image](https://github.com/user-attachments/assets/f1897876-44ee-4afe-a832-41c14ece1e80)
 
 ###### Observation after changing the numeric values in the input matrix – 
1.	Before changing the input N, that specifies the count number.

  ![image](https://github.com/user-attachments/assets/7835354c-f219-4890-8f5e-ffbf24c78879)


2.	After Changing the input N, changes are reflected in the assembly code .

  ![image](https://github.com/user-attachments/assets/a4403cda-a3e9-4d00-b7d3-e0b62ccbe518)


#### X86 , 64-bit compiler
##### Assembly Code Observation- 
1.	More verbose  and hence more understandable as compared to RISC-V  assembly
2.	Total 73 lines of code.
3.	Similar observation about segments as RISC-V assembly code 
  
![image](https://github.com/user-attachments/assets/0280ff1e-4284-4b1a-a3e6-af2afe78aa3c)

3.	Observation of assembly code on changing the numeric values in the input counter
##### Before change – 

![image](https://github.com/user-attachments/assets/3bdd41f3-58b1-4c98-ba6c-80dad7944876)


 ##### After change observations –
1.	Changes are reflected in the assembly code.
![image](https://github.com/user-attachments/assets/6499d942-e514-4eab-9a1a-8e9c11c25a42)



