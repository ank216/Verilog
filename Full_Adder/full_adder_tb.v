module full_adder_tb();

reg a,b,cin;
wire s,cout;
integer i;

full_adder dut(
    .sum(s),
    .cout(cout),
    .a(a),
    .b(b),
    .cin(cin)
);


initial 
begin
for(i = 0;i<8;i=i+1)
begin
    {a,b,cin} = i;
    #10;
   $display("%b   %b   %b   %b  %b  ",a,b,cin,s,cout);
end



end






endmodule