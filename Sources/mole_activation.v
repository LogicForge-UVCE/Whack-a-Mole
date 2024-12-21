`timescale 1ns / 1ps
module mole_activation(
    input clk,
    input reset,
    output reg [3:0] mole_led
);
    reg [1:0] random_counter;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            random_counter <= 0;
            mole_led <= 4'b0001;
        end else begin
            random_counter <= random_counter + 1;
            case (random_counter)
                2'b00: mole_led <= 4'b0001;
                2'b01: mole_led <= 4'b0010;
                2'b10: mole_led <= 4'b0100;
                2'b11: mole_led <= 4'b1000;
            endcase
        end
    end
endmodule