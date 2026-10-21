module demux_1to4(
    input reg [2:0] data,
    input [1:0] sel_lines,
    output reg [3:0] y
);

always @(*)
begin

    y = 4'b0000;

    case (sel_lines)
        2'b00: y[0] = data;
        2'b01: y[1] = data;
        2'b10: y[2] = data;
        2'b11: y[3] = data;
        default: y = 4'b0000;
    endcase
end

endmodule