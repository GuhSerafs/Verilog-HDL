module simple_dff_tb();

reg input_data;
wire output_data;
reg clock;

simple_d_ff databit(.d(input_data), .clk(clock),.q(output_data));

always
begin
clock = 1'b0;
#50;
clock = 1'b1;
#50;
end

initial
begin
	input_data = 1'b0; #300;
	input_data = 1'b1; #50;
	input_data = 1'b0; #500;
	input_data = 1'b1; #150;
	$stop;
end

endmodule 