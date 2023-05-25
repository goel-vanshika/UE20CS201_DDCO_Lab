module fulladd(input wire a,b,c, output wire sum,carry);
wire [4:0] t;
    xor2 x0(a, b, t[0]);
    xor2 x1(t[0], c, sum);

    and2 a0(a, b, t[1]);
    and2 a1(a, c, t[2]);
    and2 a2(b, c, t[3]);

    or2 o0(t[1], t[2], t[4]);
    or2 o1(t[3], t[4], carry);
endmodule

module alu1(input wire op0,op1,i0,i1,cin,output wire out,cout);
	wire p,q,r,s,t;
	
	xor2 x1(op0,i1,p);
	fulladd f1(i0,p,cin,q,cout);
	
	and2 ag1(i0,i1,r);
	or2 og1(i0,i1,s);
	
	mux2 m1(r,s,op0,t);
	mux2 m2(q,t,op1,out);	
endmodule

module alu (input wire [1:0] op, input wire [15:0] i0, i1,
    output wire [15:0] o, output wire cout);
	wire [14:0]c;
	
	alu1 al1(op[0],op[1],i0[0],i1[0],op[0],o[0],c[0]);
	alu1 al2(op[0],op[1],i0[1],i1[1],c[0],o[1],c[1]);
	alu1 al3(op[0],op[1],i0[2],i1[2],c[1],o[2],c[2]);
	alu1 al4(op[0],op[1],i0[3],i1[3],c[2],o[3],c[3]);	
	alu1 al5(op[0],op[1],i0[4],i1[4],c[3],o[4],c[4]);
	alu1 al6(op[0],op[1],i0[5],i1[5],c[4],o[5],c[5]);
	alu1 al7(op[0],op[1],i0[6],i1[6],c[5],o[6],c[6]);	
	alu1 al8(op[0],op[1],i0[7],i1[7],c[6],o[7],c[7]);
	alu1 al9(op[0],op[1],i0[8],i1[8],c[7],o[8],c[8]);
	alu1 al10(op[0],op[1],i0[9],i1[9],c[8],o[9],c[9]);
	alu1 al11(op[0],op[1],i0[10],i1[10],c[9],o[10],c[10]);
	alu1 al12(op[0],op[1],i0[11],i1[11],c[10],o[11],c[11]);
	alu1 al13(op[0],op[1],i0[12],i1[12],c[11],o[12],c[12]);
	alu1 al14(op[0],op[1],i0[13],i1[13],c[12],o[13],c[13]);
	alu1 al15(op[0],op[1],i0[14],i1[14],c[13],o[14],c[14]);
	alu1 al16(op[0],op[1],i0[15],i1[15],c[14],o[15],cout);

endmodule
