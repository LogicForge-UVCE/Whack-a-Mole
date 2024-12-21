`timescale 1ns / 1ps
module led_wave(
    input clk,
    input reset,
    input start,
    output reg [3:0] led
);
    reg [2:0] state;
    reg [1:0] direction;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= 0;
            direction <= 0;
            led <= 4'b0000;
        end else if (start) begin
            case (state)
                3'd0: led <= 4'b0001;
                3'd1: led <= 4'b0010;
                3'd2: led <= 4'b0100;
                3'd3: led <= 4'b1000;
                3'd4: led <= 4'b0100;
                3'd5: led <= 4'b0010;
                3'd6: led <= 4'b0001;
            endcase

            if (direction == 0 && state < 6)
                state <= state + 1;
            else if (direction == 1 && state > 0)
                state <= state - 1;
            else
                direction <= ~direction;
        end
    end
endmodule