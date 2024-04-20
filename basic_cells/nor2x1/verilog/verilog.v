// Created Thu Apr 18 14:11:01 2024

`timescale 1ns/10ps
module nor2x1 (A,B,Q);
	input A,B;
	output Q;
	reg Q;
  always@* 	
        begin
		Q = !(A|B);
  	end
endmodule
