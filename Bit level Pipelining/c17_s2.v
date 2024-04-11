`timescale 1ns / 1ps
module c17_s2 (N1,N2,N3,N6,N7,N22,N23,clk);

input N1,N2,N3,N6,N7,clk;

output N22,N23;

wire N10,N11,N16,N19;

wire q1,q2,q3,q6,q7,q22,q23,q8,q10,q12,q71;

Dff U3 (N1, 0, 0, clk, q1);
Dff U4 (N2, 0, 0, clk, q2);
Dff U5 (N3, 0, 0, clk, q3);
Dff U6 (N6, 0, 0, clk, q6);
Dff U7 (N7, 0, 0, clk, q7);
Dff U8 (N22, 0, 0, clk, q22);
Dff U9 (N23, 0, 0, clk, q23);
Dff U10 (N10,0,0,clk,q8);
Dff U11 (q2,0,0,clk,q10);
Dff U12 (N11,0,0,clk,q12);
Dff U13 (q7,0,0,clk,q71);

nand NAND2_1 (N10, q1, q3);
nand NAND2_2 (N11, q3, q6);
nand NAND2_3 (N16, q10,q12);
nand NAND2_4 (N19, q12, q71);
nand NAND2_5 (N22, q8, N16);
nand NAND2_6 (N23, N16, N19);

endmodule
