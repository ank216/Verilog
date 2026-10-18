module four_bit_RCA(
input [3:0] a,
input [3:0] b,
input reg cin,

output [3:0] out_sum,
output carry_out
);


reg [2:0] internalcarry;

full_adder fa1(
    .a(a[0]),
    .b(b[0]),
    .cin(cin),
    .sum(out_sum[0]),
    .cout(internalcarry[0])
);

full_adder fa2(
    .a(a[1]),
    .b(b[1]),
    .cin(internalcarry[0]),
    .sum(out_sum[1]),
    .cout(internalcarry[1])
);

full_adder fa3(
    .a(a[2]),
    .b(b[2]),
    .cin(internalcarry[1]),
    .sum(out_sum[2]),
    .cout(internalcarry[2])
);

full_adder fa4(
    .a(a[3]),
    .b(b[3]),
    .cin(internalcarry[2]),
    .sum(out_sum[3]),
    .cout(carry_out)
);


endmodule