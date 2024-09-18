

// 
// Module: tb
// 
// Notes:
// - Top level simulation testbench.
//

//`timescale 1ns/1ns
//`define WAVES_FILE "./work/waves-rx.vcd"

module tb();
    
reg        clk          ; // Top level system clock input.
reg rst;
reg neg_clk; 
reg neg_rst ; 
reg        resetn       ;
reg        uart_rxd     ; // UART Recieve pin.

reg        uart_rx_en   ; // Recieve enable
//wire [8:0] res;
wire       uart_rx_break; // Did we get a BREAK message?
wire       uart_rx_valid; // Valid data recieved and available.
wire [7:0] uart_rx_data ; // The recieved data.
wire [31:0] inst ; 
wire [31:0] inst_mem ; 

reg rst_pin ; 
wire write_done ; 


// Bit rate of the UART line we are testing.
localparam BIT_RATE = 9600;
localparam BIT_P    = (1000000000/BIT_RATE);


// Period and frequency of the system clock.
localparam CLK_HZ   = 50000000;
localparam CLK_P    = 1000000000/ CLK_HZ;

reg slow_clk = 0;


// Make the clock tick.
always begin #(CLK_P/2) clk  = ~clk; end   
always begin #(CLK_P/2) neg_clk  = ~neg_clk; end     
always begin #(CLK_P*2) slow_clk <= !slow_clk;end



task write_instruction;
    input [31:0] instruction;
    begin
            @(posedge clk);
            send_byte(instruction[7:0]);
            check_byte(instruction[7:0]);
            @(posedge clk);
            send_byte(instruction[15:8]);
            check_byte(instruction[15:8]);
            
            @(posedge clk);
            send_byte(instruction[23:16]);
            check_byte(instruction[23:16]);
            
            @(posedge clk);
            send_byte(instruction[31:24]);
            check_byte(instruction[31:24]);
    end
    endtask

task send_byte;
    input [7:0] to_send;
    integer i;
    begin


        #BIT_P;  uart_rxd = 1'b0;
        for(i=0; i < 8; i = i+1) begin
            #BIT_P;  uart_rxd = to_send[i];
        end
        #BIT_P;  uart_rxd = 1'b1;
        #1000;
    end
endtask


// Checks that the output of the UART is the value we expect.
integer passes = 0;
integer fails  = 0;
task check_byte;
    input [7:0] expected_value;
    begin
        if(uart_rx_data == expected_value) begin
            passes = passes + 1;
            $display("%d/%d/%d [PASS] Expected %b and got %b", 
                     passes,fails,passes+fails,
                     expected_value, uart_rx_data);
        end else begin
            fails  = fails  + 1;
            $display("%d/%d/%d [FAIL] Expected %b and got %b", 
                     passes,fails,passes+fails,
                     expected_value, uart_rx_data);
        end
    end
endtask


initial 
begin 
    $dumpfile("waveform.vcd");
    $dumpvars(0,tb);
end 

reg [11:0] input_wires; 
wire [5:0] output_wires ; 
wire [2:0] pc ; 


reg [7:0] to_send;
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
  
/*
    uart_rx_en = 1'b1;
    @(posedge slow_clk);write_instruction(32'h00000000); 
    @(posedge slow_clk);write_instruction(32'h00000000); 
    @(posedge slow_clk);write_instruction(32'hf9010113); 
    @(posedge slow_clk);write_instruction(32'h06112623); 
    @(posedge slow_clk);write_instruction(32'h06412423); 
    @(posedge slow_clk);write_instruction(32'h07010213); 
    @(posedge slow_clk);write_instruction(32'h06400413); 
    @(posedge slow_clk);write_instruction(32'hfe822023); 
    @(posedge slow_clk);write_instruction(32'h00100413); 
    @(posedge slow_clk);write_instruction(32'hfc822e23); 
    @(posedge slow_clk);write_instruction(32'h06400313); 
    @(posedge slow_clk);write_instruction(32'hfe022283); 
    @(posedge slow_clk);write_instruction(32'h284000ef); 
    @(posedge slow_clk);write_instruction(32'hfc522c23); 
    @(posedge slow_clk);write_instruction(32'h0ff00413); 
    @(posedge slow_clk);write_instruction(32'hfc822a23); 
    @(posedge slow_clk);write_instruction(32'hfd422403); 
    @(posedge slow_clk);write_instruction(32'h0084f4b3); 
    @(posedge slow_clk);write_instruction(32'h00048413); 
    @(posedge slow_clk);write_instruction(32'hfc822823); 
    @(posedge slow_clk);write_instruction(32'h00100413); 
    @(posedge slow_clk);write_instruction(32'hfc822623); 
    @(posedge slow_clk);write_instruction(32'hfcc22403); 
    @(posedge slow_clk);write_instruction(32'h00841413); 
    @(posedge slow_clk);write_instruction(32'hfc822423); 
    @(posedge slow_clk);write_instruction(32'heff00413); 
    @(posedge slow_clk);write_instruction(32'hfc822223); 
    @(posedge slow_clk);write_instruction(32'hfc422403); 
    @(posedge slow_clk);write_instruction(32'hfc822383); 
    @(posedge slow_clk);write_instruction(32'h0084f4b3); 
    @(posedge slow_clk);write_instruction(32'h0074e4b3); 
    @(posedge slow_clk);write_instruction(32'hfe022623); 
    @(posedge slow_clk);write_instruction(32'h0100006f); 
    @(posedge slow_clk);write_instruction(32'hfec22403); 
    @(posedge slow_clk);write_instruction(32'h00140413); 
    @(posedge slow_clk);write_instruction(32'hfe822623); 
    @(posedge slow_clk);write_instruction(32'hfec22383); 
    @(posedge slow_clk);write_instruction(32'h00b00413); 
    @(posedge slow_clk);write_instruction(32'hfe7456e3); 
    @(posedge slow_clk);write_instruction(32'hfc422403); 
    @(posedge slow_clk);write_instruction(32'h0084f4b3); 
    @(posedge slow_clk);write_instruction(32'h0004e493); 
    @(posedge slow_clk);write_instruction(32'h00a4d413); 
    @(posedge slow_clk);write_instruction(32'hfc822023); 
    @(posedge slow_clk);write_instruction(32'hfc022403); 
    @(posedge slow_clk);write_instruction(32'h00147413); 
    @(posedge slow_clk);write_instruction(32'hfc822023); 
    @(posedge slow_clk);write_instruction(32'hfe022423); 
    @(posedge slow_clk);write_instruction(32'hfa022e23); 
    @(posedge slow_clk);write_instruction(32'hfa022c23); 
    @(posedge slow_clk);write_instruction(32'hfc022383); 
    @(posedge slow_clk);write_instruction(32'h00100413); 
    @(posedge slow_clk);write_instruction(32'h02839463); 
    @(posedge slow_clk);write_instruction(32'hfe822403); 
    @(posedge slow_clk);write_instruction(32'h00140413); 
    @(posedge slow_clk);write_instruction(32'hfe822423); 
    @(posedge slow_clk);write_instruction(32'h0004e493); 
    @(posedge slow_clk);write_instruction(32'h00a4d413); 
    @(posedge slow_clk);write_instruction(32'hfc822023); 
    @(posedge slow_clk);write_instruction(32'hfc022403); 
    @(posedge slow_clk);write_instruction(32'h00147413); 
    @(posedge slow_clk);write_instruction(32'hfc822023); 
    @(posedge slow_clk);write_instruction(32'hfd822303); 
    @(posedge slow_clk);write_instruction(32'hfe822283); 
    @(posedge slow_clk);write_instruction(32'h1b4000ef); 
    @(posedge slow_clk);write_instruction(32'hfa522c23); 
    @(posedge slow_clk);write_instruction(32'hfb822303); 
    @(posedge slow_clk);write_instruction(32'h6b800293); 
    @(posedge slow_clk);write_instruction(32'h1fc000ef); 
    @(posedge slow_clk);write_instruction(32'h00028413); 
    @(posedge slow_clk);write_instruction(32'h3e800313); 
    @(posedge slow_clk);write_instruction(32'h00040293); 
    @(posedge slow_clk);write_instruction(32'h194000ef); 
    @(posedge slow_clk);write_instruction(32'hfa522e23); 
    @(posedge slow_clk);write_instruction(32'h00100413); 
    @(posedge slow_clk);write_instruction(32'hfc822623); 
    @(posedge slow_clk);write_instruction(32'hfcc22403); 
    @(posedge slow_clk);write_instruction(32'h00941413); 
    @(posedge slow_clk);write_instruction(32'hfc822423); 
    @(posedge slow_clk);write_instruction(32'hdff00413); 
    @(posedge slow_clk);write_instruction(32'hfa822a23); 
    @(posedge slow_clk);write_instruction(32'hfb422403); 
    @(posedge slow_clk);write_instruction(32'hfc822383); 
    @(posedge slow_clk);write_instruction(32'h0084f4b3); 
    @(posedge slow_clk);write_instruction(32'h0074e4b3); 
    @(posedge slow_clk);write_instruction(32'hfe022623); 
    @(posedge slow_clk);write_instruction(32'h0100006f); 
    @(posedge slow_clk);write_instruction(32'hfec22403); 
    @(posedge slow_clk);write_instruction(32'h00140413); 
    @(posedge slow_clk);write_instruction(32'hfe822623); 
    @(posedge slow_clk);write_instruction(32'hfec22383); 
    @(posedge slow_clk);write_instruction(32'h00b00413); 
    @(posedge slow_clk);write_instruction(32'hfe7456e3); 
    @(posedge slow_clk);write_instruction(32'hfb422403); 
    @(posedge slow_clk);write_instruction(32'h0084f4b3); 
    @(posedge slow_clk);write_instruction(32'h0004e493); 
    @(posedge slow_clk);write_instruction(32'h00b4d413); 
    @(posedge slow_clk);write_instruction(32'hfa822823); 
    @(posedge slow_clk);write_instruction(32'hfb022403); 
    @(posedge slow_clk);write_instruction(32'h00147413); 
    @(posedge slow_clk);write_instruction(32'hfa822823); 
    @(posedge slow_clk);write_instruction(32'hfe022223); 
    @(posedge slow_clk);write_instruction(32'hfa022623); 
    @(posedge slow_clk);write_instruction(32'hfa022423); 
    @(posedge slow_clk);write_instruction(32'hfb022383); 
    @(posedge slow_clk);write_instruction(32'h00100413); 
    @(posedge slow_clk);write_instruction(32'h02839463); 
    @(posedge slow_clk);write_instruction(32'hfe422403); 
    @(posedge slow_clk);write_instruction(32'h00140413); 
    @(posedge slow_clk);write_instruction(32'hfe822223); 
    @(posedge slow_clk);write_instruction(32'h0004e493); 
    @(posedge slow_clk);write_instruction(32'h00b4d413); 
    @(posedge slow_clk);write_instruction(32'hfa822823); 
    @(posedge slow_clk);write_instruction(32'hfb022403); 
    @(posedge slow_clk);write_instruction(32'h00147413); 
    @(posedge slow_clk);write_instruction(32'hfa822823); 
    @(posedge slow_clk);write_instruction(32'hfd822303); 
    @(posedge slow_clk);write_instruction(32'hfe422283); 
    @(posedge slow_clk);write_instruction(32'h0dc000ef); 
    @(posedge slow_clk);write_instruction(32'hfa522423); 
    @(posedge slow_clk);write_instruction(32'hfa822303); 
    @(posedge slow_clk);write_instruction(32'h6b800293); 
    @(posedge slow_clk);write_instruction(32'h124000ef); 
    @(posedge slow_clk);write_instruction(32'h00028413); 
    @(posedge slow_clk);write_instruction(32'h3e800313); 
    @(posedge slow_clk);write_instruction(32'h00040293); 
    @(posedge slow_clk);write_instruction(32'h0bc000ef); 
    @(posedge slow_clk);write_instruction(32'hfa522623); 
    @(posedge slow_clk);write_instruction(32'hfffff437); 
    @(posedge slow_clk);write_instruction(32'hfff40413); 
    @(posedge slow_clk);write_instruction(32'hfa822223); 
    @(posedge slow_clk);write_instruction(32'hffffe437); 
    @(posedge slow_clk);write_instruction(32'hfff40413); 
    @(posedge slow_clk);write_instruction(32'hfa822023); 
    @(posedge slow_clk);write_instruction(32'hfbc22383); 
    @(posedge slow_clk);write_instruction(32'hfac22403); 
    @(posedge slow_clk);write_instruction(32'h40838433); 
    @(posedge slow_clk);write_instruction(32'hfdc22383); 
    @(posedge slow_clk);write_instruction(32'h04744663); 
    @(posedge slow_clk);write_instruction(32'h00100413); 
    @(posedge slow_clk);write_instruction(32'hf8822e23); 
    @(posedge slow_clk);write_instruction(32'hf9c22403); 
    @(posedge slow_clk);write_instruction(32'h00c41413); 
    @(posedge slow_clk);write_instruction(32'hf8822c23); 
    @(posedge slow_clk);write_instruction(32'hfa422403); 
    @(posedge slow_clk);write_instruction(32'hf9822383); 
    @(posedge slow_clk);write_instruction(32'h0084f4b3); 
    @(posedge slow_clk);write_instruction(32'h0074e4b3); 
    @(posedge slow_clk);write_instruction(32'h00100413); 
    @(posedge slow_clk);write_instruction(32'hf8822a23); 
    @(posedge slow_clk);write_instruction(32'hf9422403); 
    @(posedge slow_clk);write_instruction(32'h00d41413); 
    @(posedge slow_clk);write_instruction(32'hf8822823); 
    @(posedge slow_clk);write_instruction(32'hfa022403); 
    @(posedge slow_clk);write_instruction(32'hf9022383); 
    @(posedge slow_clk);write_instruction(32'h0084f4b3); 
    @(posedge slow_clk);write_instruction(32'h0074e4b3); 
    @(posedge slow_clk);write_instruction(32'hfa422403); 
    @(posedge slow_clk);write_instruction(32'h0084f4b3); 
    @(posedge slow_clk);write_instruction(32'hfa022403); 
    @(posedge slow_clk);write_instruction(32'h0084f4b3); 
    @(posedge slow_clk);write_instruction(32'hfe022623); 
    @(posedge slow_clk);write_instruction(32'h0100006f); 
    @(posedge slow_clk);write_instruction(32'hfec22403); 
    @(posedge slow_clk);write_instruction(32'h00140413); 
    @(posedge slow_clk);write_instruction(32'hfe822623); 
    @(posedge slow_clk);write_instruction(32'hfd022303); 
    @(posedge slow_clk);write_instruction(32'h3e800293); 
    @(posedge slow_clk);write_instruction(32'h06c000ef); 
    @(posedge slow_clk);write_instruction(32'h00028393); 
    @(posedge slow_clk);write_instruction(32'hfec22403); 
    @(posedge slow_clk);write_instruction(32'hfe83d0e3); 
    @(posedge slow_clk);write_instruction(32'hda1ff06f); 
    @(posedge slow_clk);write_instruction(32'hfd010113); 
    @(posedge slow_clk);write_instruction(32'h02412623); 
    @(posedge slow_clk);write_instruction(32'h03010213); 
    @(posedge slow_clk);write_instruction(32'hfc522e23); 
    @(posedge slow_clk);write_instruction(32'hfc622c23); 
    @(posedge slow_clk);write_instruction(32'hfe022623); 
    @(posedge slow_clk);write_instruction(32'h0200006f); 
    @(posedge slow_clk);write_instruction(32'hfdc22383); 
    @(posedge slow_clk);write_instruction(32'hfd822403); 
    @(posedge slow_clk);write_instruction(32'h40838433); 
    @(posedge slow_clk);write_instruction(32'hfc822e23); 
    @(posedge slow_clk);write_instruction(32'hfec22403); 
    @(posedge slow_clk);write_instruction(32'h00140413); 
    @(posedge slow_clk);write_instruction(32'hfe822623); 
    @(posedge slow_clk);write_instruction(32'hfdc22383); 
    @(posedge slow_clk);write_instruction(32'hfd822403); 
    @(posedge slow_clk);write_instruction(32'hfc83dee3); 
    @(posedge slow_clk);write_instruction(32'hfec22403); 
    @(posedge slow_clk);write_instruction(32'h00040293); 
    @(posedge slow_clk);write_instruction(32'h02c12203); 
    @(posedge slow_clk);write_instruction(32'h03010113); 
    @(posedge slow_clk);write_instruction(32'h00008067); 
    @(posedge slow_clk);write_instruction(32'hfd010113); 
    @(posedge slow_clk);write_instruction(32'h02112623); 
    @(posedge slow_clk);write_instruction(32'h02412423); 
    @(posedge slow_clk);write_instruction(32'h03010213); 
    @(posedge slow_clk);write_instruction(32'hfc522e23); 
    @(posedge slow_clk);write_instruction(32'hfc622c23); 
    @(posedge slow_clk);write_instruction(32'hfe022623); 
    @(posedge slow_clk);write_instruction(32'hfd822403); 
    @(posedge slow_clk);write_instruction(32'h00041663); 
    @(posedge slow_clk);write_instruction(32'h00000413); 
    @(posedge slow_clk);write_instruction(32'h0300006f); 
    @(posedge slow_clk);write_instruction(32'hfd822403); 
    @(posedge slow_clk);write_instruction(32'h02805463); 
    @(posedge slow_clk);write_instruction(32'hfd822403); 
    @(posedge slow_clk);write_instruction(32'hfff40413); 
    @(posedge slow_clk);write_instruction(32'h00040313); 
    @(posedge slow_clk);write_instruction(32'hfdc22283); 
    @(posedge slow_clk);write_instruction(32'hfbdff0ef); 
    @(posedge slow_clk);write_instruction(32'h00028393); 
    @(posedge slow_clk);write_instruction(32'hfdc22403); 
    @(posedge slow_clk);write_instruction(32'h00838433); 
    @(posedge slow_clk);write_instruction(32'h0040006f); 
    @(posedge slow_clk);write_instruction(32'h00040293); 
    @(posedge slow_clk);write_instruction(32'h02c12083); 
    @(posedge slow_clk);write_instruction(32'h02812203); 
    @(posedge slow_clk);write_instruction(32'h03010113); 
    @(posedge slow_clk);write_instruction(32'h00008067); 
    @(posedge slow_clk);write_instruction(32'hffffffff); 
    @(posedge slow_clk);write_instruction(32'hffffffff);*/ 

     $display("Test Results:");
     $display("    PASSES: %d", passes);
     $display("    FAILS : %d", fails);
    #100000
    $display("Finish simulation at time %d", $time);
    $finish;
end

 wrapper dut (
.clk        (clk          ), // Top level system clock input.
.resetn       (resetn       ), // Asynchronous active low reset.
.uart_rxd     (uart_rxd     ), // UART Recieve pin.
.uart_rx_en   (uart_rx_en   ), // Recieve enable
.uart_rx_break(uart_rx_break), // Did we get a BREAK message?
.uart_rx_valid(uart_rx_valid), // Valid data recieved and available.
.uart_rx_data (uart_rx_data ), 
.input_gpio_pins(input_wires), 
.output_gpio_pins(output_wires), 
.write_done(write_done)
); 



endmodule