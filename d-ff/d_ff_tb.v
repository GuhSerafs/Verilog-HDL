module d_ff_tb();

reg input_data;
reg enable;
reg clear;
reg clock;
wire output_data;

d_ff databit(.d(input_data), .clr(clear),.clk(clock), .en(enable), .q(output_data));

always
begin
clock = 1'b0; #50;
clock = 1'b1; #50;
end

initial
begin
	input_data = 1'b0; clear = 1'b0; enable = 1'b0; #25;
	input_data = 1'b1; clear = 1'b0; enable = 1'b1; #100;
	input_data = 1'b0; clear = 1'b0; enable = 1'b1; #100;
	input_data = 1'b1; clear = 1'b0; enable = 1'b1; #100;
	input_data = 1'b0; clear = 1'b0; enable = 1'b0; #100;
	input_data = 1'b0; clear = 1'b0; enable = 1'b1; #100;
	input_data = 1'b1; clear = 1'b0; enable = 1'b0; #100;
	input_data = 1'b1; clear = 1'b0; enable = 1'b1; #45;
	input_data = 1'b1; clear = 1'b1; enable = 1'b1; #65;
	
	
	$stop;
end

endmodule 
