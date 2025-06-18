module Comparator(input [2:0]a, 
    input [2:0]b, 
    output reg [1:0] 
grth,lsth,eq,none); 
 
 always@(a,b) 
 begin 
 grth=0; sth=0; eq=0; none=0;  
 if (a==b) 
                eq=2'b01; 
 else if (a>b) 
  grth=2'b01; 
 else if (a<b) 
  lsth=2'b01; 
 else 
  none=2'b01; 
 end 
endmodule 

//This Verilog module implements a 3-bit comparator, which compares two inputs (a and b) and sets the appropriate output flags based on the comparison result.
//This 3-bit comparator efficiently determines whether a is greater than, less than, or equal to b.
// It could be further improved by removing redundant conditions and using a case statement for better readability.
