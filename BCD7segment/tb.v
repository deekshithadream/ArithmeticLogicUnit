module tb_Bcd_to_7segment; 
 // Inputs 
 reg A; 
 reg B; 
 reg C; 
 reg D; 
 
 // Outputs 
 wire a, b, c, d, e, f, g; 
 
 // Instantiate the Unit Under Test (UUT) 
Bcd_to_7segment uut (.a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .A(A), .B(B), .C(C), .D(D));
initial begin 
  // Initialize Inputs 
  A = B=C=D=0; 
  #100; 
 end 
 always begin 
  #100; 
  A=$random; 
  B=$random; 
  C=$random; 
  D=$random; 
 end 
endmodule 

//The testbench initializes the inputs (A, B, C, D) to 0 at the beginning.
//It generates new values randomly (within the 0-9 range).
//Every 100 time units, the values of A, B, C, D change.
//The $monitor command displays the updated input-output mapping in the simulation log.
//The simulation runs for 1000 time units before stopping ($finish).
