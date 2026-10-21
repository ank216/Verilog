module encoder_8to3(
input wire [7:0] decimal,
output wire [2:0] binary
);

assign binary[0] = | decimal[1] | decimal[3] | decimal[5] | decimal[7];
assign binary[1] = | decimal[2] | decimal[3] | decimal[6] | decimal[7];
assign binary[2] = | decimal[4] | decimal[5] | decimal[6] | decimal[7];

//Can always rely on boolean expressions but have to find a way to keep the code clean
endmodule