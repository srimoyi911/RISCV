`timescale 1ns/1ns
module tb();
  logic [3:0] a,b;
  logic [15:0] out;
  int operation;
  
  int i;
  alu ALU(a,b,operation,out);
  initial begin
      a= 4'b1010;
      b=4'b0110;
      operation=1;
      #2;
    $display(" MON: a: %d, b: %d, op: %d",a,b,operation,out);
      a=4'b1011;
      b=4'b0110;
      operation=2;
      #2;
    $display(" MON: a: %d, b: %d, op: %d",a,b,operation,out);
     operation=3;
      a=4'b1011;
      b=4'b1110;
      #2;
    $display(" MON: a: %d, b: %d, op: %d",a,b,operation,out);
      a=4'b1100;
      b=4'b0110;
     operation=4;
      #2;
     $display(" a: %d, b: %d, op: %d",a,b,operation,out);
 
  end
  
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;  
  end
  
  initial begin
    #100;
    $finish();
  end
  
endmodule
