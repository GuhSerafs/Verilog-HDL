module enhanced_barrel_shifter(
	input [7:0]a,
	input rsh,
	input [3:0]shifts,
	output [7:0]y
);

reg[7:0] s0, s1, s2;

always@*
begin
	if(rsh) // Shift << 
		begin
		s0 = shifts[0] ? {a[6:0], a[7]} : a; 		// << 1
		s1 = shifts[1] ? {s0[5:0], s0[7:6]} : s0; 	// << 2
		s2 = shifts[2] ? {s1[3:0], s1[7:4]} : s1; 	// << 4
		end
	else
		begin
		s0 = shifts[0] ? {a[0], a[7:1]} : a; 		// >> 1
		s1 = shifts[1] ? {s0[1:0], s0[7:2]} : s0; 	// >> 2
		s2 = shifts[2] ? {s1[3:0], s1[7:4]} : s1; 	// >> 4
		end
end

assign y = s2;

endmodule