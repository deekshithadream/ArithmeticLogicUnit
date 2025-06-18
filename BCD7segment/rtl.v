module Bcd_to_7segment( input A,B,C,D, 
output a, b, c, d, e, f, g); 
 
assign a = A | C | (B&D) | ((~B)&(~D)); 
assign b = (~B)| (C&D) | ((~C)&(~D)); 
assign c = B | (~C) | (D); 
assign d = A | ((~B)&(~D)) | ((~B)&C) | (C&(~D)) 
| (B&(~C)&D); 
assign e = ((~B)&(~D)) | C&(~D) ; 
assign f = A | B&(~C) | ((C)&(~D)) | (B&(~D)); 
assign g = A | B&(~C) | (~B)&C | (C&(~D)); 
 
endmodule

//Each segment (a–g) is assigned a Boolean equation that defines when it should be active (1) based on input values:
// assign a = A | C | (B&D) | ((~B)&(~D)); → Controls segment 'a'.
// assign b = (~B)| (C&D) | ((~C)&(~D)); → Controls segment 'b'.
// assign c = B | (~C) | (D); → Controls segment 'c'.
// assign d = A | ((~B)&(~D)) | ((~B)&C) | (C&(~D)) | (B&(~C)&D); → Controls segment 'd'.
// assign e = ((~B)&(~D)) | C&(~D); → Controls segment 'e'.
// assign f = A | B&(~C) | (C&(~D)) | (B&(~D)); → Controls segment 'f'.
// assign g = A | B&(~C) | (~B)&C | (C&(~D)); → Controls segment 'g'.
