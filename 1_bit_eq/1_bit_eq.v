module bitwise_eq (
input wire bit_1, bit_2,
output wire eq
);

assign eq = ~(bit_1^bit_2);

endmodule 