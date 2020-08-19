`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2020 04:45:28 PM
// Design Name: 
// Module Name: dff
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

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2020 04:40:46 PM
// Design Name: 
// Module Name: dff
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


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2020 04:31:06 PM
// Design Name: 
// Module Name: dff
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

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2020 03:28:25 PM
// Design Name: 
// Module Name: dff
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


module d_ff_en_1seg
(
input wire clk, reset,en,
input wire d ,
output reg q
);
// body
always @(posedge clk, posedge reset)
if (reset)
q <= 1'b0;
 else if(en)
q <= d;
endmodule




module testbench();
reg clk,reset,d,en;
wire q;
initial 

    clk=0;
   
always
    #10 clk=~clk;
initial 
begin
     @(negedge clk)reset=0;
     @(negedge clk)en=0;
     @(negedge clk)d=0;
     @(negedge clk)d=1;
     @(negedge clk)d=0;
     @(negedge clk)d=1;
     
   @(negedge clk)reset=0; 
   @(negedge clk)en=1;
   @(negedge clk)d=0;
   @(negedge clk)d=1;
   @(negedge clk)d=0;
   @(negedge clk)d=1;
        
        @(negedge clk)en=1;
        @(negedge clk)reset=1;
        @(negedge clk)d=0;
        @(negedge clk)d=1;
        @(negedge clk)d=0;
        @(negedge clk)d=1;
        
    

end

initial 
    #200 $stop;

d_ff_en_1seg(clk,reset,d,en,q);



endmodule 

