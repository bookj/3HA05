`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Prince of Songkla University
// Engineer: Computer Engineering
// 
// Create Date: 09:00 - 12:00  03/11/2016 
// Design Name: Nattapon Jutamas [5710110137]
// Project Name: Introduction to FPGA design using Verilog
//////////////////////////////////////////////////////////////////////////////////
module sevenSegment (
	input [3:0] in,
	output digit,
	output [7:0] out
	);
	
	reg [7:0] sseg_temp;
 
	always @ (*)
	begin
		case(in)
		4'b0000 : sseg_temp = 8'b00111111; //to display 0
		4'b0001 : sseg_temp = 8'b00000110; //to display 1
		4'b0010 : sseg_temp = 8'b01011011; //to display 2
		4'b0011 : sseg_temp = 8'b01001111; //to display 3
		4'b0100 : sseg_temp = 8'b01100110; //to display 4
		4'b0101 : sseg_temp = 8'b01101101; //to display 5
		4'b0110 : sseg_temp = 8'b01111101; //to display 6
		4'b0111 : sseg_temp = 8'b00000111; //to display 7
		4'b1000 : sseg_temp = 8'b01111111; //to display 8
		4'b1001 : sseg_temp = 8'b01101111; //to display 9
		4'b1010 : sseg_temp = 8'b01110111; //to display A
		4'b1011 : sseg_temp = 8'b01111001; //to display b
		4'b1100 : sseg_temp = 8'b01011000; //to display c
		4'b1101 : sseg_temp = 8'b01011110; //to display d
		4'b1110 : sseg_temp = 8'b01111001; //to display E
		4'b1111 : sseg_temp = 8'b01110001; //to display F
		default : sseg_temp = 8'b01000000; //dash
		endcase
	end

	assign out = sseg_temp;
	assign digit = 0;

endmodule

/*
module seg (bcd, seg, digit);
	input [3:0] bcd;
	output [7:0] seg;
	output digit;
	
	reg [7:0] tmp;
	
	always @ *
	case (bcd)
		4'b0000 : tmp = 8'b0011_1111;	// 0
		4'b0001 : tmp = 8'b0000_0110;	// 1
		4'b0010 : tmp = 8'b0101_1011;	// 2
		4'b0011 : tmp = 8'b0100_1111;	// 3
		4'b0100 : tmp = 8'b0110_0110;	// 4
		4'b0101 : tmp = 8'b0110_1101;	// 5
		4'b0110 : tmp = 8'b0111_1101;	// 6
		4'b0111 : tmp = 8'b0000_0111;	// 7
		4'b1000 : tmp = 8'b0111_1111;	// 8
		4'b1001 : tmp = 8'b0110_1111;	// 9
		
		4'b1010 : tmp = 8'b0111_0111;	// A
		4'b1011 : tmp = 8'b0111_1100;	// b
		4'b1100 : tmp = 8'b0101_1000;	// c
		4'b1101 : tmp = 8'b0101_1110;	// d
		4'b1110 : tmp = 8'b0111_1001;	// E
		4'b1111 : tmp = 8'b0111_0001;	// F
		default : tmp = 8'b0100_0000;
	endcase
	assign seg = tmp;
*/
