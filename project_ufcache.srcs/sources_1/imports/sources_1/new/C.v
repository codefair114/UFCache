`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.12.2020 00:01:26
// Design Name: 
// Module Name: C
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


module C(input E, output reg val);

real Vintern = 0; //V
real C = 0.0004; //F
real A = 0.001; //A
real R = 1000; //Ohm
real t = 0; //tu

always @*
begin
    if (E == 1'b1)
    begin
        Vintern = 1;
    end
    else
    begin
        Vintern = C*Vintern*(1-(2.71)**((-1)*t/(R*C)));
    end
    
    
    /*if (Vintern < 0.1)
    begin
        val = 1'b0;
    end
    else
    begin*/
        val = 1'b1;
    //end
end
endmodule