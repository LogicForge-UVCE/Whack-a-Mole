`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: S UJWAL NIRANJAN
// 
// Create Date: 26.12.2024 22:31:34
// Design Name: BCD TO 7 SEGMENT CONVERTER
// Module Name: bcd_to_7seg
// Project Name: WHACK-A-MOLW
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


module bcd_to_7seg(
    input [3:0] Y,
    output reg [6:0] seg
    );
    always @(Y)
    begin
    case(Y)
    4'b0000 : seg <= 7'b0000001;
    4'b0001 : seg <= 7'b1001111;
    4'b0010 : seg <= 7'b0010010;
    4'b0011 : seg <= 7'b0000110;
    4'b0100 : seg <= 7'b1001100;
    4'b0101 : seg <= 7'b0100100;
    4'b0110 : seg <= 7'b0100000;
    4'b0111 : seg <= 7'b0001111;
    4'b1000 : seg <= 7'b0000000;
    4'b1001 : seg <= 7'b0001100;
    endcase
    end
endmodule
