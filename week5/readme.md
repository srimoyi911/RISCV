In this week we create a Custom RISC-V core that will run our application bare metal program that was created last week using inline assembly code.
Tasks completed 

1.  Take the tested and optimized inline assembly code from last week.
   [posture_detect.asm](https://github.com/srimoyi911/RISCV/blob/main/week4/posture_detect.asm)
2.  Created all.json file to generate the chipcron processor code
3.  Generated processor core and testbench
   
   ![image](https://github.com/user-attachments/assets/8d85de0b-7c40-472a-94d8-42e46d0ecae2)
   

5.  Updated GPIO size and GPIO pin mappings in processor.v
    output reg write_done ;
    output reg [5:0] instructions ;
    input wire [11:0] input_gpio_pins; //size 10 bits, but given 12bits to match with TB reset condition
    output reg [5:0] output_gpio_pins;
    always @(posedge clk)
    begin
    output_pins = {19'b0, top_gpio_pins[13:12],input_gpio_pins[11:10],top_gpio_pins[9:8], input_gpio_pins[7:0]} ;
    output_gpio_pins = {top_gpio_pins[13:12],2'b0,top_gpio_pins[9:8]};
    write_done = writing_inst_done ;
    instructions = write_inst_count[2:0];
    end 

7. Updated input and output width in testbench.v
   reg [11:0] input_wires; 
   wire [5:0] output_wires ; 

9. Initialized input pins to 1 at the reset
   initial begin
    rst=1;
    rst_pin=1; 
    neg_rst = 1; 
    resetn  = 1'b0;
    clk     = 1'b0;
    neg_clk = 1; 
    neg_rst = ~clk ;
    uart_rxd = 1'b1;
    neg_clk = 1'b1; 
    input_wires = 12'b110011111111;
    #4000
    resetn = 1'b1;
    rst=0;
    neg_rst = 0; 
    rst_pin = 0 ;
   
10. Compiled and simulated the design using following command

    iverilog -o processor_test testbench.v processor.v

    vvp processor_test
  
11. Simulation result
    ![image](https://github.com/user-attachments/assets/8d66d0c8-57b6-4426-ae76-2fe033c0962c)






