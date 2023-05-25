//2:1 mux
module mux2(input wire i0,i1,j,output wire o);
	assign o = (j==0)?i0:i1;
endmodule

//1:2 demux
module demux2 (input wire i, j, output wire o0, o1);
  assign o0 = (j==0)?i:1'b0;
  assign o1 = (j==1)?i:1'b0;
endmodule

//a mux that selects one of 2 bus inputs of 16 wires each to one bus of 16 wires each
module mux2_1_16(input wire [0:15] i0_16,i1_16,input wire sel,output wire [0:15] o_16);

	mux2 mux_unit_00(i0_16[0],i1_16[0],sel,o_16[0]);
	mux2 mux_unit_01(i0_16[1],i1_16[1],sel,o_16[1]);
	mux2 mux_unit_02(i0_16[2],i1_16[2],sel,o_16[2]);
	mux2 mux_unit_03(i0_16[3],i1_16[3],sel,o_16[3]);
	mux2 mux_unit_04(i0_16[4],i1_16[4],sel,o_16[4]);
	mux2 mux_unit_05(i0_16[5],i1_16[5],sel,o_16[5]);
	mux2 mux_unit_06(i0_16[6],i1_16[6],sel,o_16[6]);
	mux2 mux_unit_07(i0_16[7],i1_16[7],sel,o_16[7]);
	mux2 mux_unit_08(i0_16[8],i1_16[8],sel,o_16[8]);
	mux2 mux_unit_09(i0_16[9],i1_16[9],sel,o_16[9]);
	mux2 mux_unit_10(i0_16[10],i1_16[10],sel,o_16[10]);
	mux2 mux_unit_11(i0_16[11],i1_16[11],sel,o_16[11]);
	mux2 mux_unit_12(i0_16[12],i1_16[12],sel,o_16[12]);
	mux2 mux_unit_13(i0_16[13],i1_16[13],sel,o_16[13]);
	mux2 mux_unit_14(i0_16[14],i1_16[14],sel,o_16[14]);
	mux2 mux_unit_15(i0_16[15],i1_16[15],sel,o_16[15]);

endmodule