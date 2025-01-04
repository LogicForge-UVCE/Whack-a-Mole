`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: S Ujwal Niranjan
// 
// Create Date: 27.12.2024 18:40:53
// Design Name: FINAL GAME
// Module Name: top_module
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


module top_module(
    input clk,rst,
    input [15:0] sw,
    output [15:0] led,
    output [6:0] seg,
    output [3:0] an
    );
    
    wire clk_out;
    wire timer_clk_out;
    wire [3:0] mux_out;
    wire [1:0] counter_out;
    wire [3:0] To,Tt,So,St;
    wire [5:0] score;
    wire [5:0] timer;
    
    Bin_to_Bcd UBCD1(.inp(score),.ones(So),.tens(St));
    Bin_to_Bcd UBCD2(.inp(timer),.ones(To),.tens(Tt)); 
    
    mux UMUX(.To(To),.Tt(Tt),.So(So),.St(St),.Q(counter_out),.Y(mux_out));
    
    slowclk USCk(.clk(clk),.clk_out(clk_out));
    
    counter U2BC(.clk_out(clk_out),.Q(counter_out));
    
    decoder UD(.Q(counter_out),.an(an));
    
    bcd_to_7seg UBCDSEG(.Y(mux_out),.seg(seg));
    
    sec_clk USC(.clk(clk),.clk_o(timer_clk_out));
    
    timer UT(.clk_o(timer_clk_out),.rst(rst),.count(timer));
    
    game UG(.sw(sw),.clk(clk),.led(led),.rst(rst),.score(score));
    
endmodule
