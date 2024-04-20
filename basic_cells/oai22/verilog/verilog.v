// Created Fri Apr 19 13:25:34 2024
`timescale 1ns/10ps
module oai22 (A,B,C,D,Q);
	input A,B,C,D;
	output Q;
	
  always@*
	begin
	   Q=!((A|B)&(C|D));
  	end
endmodule
