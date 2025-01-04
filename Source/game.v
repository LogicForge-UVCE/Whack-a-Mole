`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: S UJWAL NIRANJAN
// 
// Create Date: 26.12.2024 22:42:51
// Design Name: SCORE COUNTER
// Module Name: game
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


module game(
    input [15:0] sw,
    input clk,rst,
    output reg [15:0] led,
    output reg [5:0] score
    );
    
localparam
S000000 = 0,
S000001 = 1,
S000010 = 2,
S000011 = 3,
S000100 = 4,
S000101 = 5,
S000110 = 6,
S000111 = 7,
S001000 = 8,
S001001 = 9,
S001010 = 10,
S001011 = 11,
S001100 = 12,
S001101 = 13,
S001110 = 14,
S001111 = 15,
S010000 = 16,
S010001 = 17,
S010010 = 18,
S010011 = 19,
S010100 = 20,
S010101 = 21,
S010110 = 22,
S010111 = 23,
S011000 = 24,
S011001 = 25,
S011010 = 26,
S011011 = 27,
S011100 = 28,
S011101 = 29,
S011110 = 30,
S011111 = 31,
S100000 = 32,
S100001 = 33,
S100010 = 34,
S100011 = 35,
S100100 = 36,
S100101 = 37,
S100110 = 38,
S100111 = 39,
S101000 = 40,
S101001 = 41,
S101010 = 42,
S101011 = 43,
S101100 = 44,
S101101 = 45,
S101110 = 46,
S101111 = 47,
S110000 = 48,
S110001 = 49,
S110010 = 50,
S110011 = 51,
S110100 = 52,
S110101 = 53,
S110110 = 54,
S110111 = 55,
S111000 = 56,
S111001 = 57,
S111010 = 58,
S111011 = 59,
S111100 = 60;
    
    reg [6:0] current_state = 0;
    reg [6:0] next_state = 0;
    
    always @(posedge clk)
    begin
    if(rst)
        current_state <= S000000;
    else
        current_state <= next_state;
    end
    
    
    always @(current_state, sw[15:0])
    begin
    case(current_state)
    S000000: 
        begin 
        next_state <= S000000;
        led[15:0] = 0;
        score = 6'b000000;
        led[3] <= 1;
            if(sw[3])
                next_state <= S000001;
            else
                next_state <= S000000;         
        end
    S000001:
        begin
        score <= 6'b000001;
        led[15:0] = 0;
        led[12] <= 1;
        if(sw[12])
            next_state <= S000100;
        else
            next_state <= S000001;
        end
    S000010:
        begin
        score <= 6'b000010;
        led[15:0] = 0;
        led[7] <= 1;
        if(sw[7])
            next_state <= S000011;
        else
            next_state <= S000010;
        end
    S000011:
        begin
        score <= 6'b000011;
        led[15:0] = 0;
        led[5] <= 1;
        if(sw[5])
            next_state <= S000100;
        else
            next_state <= S000011;
        end
    S000100:
        begin
        score <= 6'b000100;
        led[15:0] = 0;
        led[1] <= 1;
        if(sw[1])
            next_state <= S000101;
        else
            next_state <= S000100;
        end
    S000101:
        begin
        score <= 6'b0000101;
        led[15:0] = 0;
        led[11] <= 1;
        if(sw[11])
            next_state = S000110;
        else
            next_state <= S000101;
        end
    S000110:
        begin
        score <= 6'b000110;
        led[15:0] = 0;
        led[15] <= 1;
        if(sw[15])
            next_state <= S000111;
        else
            next_state <= S000110;
        end
    S000111:
        begin
        score <= 6'b000111;
        led[15:0] = 0;
        led[14] <= 1;
        if(sw[14])
            next_state <= S001000;
        else
            next_state <= S000111;
        end
    S001000:
        begin
        score <= 6'b001000;
        led[15:0] = 0;
        led[6] <= 1;
        if(sw[6])
            next_state <= S001001;
        else
            next_state <= S001000;
        end
    S001001:
        begin
        score <= 6'b001001;
        led[15:0] = 0;
        led[9] <= 1;
        if(sw[9])
            next_state <= S001010;
        else
            next_state <= S001001;
        end
    S001010:
        begin
        score <= 6'b001010;
        led[15:0] = 0;
        led[4] <= 1;
        if(sw[4])
            next_state <= S001011;
        else
            next_state <= S001010;
        end
    S001011:
        begin
        score <= 6'b001011;
        led[15:0] = 0;
        led[8] <= 1;
        if(sw[8])
            next_state <= S001100;
        else
            next_state <= S001011;
        end
    S001100:
        begin
        score <= 6'b001100;
        led[15:0] = 0;
        led[13] <= 1;
        if(sw[13])
            next_state <= S001101;
        else
            next_state <= S001100;
        end
    S001101:
        begin
        score <= 6'b001101;
        led[15:0] = 0;
        led[10] <= 1;
        if(sw[10])
            next_state <= S001110;
        else
            next_state <= S001101;
        end
    S001110:
        begin
        score <= 6'b001110;
        led[15:0] = 0;
        led[2] <= 1;
        if(sw[2])
            next_state <= S001111;
        else
            next_state <= S001110;
        end
    S001111:
        begin
        score <= 6'b001111;
        led[15:0] = 0;
        led[1] <= 1;
        if(sw[1])
            next_state <= S010000;
        else
            next_state <= S001111;
        end
    S010000:
        begin
        score <= 6'b010000;
        led[15:0] = 0;
        led[6] <= 1;
        if(sw[6])
            next_state <= S010001;
        else
            next_state <= S010000;
        end
     S010001://this is where you should stare
        begin
        score <= 6'b010001;
        led[15:0] = 0;
        led[5] <= 1;
        if(sw[5])
            next_state <= S010010;
        else
            next_state <= S010001;
        end
     S010010:
        begin
        score <= 6'b010010;
        led[15:0] = 0;
        led[8] <= 1;
        if(sw[8])
            next_state <= S010011;
        else
            next_state <= S010010;
        end
     S010011:
        begin
        score <= 6'b010011;
        led[15:0] = 0;
        led[9] <= 1;
        if(sw[9])
            next_state <= S010100;
        else
            next_state <= S010011;
        end
     S010100:
        begin
        score <= 6'b010100;
        led[15:0] = 0;
        led[7] <= 1;
        if(sw[7])
            next_state <= S010101;
        else
            next_state <= S010100;
        end
    S010101:
        begin
        score <= 6'b010101;
        led[15:0] = 0;
        led[11] <= 1;
        if(sw[11])
            next_state <= S010110;
        else
            next_state <= S010101;
        end
    S010110:
        begin
        score <= 6'b010110;
        led[15:0] = 0;
        led[3] <= 1;
        if(sw[3])
            next_state <= S010111;
        else
            next_state <= S010110;
        end  
    S010111:
        begin
        score <= 6'b010111;
        led[15:0] = 0;
        led[15] <= 1;
        if(sw[15])
            next_state <= S011000;
        else
            next_state <= S010111;
        end  
    S011000:
        begin
        score <= 6'b011000;
        led[15:0] = 0;
        led[13] <= 1;
        if(sw[13])
            next_state <= S011001;
        else
            next_state <= S011000;
        end  
    S011001:
        begin
        score <= 6'b011001;
        led[15:0] = 0;
        led[4] <= 1;
        if(sw[4])
            next_state <= S011010;
        else
            next_state <= S011001;
        end  
    S011010:
        begin
        score <= 6'b011010;
        led[15:0] = 0;
        led[12] <= 1;
        if(sw[12])
            next_state <= S011011;
        else
            next_state <= S011010;
        end  
    S011011:
        begin
        score <= 6'b011011;
        led[15:0] = 0;
        led[2] <= 1;
        if(sw[2])
            next_state <= S011100;
        else
            next_state <= S011011;
        end  
    S011100:
        begin
        score <= 6'b011100;
        led[15:0] = 0;
        led[10] <= 1;
        if(sw[10])
            next_state <= S011101;
        else
            next_state <= S011100;
        end  
    S011101:
        begin
        score <= 6'b011101;
        led[15:0] = 0;
        led[14] <= 1;
        if(sw[14])
            next_state <= S011110;
        else
            next_state <= S011101;
        end  
    S011110:
        begin
        score <= 6'b011110;
        led[15:0] = 0;
        led[1] <= 1;
        if(sw[1])
            next_state <= S011111;
        else
            next_state <= S011110;
        end  
    S011111:
        begin
        score <= 6'b011111;
        led[15:0] = 0;
        led[5] <= 1;
        if(sw[5])
            next_state <= S100000;
        else
            next_state <= S011111;
        end  
    S100000:
        begin
        score <= 6'b100000;
        led[15:0] = 0;
        led[3] <= 1;
        if(sw[3])
            next_state <= S100001;
        else
            next_state <= S100000;
        end  
    S100001:
        begin
        score <= 6'b100001;
        led[15:0] = 0;
        led[8] <= 1;
        if(sw[8])
            next_state <= S100010;
        else
            next_state <= S100001;
        end  
    S100010:
        begin
        score <= 6'b100010;
        led[15:0] = 0;
        led[6] <= 1;
        if(sw[6])
            next_state <= S100011;
        else
            next_state <= S100010;
        end  
    S100011:
        begin
        score <= 6'b100011;
        led[15:0] = 0;
        led[2] <= 1;
        if(sw[2])
            next_state <= S100100;
        else
            next_state <= S100011;
        end  
    S100100:
        begin
        score <= 6'b100100;
        led[15:0] = 0;
        led[12] <= 1;
        if(sw[12])
            next_state <= S100101;
        else
            next_state <= S100100;
        end  
    S100101:
        begin
        score <= 6'b100101;
        led[15:0] = 0;
        led[15] <= 1;
        if(sw[15])
            next_state <= S100110;
        else
            next_state <= S100101;
        end  
    S100110:
        begin
        score <= 6'b100110;
        led[15:0] = 0;
        led[9] <= 1;
        if(sw[9])
            next_state <= S100111;
        else
            next_state <= S100110;
        end  
    S100111:
        begin
        score <= 6'b010110;
        led[15:0] = 0;
        led[7] <= 1;
        if(sw[7])
            next_state <= S101000;
        else
            next_state <= S100111;
        end  
    S101000:
        begin
        score <= 6'b101000;
        led[15:0] = 0;
        led[4] <= 1;
        if(sw[4])
            next_state <= S101001;
        else
            next_state <= S101000;
        end  
    S101001:
        begin
        score <= 6'b101001;
        led[15:0] = 0;
        led[10] <= 1;
        if(sw[10])
            next_state <= S101010;
        else
            next_state <= S101001;
        end  
    S101010:
        begin
        score <= 6'b101010;
        led[15:0] = 0;
        led[13] <= 1;
        if(sw[13])
            next_state <= S101011;
        else
            next_state <= S101010;
        end  
    S101011:
        begin
        score <= 6'b101011;
        led[15:0] = 0;
        led[11] <= 1;
        if(sw[11])
            next_state <= S101100;
        else
            next_state <= S101011;
        end  
    S101100:
        begin
        score <= 6'b101100;
        led[15:0] = 0;
        led[14] <= 1;
        if(sw[14])
            next_state <= S101101;
        else
            next_state <= S101100;
        end  
    S101101:
        begin
        score <= 6'b101101;
        led[15:0] = 0;
        led[6] <= 1;
        if(sw[6])
            next_state <= S101110;
        else
            next_state <= S101101;
        end  
    S101110:
        begin
        score <= 6'b101110;
        led[15:0] = 0;
        led[9] <= 1;
        if(sw[9])
            next_state <= S101111;
        else
            next_state <= S101110;
        end  
    S101111:
        begin
        score <= 6'b101111;
        led[15:0] = 0;
        led[2] <= 1;
        if(sw[2])
            next_state <= S110000;
        else
            next_state <= S101111;
        end  
    S110000:
        begin
        score <= 6'b110000;
        led[15:0] = 0;
        led[8] <= 1;
        if(sw[8])
            next_state <= S110001;
        else
            next_state <= S110000;
        end  
    S110001:
        begin
        score <= 6'b110001;
        led[15:0] = 0;
        led[13] <= 1;
        if(sw[13])
            next_state <= S110010;
        else
            next_state <= S110001;
        end  
    S110010:
        begin
        score <= 6'b110010;
        led[15:0] = 0;
        led[15] <= 1;
        if(sw[15])
            next_state <= S110011;
        else
            next_state <= S110010;
        end  
    S110011:
        begin
        score <= 6'b110011;
        led[15:0] = 0;
        led[3] <= 1;
        if(sw[3])
            next_state <= S110100;
        else
            next_state <= S110011;
        end  
    S110100:
        begin
        score <= 6'b110100;
        led[15:0] = 0;
        led[12] <= 1;
        if(sw[12])
            next_state <= S110101;
        else
            next_state <= S110100;
        end  
    S110101:
        begin
        score <= 6'b110101;
        led[15:0] = 0;
        led[1] <= 1;
        if(sw[1])
            next_state <= S110110;
        else
            next_state <= S110101;
        end  
    S110110:
        begin
        score <= 6'b110110;
        led[15:0] = 0;
        led[5] <= 1;
        if(sw[5])
            next_state <= S110111;
        else
            next_state <= S110110;
        end  
    S110111:
        begin
        score <= 6'b110111;
        led[15:0] = 0;
        led[7] <= 1;
        if(sw[7])
            next_state <= S111000;
        else
            next_state <= S110111;
        end  
    S111000:
        begin
        score <= 6'b111000;
        led[15:0] = 0;
        led[10] <= 1;
        if(sw[10])
            next_state <= S111001;
        else
            next_state <= S111000;
        end  
    S111001:
        begin
        score <= 6'b111001;
        led[15:0] = 0;
        led[4] <= 1;
        if(sw[4])
            next_state <= S111010;
        else
            next_state <= S111001;
        end  
    S111010:
        begin
        score <= 6'b111010;
        led[15:0] = 0;
        led[14] <= 1;
        if(sw[14])
            next_state <= S111011;
        else
            next_state <= S111010;
        end  
    S111011:
        begin
        score <= 6'b111011;
        led[15:0] = 0;
        led[11] <= 1;
        if(sw[11])
            next_state <= S111100;
        else
            next_state <= S111011;
        end  
    S111100:
        begin
        next_state <= S111100;
        score <= 6'b111100;
        led[15:0] <= 0;
        end 
    endcase
    end
endmodule
