module binary_encoder
(
	input wire [1:0] val,
	output reg [3:0] bcode,
	input wire en
);

always@*
	if (en == 1'b0)
		bcode = 4'b0000;
	else
		case(val)
			2'b00 : bcode = 4'b0001; 
			2'b01 : bcode = 4'b0010; 
			2'b10 : bcode = 4'b0100; 
			2'b11 : bcode = 4'b1000; 
		endcase

endmodule 