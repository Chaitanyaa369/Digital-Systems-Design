`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2023 09:24:51 AM
// Design Name: 
// Module Name: Dff
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


module Dff(
  input d,
  input set,
  input rst,
  input clk,
  output reg q);
  
  always @(posedge clk or posedge set or posedge rst)
  begin
  if (rst)
    q <= 1'b0;
  else if (set) 
    q <= 1'b1;
  else 
    q <= d;
  end
    
endmodule
