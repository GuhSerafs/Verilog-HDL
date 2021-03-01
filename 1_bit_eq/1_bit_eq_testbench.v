`timescale 1 ns/10 ps

module eq_testbench();

reg a, b;
wire c;

bitwise_eq uut(.bit_1(a), .bit_2(b), .eq(c));

initial begin
a = 0; b = 0; #200;

a = 1; b = 0; #200;

a = 0; b = 1; #200;

a = 1; b = 1; #200;

$stop;

end 

endmodule 