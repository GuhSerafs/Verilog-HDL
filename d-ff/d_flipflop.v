/*
D-FF Simples
Funcionamento básico: 
Na borda de subida do dado, ele é armazenado na saída.
*/

module simple_d_ff(
	input d, clk,
	output reg q
);

always@(posedge clk)
begin
	q <= d;
end

endmodule 