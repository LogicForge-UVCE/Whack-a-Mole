`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: S UJWAL NIRANJAN
// 
// Create Date: 26.12.2024 19:53:57
// Design Name: 2 TO 4 DECODER
// Module Name: decoder
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


module decoder(
    input [1:0] Q,
    output reg [3:0] an
    );
    always @(Q)
    begin
    case(Q)
    2'b00: an <= 4'b0001;
    2'b01: an <= 4'b0010;
    2'b10: an <= 4'b0100;
    2'b11: an <= 4'b1000;
    endcase
    end
endmodule
