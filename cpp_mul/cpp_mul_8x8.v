`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2023 09:10:57 AM
// Design Name: 
// Module Name: cpp_mul_8x8
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


module cpp_mul_8x8(
   input [7:0] mcand,
   input [7:0] mplr,
   output reg [15:0] prod 
    );
    
    wire [15:0] temp [3:0];
    
    cpp_mult U1(.mcand(mcand), .mplr(mplr[1:0]), .prod(temp[0]));
    cpp_mult U2(.mcand(mcand), .mplr(mplr[3:2]), .prod(temp[1]));
    cpp_mult U3(.mcand(mcand), .mplr(mplr[5:4]), .prod(temp[2]));
    cpp_mult U4(.mcand(mcand), .mplr(mplr[7:6]), .prod(temp[3]));
    
    reg [15:0] t [3:0];
    
    always @(*)
    begin
        t[0] = (mplr[1:0] == 2'b00) ? 16'h0000: {6'b0, temp[0]};
        t[1] = (mplr[3:2] == 2'b01) ? 16'h0000: {4'b0, temp[1],2'b0};
        t[2] = (mplr[5:4] == 2'b10) ? 16'h0000: {2'b0, temp[2],4'b0};
        t[3] = (mplr[7:6] == 2'b11) ? 16'h0000: {temp[3],6'b0};
     
        prod = t[0]+t[1]+t[2]+t[3];
    end    
endmodule
