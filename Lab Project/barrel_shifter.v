module barrel_shifter16(input wire [15:0] i,input wire shift_sel,s0,s1,s2,s3,output wire [15:0] o);
	wire [15:0] l,r,o0,o1;
	barrel_shifter_right16 right_shifter(r,s0,s1,s2,s3,o1);
	mux2_1_16 mux1_2(o0,o1,shift_sel,o);
endmodule