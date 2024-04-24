// Created Wed Feb 14 11:06:20 2024
`timescale 1ns/10ps
module nand2x1 (A,B,Q);
	input A,B;
	output Q;
	reg Q;
  	always@* 
		begin
			Q = !(A&B);
  		end
endmodule
