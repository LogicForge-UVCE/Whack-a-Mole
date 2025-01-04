`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: S UJWAL NIRANJAN
// 
// Create Date: 26.12.2024 20:16:54
// Design Name: BINARY TO BCD CONVERTER
// Module Name: Bin_to_Bcd
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


module Bin_to_Bcd(
    input [5:0] inp,
    output [3:0] ones,
    output [3:0] tens
    );
    wire [3:0] c1,c2,c3,c4,c5,c6,c7;
    wire [3:4] d1,d2,d3,d4,d5,d6,d7;   
    
    assign d1 = {3'b000, inp [5]};
    assign d2 = {c1[2:0], inp[4]};
    assign d3 = {c2[2:0], inp[3]};
    assign d4 = {c3[2:0], inp[2]};
    assign d5 = {c4[2:0], inp[1]};
    assign d6 = {1'b0,c1[3],c2[3],c3[3]};
    assign d7 = {c6[2:0],c4[3]};
    
    shift_add3 SA1(.in(d1),.out(c1));
    shift_add3 SA2(.in(d2),.out(c2));
    shift_add3 SA3(.in(d3),.out(c3));
    shift_add3 SA4(.in(d4),.out(c4));
    shift_add3 SA5(.in(d5),.out(c5));
    shift_add3 SA6(.in(d6),.out(c6));
    shift_add3 SA7(.in(d7),.out(c7));
    
    assign ones = {c5[2:0],inp[0]};
    assign tens = {c7[2:0],c5[3]};
endmodule
