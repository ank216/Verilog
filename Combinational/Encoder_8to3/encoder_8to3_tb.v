module encoder_8to3_tb();

reg [7:0] dec;
wire [2:0] bin;

integer i;

encoder_8to3 dut(
    .binary(bin),
    .decimal(dec)
);

initial 
begin
    
 for(i = 0; i<8;i=i+1)   
 begin
    dec = 8'b1 << i;

    #10;

    $display("%b   %b", dec, bin);

 end

end




endmodule