`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: S UJWAL NIRANJAN
// 
// Create Date: 26.12.2024 19:59:58
// Design Name: 1 SECOND CLOCK
// Module Name: sec_clk
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


module sec_clk(
    input clk,
    output reg clk_o
    );
    reg [25:0] counter;
    always @(posedge clk)
    begin
    counter <= counter + 1;
    if(counter == 50_000_000)
    begin
        counter <= 0;
        clk_o = ~clk_o;
    end      
    end
endmodule
