// Declaração do módulo
module sseg_decoder_testbench();

// Declaração dos sinais

reg [3:0] hex_input;
reg dp;
wire [7:0] sseg_signal;

// Instanciação do módulo a ser testado
hex_to_sseg digito(.hex(hex_input), .dp(dp), .sseg(sseg_signal));

// Descrição do teste
initial begin
	hex_input = 4'h0; dp = 0; #50;
	hex_input = 4'h1; dp = 1; #50;
	hex_input = 4'h2; dp = 0; #50;
	hex_input = 4'h3; dp = 1; #50;
	hex_input = 4'h4; dp = 0; #50;
	hex_input = 4'h5; dp = 1; #50;
	hex_input = 4'h6; dp = 0; #50;
	hex_input = 4'h7; dp = 1; #50;
	hex_input = 4'h8; dp = 0; #50;
	hex_input = 4'h9; dp = 1; #50;
	hex_input = 4'ha; dp = 0; #50;
	hex_input = 4'hb; dp = 1; #50;
	hex_input = 4'hc; dp = 0; #50;
	hex_input = 4'hd; dp = 1; #50;
	hex_input = 4'he; dp = 0; #50;
	hex_input = 4'hf; dp = 1; #50;

end

endmodule 

