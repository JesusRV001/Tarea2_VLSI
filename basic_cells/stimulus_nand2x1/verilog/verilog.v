// Created Tue Feb 20 15:28:24 2024

module stimulus_nand2x1 (a,b);
	output a,b;
	reg a,b;
	initial begin
		a = 1'b0;
		b = 1'b0;
		#2
		a = 4'b1;
		b = 4'b0;
		#2
		a = 4'b0;
		b = 4'b1;
		#2
		a = 1'b1;
		b = 1'b1;
		#2
		a = 1'b0;
		b = 1'b0;
		#2
		$finish;		
	end
endmodule
