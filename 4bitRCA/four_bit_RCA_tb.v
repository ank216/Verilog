module four_bit_RCA_tb();
reg [3:0] a;
reg [3:0] b;
reg cin;

wire [3:0] out_sum;
wire carry_out;


integer i_a;
integer i_b;
integer i_cin;

four_bit_RCA dut(
.a(a),
.b(b),
.cin(cin),
.out_sum(out_sum),
.carry_out(carry_out)
);


initial 
begin 
for(i_cin = 0; i_cin<2; i_cin=i_cin+1)
begin
    for(i_a = 0; i_a <16; i_a = i_a +1)
    begin
        for(i_b = 0; i_b <16; i_b = i_b +1)
        begin
            a = i_a;
            b = i_b;
            cin = i_cin;
            #10;

            $display("%b    %b    %b    %b    %b ",a, b, cin, out_sum, carry_out);
        end

    end

end
$finish;
end



endmodule



