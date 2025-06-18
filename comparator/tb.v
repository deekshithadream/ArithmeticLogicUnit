module tb_Comparator; 
 reg [2:0]a; 
 reg [2:0]b; 
 wire [1:0]grth,lsth,eq,none; 
 
 Comparator dut(a,b,grth,lsth,eq,none); 
  initial begin 
   a=0; 
   b=0; 
   #10; 
  end 
 
  always begin 
   a=$random; 
   b=$random; 
   #50; 
  end 
endmodule

// Initially, a and b are set to 0.
// Every 50 time units, new random values are assigned to a and b.
// The Comparator module evaluates the relationship between a and b.
// The comparison results (grth, lsth, eq) are updated accordingly.
// The testbench runs indefinitely, testing various values
