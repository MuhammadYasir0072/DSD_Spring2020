`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2020 04:50:55 PM
// Design Name: 
// Module Name: multiplexer
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
