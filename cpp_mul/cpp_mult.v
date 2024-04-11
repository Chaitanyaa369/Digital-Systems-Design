`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2023 08:33:16 AM
// Design Name: 
// Module Name: cpp_mult
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


module cpp_mult(
input[7:0] mcand,
input[1:0] mplr,
output reg [9:0] prod

);
wire [9:0] temp [3:0];
assign temp[0][9:0] = 10'b00;

//for temp 1 
assign temp[1][9:8] = 2'b0;
assign temp[1][7:0] = mcand[7:0];


//for temp 2
assign temp[2][9] = 1'b0;
assign temp[2][8:1] = mcand[7:0];
assign temp[2][0] = 1'b0;

//for temp 3

assign temp[3][9:2] = mcand[7:0];
assign temp[3][1:0] = 2'b00;

always @(mplr)
begin
 case(mplr)
   0: prod = temp[0];
   1: prod = temp[1];
   2: prod = temp[2];
   3: prod = temp[3]; 
  endcase
end
endmodule
