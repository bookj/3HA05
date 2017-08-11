`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Prince of Songkla University
// Engineer: Computer Engineering
// 
// Create Date: 09:00 - 12:00  03/11/2016 
// Design Name: Nattapon Jutamas [5710110137]
// Project Name: Introduction to FPGA design using Verilog
//////////////////////////////////////////////////////////////////////////////////
module counter(
	input UpAndDown,
   input C,
   input rst,
   output [3:0] Q
   );
	 
	reg [3:0] tmp;

	always @ (posedge C or negedge rst)
	 	begin
			if (rst == 0)
				tmp <= 0;
			else if (UpAndDown == 1)
				tmp <= tmp + 1;		
			else
				tmp <= tmp - 1;
		end
	
	assign Q = tmp;

endmodule
