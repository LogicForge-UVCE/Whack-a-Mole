`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.12.2024 17:15:48
// Design Name: 
// Module Name: game_timer
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


module game_timer(
    input clk,
    input reset,
    output reg [5:0] timer,
    output reg game_over
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            timer <= 60;
            game_over <= 0;
        end else if (timer > 0) begin
            timer <= timer - 1;
            game_over <= 0;
        end else begin
            game_over <= 1;
        end
    end
endmodule