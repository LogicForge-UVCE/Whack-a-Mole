`timescale 1ns / 1ps
module whack_a_mole_game(
    input clk,                  // 100 MHz clock
    input reset,                // Middle button (BTN C) for reset
    input [3:0] btn_input,      // Buttons for whacking moles
    output [3:0] led_moles,     // LED output for moles
    output [3:0] an,            // 7-segment anode signals
    output [6:0] seg            // 7-segment cathode signals
);
    wire slow_clk;              // Slower clock for game logic
    wire [5:0] timer;           // Timer value (0-60 seconds)
    wire [5:0] score;           // Score value (0-64)
    wire [3:0] active_mole;     // Active mole (LED)
    wire game_over;             // Game over signal
    wire [3:0] led_wave_output; // LED wave animation output

    // Clock Divider
    clock_divider clk_div (
        .clk(clk),
        .reset(reset),
        .slow_clk(slow_clk)
    );

    // Mole Activation Logic
    mole_activation mole_gen (
        .clk(slow_clk),
        .reset(reset),
        .mole_led(active_mole)
    );

    // Score Counter
    score_counter score_gen (
        .clk(clk),
        .reset(reset),
        .mole_led(active_mole),
        .btn_input(btn_input),
        .score(score)
    );

    // Game Timer
    game_timer timer_gen (
        .clk(slow_clk),
        .reset(reset),
        .timer(timer),
        .game_over(game_over)
    );

    // LED Wave Animation (End-of-Game)
    led_wave wave_gen (
        .clk(slow_clk),
        .reset(reset),
        .start(game_over),
        .led(led_wave_output)
    );

    // Timer and Score Display
    display_driver display (
        .clk(clk),
        .reset(reset),
        .timer(timer),
        .score(score),
        .an(an),
        .seg(seg)
    );

    // LED Output Selection
    assign led_moles = game_over ? led_wave_output : active_mole;

endmodule