`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2020 01:38:43 PM
// Design Name: 
// Module Name: sixteen_bit_adder
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


module sixteen_bit_adder(Sum,Cout,A,B,Cin);

input [15:0]A,B;
input Cin;
output [15:0]Sum;
output Cout;

assign {Cout,Sum}=A+B+Cin;




endmodule
