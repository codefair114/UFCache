`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2020 11:17:22
// Design Name: 
// Module Name: hcm
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

module hcm
    #( parameter BLOCKSIZE = 4, BLOCKNUM = 4, BITS = 64, ADDR = 64 )
     ( input WE, input RE, input [ADDR-1:0]address, input [BITS-1:0]value,
     input C0,
     input C1,
     input C2,
     input C3,
     output reg [BITS-1:0]valueout,
     output reg C0out,
     output reg C1out,
     output reg C2out,
     output reg C3out
     );
   
    reg [BLOCKSIZE*BLOCKNUM-1:0] tags[BITS-1:0];
    reg [BLOCKSIZE*BLOCKNUM-1:0] values[BITS-1:0];
    integer i;
    integer j;
    integer k = 0;
    integer miss = 1;
    integer ok = 1;
    reg [64:0]hs;
    always @*
    begin
    // Getting the hash in order to search the cache
    hs = address << 62;
    valueout = value;
        if (RE == 1'b1)
        begin
            if (hs == 64'b0000000000000000000000000000000000000000000000000000000000000000)
            begin
                if (tags[0] == address)
                begin
                    C0out = 1'b1;
                    valueout = values[0];
                end else if (tags[1] == address)
                begin
                    C0out = 1'b1;
                    valueout = values[1];
                end else if (tags[2] == address)
                begin
                    C0out = 1'b1;
                    valueout = values[2];
                end else if (tags[3] == address)
                begin
                    C0out = 1'b1;
                    valueout = values[3];
                end
            end else if (hs == 64'b0100000000000000000000000000000000000000000000000000000000000000)
            begin
                if (tags[4] == address)
                begin
                    C1out = 1'b1;
                    valueout = values[4];
                end else if (tags[5] == address)
                begin
                    C1out = 1'b1;
                    valueout = values[5];
                end else if (tags[6] == address)
                begin
                    C1out = 1'b1;
                    valueout = values[6];
                end else if (tags[7] == address)
                begin
                    C1out = 1'b1;
                    valueout = values[7];
                end
            end else if (hs == 64'b1000000000000000000000000000000000000000000000000000000000000000)
            begin
                if (tags[8] == address)
                begin
                    C2out = 1'b1;
                    valueout = values[8];
                end else if (tags[9] == address)
                begin
                    C2out = 1'b1;
                    valueout = values[9];
                end else if (tags[10] == address)
                begin
                    C2out = 1'b1;
                    valueout = values[10];
                end else if (tags[11] == address)
                begin
                    C2out = 1'b1;
                    valueout = values[11];
                end
            end else
            begin
                if (tags[12] == address)
                begin
                    C3out = 1'b1;
                    valueout = values[12];
                end else if (tags[13] == address)
                begin
                    C3out = 1'b1;
                    valueout = values[13];
                end else if (tags[14] == address)
                begin
                    C3out = 1'b1;
                    valueout = values[14];
                end else if (tags[15] == address)
                begin
                    C3out = 1'b1;
                    valueout = values[15];
                end
            end
        end else if (WE == 1'b1)
        begin
           if (hs == 64'b0000000000000000000000000000000000000000000000000000000000000000)
           begin
                if (tags[0] == address)
                begin
                    C0out = 1'b1;
                    values[0] = value;
                end else if (tags[1] == address)
                begin
                    C0out = 1'b1;
                    values[1] = value;
                end else if (tags[2] == address)
                begin
                    C0out = 1'b1;
                    values[2] = value;
                end else if (tags[3] == address)
                begin
                    C0out = 1'b1;
                    values[3]=value;
                end
            end else if (hs == 64'b0100000000000000000000000000000000000000000000000000000000000000)
            begin
                if (tags[4] == address)
                begin
                    C1out = 1'b1;
                    values[4] = value;
                end else if (tags[5] == address)
                begin
                    C1out = 1'b1;
                    values[5] = value;
                end else if (tags[6] == address)
                begin
                    C1out = 1'b1;
                    values[6] = value;
                end else if (tags[7] == address)
                begin
                    C1out = 1'b1;
                    values[7] = value;
                end
            end else if (hs == 64'b1000000000000000000000000000000000000000000000000000000000000000)
            begin
                if (tags[8] == address)
                begin
                    C2out = 1'b1;
                    values[8] = value;
                end else if (tags[9] == address)
                begin
                    C2out = 1'b1;
                    values[9] = value;
                end else if (tags[10] == address)
                begin
                    C2out = 1'b1;
                    values[10] = value;
                end else if (tags[11] == address)
                begin
                    C2out = 1'b1;
                    values[11] = value;
                end
            end else
            begin
                if (tags[12] == address)
                begin
                    C3out = 1'b1;
                    values[12] = value;
                end else if (tags[13] == address)
                begin
                    C3out = 1'b1;
                    values[13] = value;
                end else if (tags[14] == address)
                begin
                    C3out = 1'b1;
                    values[14] = value;
                end else if (tags[15] == address)
                begin
                    C3out = 1'b1;
                    values[15] = value;
                end
           end 
        end
        
        if (WE == 1'b0 & RE == 1'b0)
        begin
        // Delete cells which are not used
        if(C0 == 1'b0)
        begin
            tags[0][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            values[0][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            tags[1][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            values[1][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            tags[2][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            values[2][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            tags[3][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            values[3][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            C0out = 1'b0;
        end
        if(C1 == 1'b0)
        begin
            tags[4][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            values[4][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            tags[5][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            values[5][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            tags[6][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            values[6][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            tags[7][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            values[7][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            C1out = 1'b0;
        end 
        if(C2 == 1'b0)
        begin
            tags[8][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            values[8][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            tags[9][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            values[9][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            tags[10][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            values[10][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            tags[11][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            values[11][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            C2out = 1'b0;
        end 
        if(C3 == 1'b0)
        begin
            tags[12][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            values[12][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            tags[13][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            values[13][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            tags[14][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            values[14][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            tags[15][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            values[15][BITS-1:0] = 64'b0000000000000000000000000000000000000000000000000000000000000000;
            C3out = 1'b0;
        end
        end
    end
    
endmodule
