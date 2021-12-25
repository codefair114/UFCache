`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.12.2020 00:57:59
// Design Name: 
// Module Name: validity_block
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

module validity_block
    #( BLOCKNUM = 4 )
    (input C0, input C1, input C2, input C3, output reg [BLOCKNUM-1:0]mux);
    
    always @*
    begin
        mux[0] = C0;
        mux[1] = C1;
        mux[2] = C2;
        mux[3] = C3;
        
    end
endmodule