`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Prince of Songkla University
// Engineer: Computer Engineering
// 
// Create Date: 09:00 - 12:00  03/11/2016 
// Design Name: Nattapon Jutamas [5710110137]
// Project Name: Introduction to FPGA design using Verilog
//////////////////////////////////////////////////////////////////////////////////
module top(
	input updown,
	input C,
   input rst,
	output [7:0] out,
	output digit
   );
	
	wire [3:0] Q;
	
	counter c1 (updown, C, rst, Q);
	sevenSegment s1 (Q, digit, out);
	
endmodule

/*
module top_cnt_seg (clk, rst, seg, digit);
	input clk, rst;
	output [7:0] seg;
	output digit;
	
	wire [3:0] q_bcd;
	//reg [7:0] seq;
	
	counter_asyn u0 (clk, rst, q_bcd);
	seg u1 (q_bcd, seg, digit);
	
endmodule
*/
