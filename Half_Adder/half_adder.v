// Code your design here

module Half_Adder(Sum, Carry, A, B);
  output Sum;
  output Carry;
  input A;
  input B;
  
  assign Sum = A ^ B;
  assign Carry = A & B;
  
endmodule