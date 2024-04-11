`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2023 09:52:33 AM
// Design Name: 
// Module Name: cpp_mul_8x8_tb
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


module cpp_mul_8x8_tb();
    reg [7:0] mcand;
    reg [7:0] mplr;
    wire [15:0] prod;
// Instantiate the design under test (DUT).  In this case it is cpp_mult.


cpp_mul_8x8 U1 (.mcand(mcand), .mplr(mplr), .prod(prod));
    
    initial
    begin
    
    mplr = 8'h00;
    mcand = 8'hff;
    #10;
    mplr = 8'h01;
    #10;
    mplr = 8'h10;
    #10;
    mplr = 8'h11;
    #10;
    
    mplr = 8'h00;
    mcand = 8'h03;
    #10;
    mplr = 8'h01;
    #10;
    mplr = 8'h10;
    #10;
    mplr = 8'h11;
    #10;
    
    mplr = 8'h00;
    mcand = 8'hAA;
    #10;
    mplr = 8'h01;
    #10;
    mplr = 8'h10;
    #10;
    mplr = 8'h11;
    #10;
    
    mplr = 8'h00;
    mcand = 8'h55;
    #10;
    mplr = 8'h01;
    #10;
    mplr = 8'h10;
    #10;
    mplr = 8'h11;
    #10;
    end
 
endmodule
