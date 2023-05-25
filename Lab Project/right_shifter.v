module mux2(input wire i0,i1,j,output wire o);
	assign o = (j==0) ? i0 : i1;
endmodule

module barrel_shifter_right16(input wire [15:0] i,input wire j0,j1,j2,j3,output wire [15:0] o);
	wire zero;
	wire [15:0] x,y,z;
	assign zero = 1'b0;
	
	//8 bit shifter
	mux2 m0(i[0],i[8],j3,x[0]);
	mux2 m1(i[1],i[9],j3,x[1]);
	mux2 m2(i[2],i[10],j3,x[2]);
	mux2 m3(i[3],i[11],j3,x[3]);
	mux2 m4(i[4],i[12],j3,x[4]);
	mux2 m5(i[5],i[13],j3,x[5]);
	mux2 m6(i[6],i[14],j3,x[6]);
	mux2 m7(i[7],i[15],j3,x[7]);
	mux2 m8(i[8],zero,j3,x[8]);
	mux2 m9(i[9],zero,j3,x[9]);
	mux2 m10(i[10],zero,j3,x[10]);
	mux2 m11(i[11],zero,j3,x[11]);
	mux2 m12(i[12],zero,j3,x[12]);
	mux2 m13(i[13],zero,j3,x[13]);
	mux2 m14(i[14],zero,j3,x[14]);
	mux2 m15(i[15],zero,j3,x[15]);
	
	//4 bit shifter
	mux2 m16(x[0],x[4],j2,y[0]);
	mux2 m17(x[1],x[5],j2,y[1]);
	mux2 m18(x[2],x[6],j2,y[2]);
	mux2 m19(x[3],x[7],j2,y[3]);
	mux2 m20(x[4],x[8],j2,y[4]);
	mux2 m21(x[5],x[9],j2,y[5]);
	mux2 m22(x[6],x[10],j2,y[6]);
	mux2 m23(x[7],x[11],j2,y[7]);
	mux2 m24(x[8],x[12],j2,y[8]);
	mux2 m25(x[9],x[13],j2,y[9]);
	mux2 m26(x[10],x[14],j2,y[10]);
	mux2 m27(x[11],x[15],j2,y[11]);
	mux2 m28(x[12],zero,j2,y[12]);
	mux2 m29(x[13],zero,j2,y[13]);
	mux2 m30(x[14],zero,j2,y[14]);
	mux2 m31(x[15],zero,j2,y[15]);
	
	//2 bit shifter
	mux2 m32(y[0],y[2],j1,z[0]);
	mux2 m33(y[1],y[3],j1,z[1]);
	mux2 m34(y[2],y[4],j1,z[2]);
	mux2 m35(y[3],y[5],j1,z[3]);
	mux2 m36(y[4],y[6],j1,z[4]);
	mux2 m37(y[5],y[7],j1,z[5]);
	mux2 m38(y[6],y[8],j1,z[6]);
	mux2 m39(y[7],y[9],j1,z[7]);
	mux2 m40(y[8],y[10],j1,z[8]);
	mux2 m41(y[9],y[11],j1,z[9]);
	mux2 m42(y[10],y[12],j1,z[10]);
	mux2 m43(y[11],y[13],j1,z[11]);
	mux2 m44(y[12],y[14],j1,z[12]);
	mux2 m45(y[13],y[15],j1,z[13]);
	mux2 m46(y[14],zero,j1,z[14]);
	mux2 m47(y[15],zero,j1,z[15]);
	
	//1 bit shifter
	mux2 m48(z[0],z[1],j0,o[0]);
	mux2 m49(z[1],z[2],j0,o[1]);
	mux2 m50(z[2],z[3],j0,o[2]);
	mux2 m51(z[3],z[4],j0,o[3]);
	mux2 m52(z[4],z[5],j0,o[4]);
	mux2 m53(z[5],z[6],j0,o[5]);
	mux2 m54(z[6],z[7],j0,o[6]);
	mux2 m55(z[7],z[8],j0,o[7]);
	mux2 m56(z[8],z[9],j0,o[8]);
	mux2 m57(z[9],z[10],j0,o[9]);
	mux2 m58(z[10],z[11],j0,o[10]);
	mux2 m59(z[11],z[12],j0,o[11]);
	mux2 m60(z[12],z[13],j0,o[12]);
	mux2 m61(z[13],z[14],j0,o[13]);
	mux2 m62(z[14],z[15],j0,o[14]);
	mux2 m63(z[15],zero,j0,o[15]);	
endmodule