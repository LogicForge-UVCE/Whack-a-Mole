`timescale 1ns / 1ps
module score_counter(
    input clk,
    input reset,
    input [3:0] mole_led,
    input [3:0] btn_input,
    output reg [5:0] score
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            score <= 0;
        else if (mole_led & btn_input)
            score <= score + 1;
    end
endmodule