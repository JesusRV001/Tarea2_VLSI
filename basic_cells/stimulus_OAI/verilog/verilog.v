// Created Tue Apr 16 13:38:32 2024

module stimulus_OAI (a, b, c, d);
	  output a, b, c, d;
	  reg a, b, c, d;
	  initial begin
	    	a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0; #2;
		a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b1; #2;
		a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b0; #2;
		a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b1; #2;
		a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b0; #2;
		a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b1; #2;
		a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b0; #2;
		a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b1; #2;
		a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b0; #2;
		a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b1; #2;
		a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b0; #2;
		a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b1; #2;
		a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b0; #2;
		a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b1; #2;
		a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b0; #2;
		a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b1; #2;
		a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0; #2;
		$finish;
	  end
endmodule
