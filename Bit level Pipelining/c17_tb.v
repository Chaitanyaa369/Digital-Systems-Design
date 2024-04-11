`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2023 04:03:17 PM
// Design Name: 
// Module Name: c17_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module c17_tb();
reg N1,N2,N3,N6,N7;

wire N22,N23;

c17 U2 (.N1(N1),.N2(N2),.N3(N3),.N6(N6),.N7(N7),.N22(N22),.N23(N23));

initial begin

    #20 
    N1 = 1'b1;
    N2 = 1'b0;
    N3 = 1'b1;
    N6 = 1'b0;
    N7 = 1'b1;
    
    #20 
    N1 = 1'b0;
    N2 = 1'b1;
    N3 = 1'b0;
    N6 = 1'b1;
    N7 = 1'b0;
    
    #20 
    N1 = 1'b1;
    N2 = 1'b0;
    N3 = 1'b0;
    N6 = 1'b1;
    N7 = 1'b1;
    
    #20 
    N1 = 1'b1;
    N2 = 1'b1;
    N3 = 1'b0;
    N6 = 1'b0;
    N7 = 1'b0;
    
    #20 
    N1 = 1'b0;
    N2 = 1'b1;
    N3 = 1'b1;
    N6 = 1'b0;
    N7 = 1'b1;

end
endmodule
