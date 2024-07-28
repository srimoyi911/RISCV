module alu( a,b,operation,out);
  
  input logic [3:0] a,b;
  input int operation;
  output logic[15:0] out;
  parameter ADD=4'b0001,
  SUB=4'b0010,
  MUL=4'b0011,
  DIV=4'b0100;
  always@(operation)begin
    case(operation)
     ADD: out=a+b;
     SUB: out=a-b;
     MUL:out=a*b;
     DIV:out=a/b;
    endcase
 
  end
  initial begin
    $monitor("DUT: a: %d, b: %d,op:%d, out: %d",a,b,operation,out);
  end
      
    
  
endmodule
    
