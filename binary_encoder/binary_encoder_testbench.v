// Declaração do módulo
module binary_encoder_testbench;

// Declaração das variáveis monitoradas
reg enable;
reg [1:0] val_in;
wire [3:0] enc_out;

// Instanciação do(s) modulo(s) testado(s)
binary_encoder b_test(.val(val_in), .bcode(enc_out), .en(enable));

initial begin 
	enable = 0; val_in = 2'b00; #200;
	enable = 0; val_in = 2'b11; #200;
	enable = 1; val_in = 2'b00; #200;
	enable = 1; val_in = 2'b01; #200;
	enable = 1; val_in = 2'b10; #200;
	enable = 1; val_in = 2'b11; #200;
	
	$stop;
end
endmodule 