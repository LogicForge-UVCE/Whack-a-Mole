`timescale 1ns / 1ps
module clock_divider(
    input clk,
    input reset,
    output reg slow_clk
);
    reg [31:0] counter;
    parameter DIVIDE_BY = 100_000_000;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            counter <= 0;
            slow_clk <= 0;
        end else begin
            if (counter == DIVIDE_BY / 2 - 1) begin
                slow_clk <= ~slow_clk;
                counter <= 0;
            end else begin
                counter <= counter + 1;
            end
        end
    end
endmodule