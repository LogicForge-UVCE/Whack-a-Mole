`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:S UJWAL NIRANJAN 
// 
// Create Date: 26.12.2024 19:16:51
// Design Name: 2 BIT COUNTER
// Module Name: counter
// Project Name: WHACK-A-MOLE
// Target Devices: BASYS 3
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


module counter(
    input clk_out,
    output reg [1:0]Q
    );
    always @(posedge clk_out)
    begin
    if(Q == 3)
        Q = 0;
    else
        Q = Q + 1;
    end
endmodule
