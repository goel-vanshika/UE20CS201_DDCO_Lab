module mux2 (input wire i0, i1, j, output wire o);
  assign o = (j==0)?i0:i1;
endmodule

module mux4 (input wire [0:3] i, input wire j1, j0, output wire o);
  wire  t0, t1;
  
mux2 m0(d0,d1,s0,t0);
mux2 m1(d2,d3,s0,t1);
mux2 m2(t0,t1,s1,y);
	

endmodule
