`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: S UJWAL NIRANJAN
// 
// Create Date: 26.12.2024 22:23:01
// Design Name: 4 TO 1 MUX
// Module Name: mux
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


module mux(
    input [3:0] To,Tt,So,St,
    input [1:0] Q,
    output reg [3:0] Y
    );
    always @(To or Tt or So or St or Q)
    begin
    case(Q)
    2'b00 :  Y = Tt;
    2'b01 :  Y = To;
    2'b10 :  Y = St;
    2'b11 :  Y = So;
    endcase
    end
endmodule
