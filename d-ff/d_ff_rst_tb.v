module d_ff_rst_tb();

reg input_data, reset;
wire output_data;
reg clock;

d_ff_rst databit(.d(input_data), .rst(reset),.clk(clock),.q(output_data));

always
begin
clock = 1'b0;
#50;
clock = 1'b1;
#50;
end

initial
begin
	reset = 1'b1; input_data = 1'b0; #25; // Rising edge
	reset = 1'b1; input_data = 1'b1; #100;
	reset = 1'b1; input_data = 1'b0; #100;
	reset = 1'b1; input_data = 1'b1; #100;
	reset = 1'b0; input_data = 1'b0; #100;
	reset = 1'b0; input_data = 1'b1; #100;
	reset = 1'b0; input_data = 1'b0; #100;
	reset = 1'b0; input_data = 1'b1; #100;
	reset = 1'b0; input_data = 1'b0; #100;
	reset = 1'b0; input_data = 1'b1; #35;
	reset = 1'b1; #65;
	
	$stop;
end

endmodule 
