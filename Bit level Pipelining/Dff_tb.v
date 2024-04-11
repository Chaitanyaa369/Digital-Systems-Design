`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 03:09:45 PM
// Design Name: 
// Module Name: Dff_tb
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


module Dff_tb();
  reg d;
  reg set;
  reg rst;
  reg clk;
  wire q;

  Dff U1 (.d(d), .set(set), .rst(rst), .clk(clk), .q(q));
   
  initial clk = 0;
  always #10 clk = ~clk;
  
  initial begin
    
   #10
    d = 1'b0;
    set = 1'b0;
    rst = 1'b0;
    
    #10
    d = 1'b1;
    set = 1'b1;
    rst = 1'b0;
    
    #10
    d = 1'b1;
    set = 1'b0;
    rst = 1'b1;
  
  end


endmodule
