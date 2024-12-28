`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: S UJWAL NIRANJAN
// 
// Create Date: 26.12.2024 19:27:41
// Design Name: SLOW CLOCK (0.01sec CLOCK) (100Hz)
// Module Name: slowclk
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

module slowclk(
    input clk,
    output reg clk_out
    );
    reg [18:0] counter;
    always @(posedge clk)
    begin
    counter <= counter + 1;
    if(counter == 500_000)
    begin
        counter <= 0;
        clk_out = ~clk_out;
    end      
    end
endmodule

