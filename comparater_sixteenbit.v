`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2020 01:14:27 PM
// Design Name: 
// Module Name: comparater_sixteenbit
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


module comparater_sixteenbit(A_gt,A_lt,A_eq,A,B);

input [15:0] A,B;
output A_gt,A_lt,A_eq;
assign A_gt=A>B;
assign A_lt=A<B;
assign A_eq=A==B;

endmodule
