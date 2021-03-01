// Esse componente representa um flip flop completo com ENABLE e CLEAR

module d_ff(
	input d, clk, clr, en,
	output reg q
);

always@(posedge clk, posedge clr)
begin
	if(clr)
		q <= 1'b0;
	else if(en)
		q <= d;
	
	// Se o enable tiver desativado, q mantém o dado anterior... 
end

endmodule 