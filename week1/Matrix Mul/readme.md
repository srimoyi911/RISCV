### Assignment Statement – 
-	Run the Matrix_mult.c code on Godbolt with different compilers like RISC-V , X86 etc and note down your observations
-	Change values/code in the c code and note down the changes in the assembly take multiple screen shots

####  Matrix multiplication of 2 user defined matrix with N*M size – 
##### Observations about the C++ Code– 
1.	This Program creates two 3x4 and 4x3 sized matrices
2.	Uses nested for loops for doing the matrix multiplication. Also, prints if the matrix multiplication is invalid or not
3.	Run the Program with RISC-V (32-bit) gcc13.2.0
##### Observations about the RISCV- 64 bit assembly code – 
1.	The compiler compiles the program in the same order in which it’s written in C++ code
2.	Compiler break downs the program in segments or blocks like .LC1:, .LC2: 
3.	One segment for each for loop 
4.	Each of these segments contains the assembly version of the c code which are the sequences of load, store ,mathematical operations, function calls and branch instruction 
5.	Total 562 lines of assembly code
 
 ##### Observation after changing the numeric values in the input matrix – 
1.	Before changing the input 
![image](https://github.com/user-attachments/assets/c33b1402-771d-4d59-a606-1a6b30166b8d)



2.	After Changing the input , changes are reflected in the assembly code.
   ![image](https://github.com/user-attachments/assets/57df1da3-e88b-4c88-bb97-ebfeae0345b3)





#### X86 , 64-bit compiler
##### Assembly Code Observation- 
1.	More verbose  and hence more understandable as compared to RISC-V  assembly
2.	Total 128 lines of code which is less than RISC-V assembly code
3.	Similar observation about segments as RISC-V assembly code 
  

3.	Observation of assembly code on changing the numeric values in the input matrices
##### Before change – 
 

 ##### After change observations –
1.	Changes are reflected in the assembly code , however unlike RISC-V assembly code , the total number of lines in the assembly code remain the same to 128 lines.
 
