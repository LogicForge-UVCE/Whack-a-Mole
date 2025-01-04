`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: S UJWAL NIRANJAN
// 
// Create Date: 26.12.2024 20:21:40
// Design Name: TIMER 
// Module Name: timer
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


module timer(
    input clk_o,
    input rst,
    output reg [5:0] count
    );
    always @(clk_o)
    begin
    count = 6'b111100;
    if(rst == 1)
        count <= 6'b111100;
    else
        count <= count - 1;
    end
endmodule
