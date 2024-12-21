`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.12.2024 17:21:48
// Design Name: 
// Module Name: seven_segment_display
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


module seven_segment_display(
    input [3:0] bcd,      // 4-bit BCD input
    output reg [6:0] seg  // 7-segment output (active low)
);
    always @(*) begin
        case (bcd)
            4'd0: seg = 7'b1000000;  // '0'
            4'd1: seg = 7'b1111001;  // '1'
            4'd2: seg = 7'b0100100;  // '2'
            4'd3: seg = 7'b0110000;  // '3'
            4'd4: seg = 7'b0011001;  // '4'
            4'd5: seg = 7'b0010010;  // '5'
            4'd6: seg = 7'b0000010;  // '6'
            4'd7: seg = 7'b1111000;  // '7'
            4'd8: seg = 7'b0000000;  // '8'
            4'd9: seg = 7'b0010000;  // '9'
            default: seg = 7'b1111111; // Blank
        endcase
    end
endmodule
