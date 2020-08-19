`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2020 01:06:15 PM
// Design Name: 
// Module Name: calculator
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


module calculator(out,i0,i1,op);

input [3:0]i0, i1;
input [1:0]op;
output reg[3:0]out;
always @(*)

begin
case({op})
2'b00: out<=i0+i1;
2'b01: out<=i0-i1;
2'b10: out<=i0*i1;
2'b11: out<=i0/i1;

endcase
end




endmodule

module test();
reg [3:0]i0,i1;
reg [1:0]op;
wire [3:0]out;
initial 
begin
#10 op=2'b00; i0=4'b0010;i1= 4'b0010;
#10 op=2'b01; i0=4'b0010;i1= 4'b0010;
#10 op=2'b10; i0=4'b0010;i1= 4'b0010;
#10 op=2'b11; i0=4'b0010;i1= 4'b0010;
#10 $stop;

end
calculator c1(out,i0,i1,op);
endmodule 

