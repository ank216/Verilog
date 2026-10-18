// Code your testbench here
// or browse Examples
module Half_Adder_tb();
  reg a;
  reg b;
  
  wire s;
  wire c;
  
  Half_Adder ha(
    .Sum (s),
    .Carry (c),
    .A (a),
    .B (b)  
  );
  
  
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, Half_Adder_tb);
    
    a = 0; b = 0;
    #10;
    $display("%b   %b   %b    %b", a,b,s,c);


    a= 0; b=1;

    $display("%b   %b   %b    %b", a,b,s,c);

    
    #10;
    
    a = 1; b = 0;
    $display("%b   %b   %b    %b", a,b,s,c);


    #10;

    a = 1; b = 01;
    $display("%b   %b   %b    %b", a,b,s,c);

    #10;

    
    
    $finish;
    
  end
  
endmodule