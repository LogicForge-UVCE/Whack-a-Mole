`timescale 1ns / 1ps
module display_driver(
    input clk,
    input reset,
    input [5:0] timer,
    input [5:0] score,
    output reg [3:0] an,
    output reg [6:0] seg
);
    reg [1:0] digit_select;
    reg [3:0] current_bcd;
    wire [3:0] timer_tens, timer_ones, score_tens, score_ones;

    binary_to_bcd timer_bcd (.binary(timer), .hundreds(), .tens(timer_tens), .ones(timer_ones));
    binary_to_bcd score_bcd (.binary(score), .hundreds(), .tens(score_tens), .ones(score_ones));

    always @(posedge clk or posedge reset) begin
        if (reset)
            digit_select <= 0;
        else
            digit_select <= digit_select + 1;
    end

    always @(*) begin
        case (digit_select)
            2'b00: begin current_bcd = timer_tens; an = 4'b1110; end
            2'b01: begin current_bcd = timer_ones; an = 4'b1101; end
            2'b10: begin current_bcd = score_tens; an = 4'b1011; end
            2'b11: begin current_bcd = score_ones; an = 4'b0111; end
            default: begin current_bcd = 4'd0; an = 4'b1111; end
        endcase
    end

    seven_segment_display seg_driver (.bcd(current_bcd), .seg(seg));
endmodule