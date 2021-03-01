/*
D-FF Simples
Funcionamento básico: 
Na borda de subida do dado, ele é armazenado na saída.
*/

module d_ff_rst(
	input d, clk, rst,
	output reg q
);

always@(posedge clk, posedge rst)
begin
	if(rst)
		q <= 1'b0;
	else
		q <= d;
end

endmodule 
