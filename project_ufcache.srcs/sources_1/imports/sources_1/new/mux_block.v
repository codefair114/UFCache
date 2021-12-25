`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.12.2020 00:50:38
// Design Name: 
// Module Name: mux_block
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


module mux_block
    #( BLOCKNUM = 4 )
    (input [BLOCKNUM-1:0]mux, output reg C0, output reg C1, output reg C2, output reg C3);
    always @*
    begin
        C0 = mux[0];
        C1 = mux[1];
        C2 = mux[2];
        C3 = mux[3];
    end
endmodule