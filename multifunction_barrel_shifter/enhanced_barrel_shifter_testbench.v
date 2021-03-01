module enhanced_barrel_shifter_testbench();

reg[7:0] input_val;
reg Rsh_bool;
reg [2:0] n_shifts;
wire[7:0] output_val;

enhanced_barrel_shifter tested_module(.a(input_val), .rsh(Rsh_bool), .shifts(n_shifts), .y(output_val));

initial begin
	Rsh_bool = 1'b1;
	input_val = 8'b01010111;
	n_shifts = 0; #200;
	n_shifts = 1; #200;
	n_shifts = 2; #200;
	n_shifts = 3; #200;
	n_shifts = 4; #200;
	n_shifts = 5; #200;
	n_shifts = 6; #200;
	n_shifts = 7; #200;
	Rsh_bool = 0'b0;
	n_shifts = 0; #200;
	n_shifts = 1; #200;
	n_shifts = 2; #200;
	n_shifts = 3; #200;
	n_shifts = 4; #200;
	n_shifts = 5; #200;
	n_shifts = 6; #200;
	n_shifts = 7; #200;
end

endmodule 