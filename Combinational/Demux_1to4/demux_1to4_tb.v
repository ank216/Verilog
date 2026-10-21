module demux_1to4_tb();

reg [2:0]dat;
reg [1:0]sel;
wire [3:0] y;
integer i;

demux_1to4 dut(
    .data(dat),
    .sel_lines(sel),
    .y(y)
);

initial 
begin

    dat = 3'b110;
    for(i = 0;i<4;i=i+1)
    begin
    sel = i;    
    #10;
    $display("%b  travelled through  %b select lines",dat, sel);
    end
end

endmodule