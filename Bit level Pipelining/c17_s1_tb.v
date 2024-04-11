`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2023 04:45:59 PM
// Design Name: 
// Module Name: c17_s1_tb
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


module c17_s1_tb();
reg N1,N2,N3,N6,N7,clk;

wire N22,N23;

c17_s1 S1 (N1,N2,N3,N6,N7,N22,N23,clk);

initial clk = 0;
  always #10 clk = ~clk;

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
