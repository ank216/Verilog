module decoder3to8(
input wire [2:0] binary,
output wire[7:0] decimal
);


// assign decimal[0] = (~binary[2]) & (~binary[1]) & (~binary[0])  ; 
// assign decimal[1] = (~binary[2]) & (~binary[1]) & (binary[0])  ; 
// assign decimal[2] = (~binary[2]) & (binary[1]) & (~binary[0])  ; 
// assign decimal[3] = (~binary[2]) & (binary[1]) & (binary[0])  ; 
// assign decimal[4] = (binary[2]) & (~binary[1]) & (~binary[0])  ; 
// assign decimal[5] = (binary[2]) & (~binary[1]) & (binary[0])  ; 
// assign decimal[6] = (binary[2]) & (binary[1]) & (~binary[0])  ; 
// assign decimal[7] = (binary[2]) & (binary[1]) & (binary[0])  ; 


assign decimal = 8'b1 << binary; 
endmodule