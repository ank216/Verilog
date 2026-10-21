module decoder3to8_tb();

reg [2:0] bin;
wire [7:0] dec;

integer i;

decoder3to8 dut(
.binary(bin),
.decimal(dec)
);

initial begin
    for(i=0;i<8;i=i+1)
    begin
        bin = i;
        #10;
        $display("%d  %b ",bin, dec);
    
    end

end



endmodule