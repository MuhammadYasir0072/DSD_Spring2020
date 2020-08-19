`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2020 11:38:27 AM
// Design Name: 
// Module Name: Mux
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


module multiplexer(Y,A,B,C,D,S0,S1);
input A,B,C,D;
input S0,S1;
output Y;

assign Y=(~S1 & ~S0 & A) |
           (~S1 & S0 & B) |
           (S1 & ~S0 & C) |
            (S1 & S0 & D) ;
    
endmodule
module Test();
reg A, B, C, D, S0, S1;
wire Y;

initial
begin
    #00 S0 = 0; S1 = 0; A = 1; B = 1'b0; C = 1'b0; D = 1'b0; 
    #10 S0 = 1; S1 = 0; A = 0; B = 1'b1; C = 1'b0; D = 1'b0;
    #10 S0 = 0; S1 = 1; A = 0; B = 1'b0; C = 1'b1; D = 1'b0;
    #10 S0 = 1; S1 = 1; A = 0; B = 1'b0; C = 1'b0; D = 1'b1;
    #10 $stop;
end
multiplexer m(Y,A,B,C,D,S0,S1);
endmodule
 
