`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2020 05:14:07 PM
// Design Name: 
// Module Name: comparator
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


module comparator(A_gret,A_lt,A_eq,A,B);

input [3:0]A,B;
wire  [3:0]X;
output A_gret,A_lt,A_eq;

assign X[0]=A[0]& B[0] | ~A[0]& ~B[0];
assign X[1]=A[1]& B[1] | ~A[1]& ~B[1];
assign X[2]=A[2]& B[2] | ~A[2]& ~B[2];
assign X[3]=A[3]& B[3] | ~A[3]& ~B[3];
assign X[4]=A[4]& B[4] | ~A[4]& ~B[4];
   
 assign  A_gret=A[3]&~B[3] | X[3] &  A[2]& ~B[2] | X[3]&X[2]&A[1]&~B[1] | X[3]&X[2]&X[1]&A[1]&~B[0] ;
 assign  A_lt=~A[3]&B[3] | X[3] & ~ A[2]& B[2] | X[3]&X[2]&~A[1]&B[1] || X[3]&X[2]&X[1]&~A[1]&B[0] ;
 assign A_eq= X[3]&X[2]&X[1]&X[0];
endmodule
