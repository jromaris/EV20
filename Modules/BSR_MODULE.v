module BSR(
		input enable,
		input clk, 
		input branch,
		input return,
		input[9:0] S,
		input[10:0] OLD_PC,
		output[10:0] NEW_PC,
		output[2:0] level
    );
	 
	reg [2:0] counter;
	reg [10:0] SHFT0, SHFT1, SHFT2, SHFT3, ADDER;
	
	assign NEW_PC = ADDER;
	assign level = counter;

	always @(posedge clk) begin
		if(~enable) begin
			ADDER = 11'bzzzzzzzzzzz;
		end
		else if(branch) begin
			counter = counter + 1;
			ADDER = OLD_PC + S;
			SHFT0 = SHFT1;
			SHFT1 = SHFT2;
			SHFT2 = SHFT3;
			SHFT3 = OLD_PC;
		end
		else if(return) begin
			counter = counter - 1;
			ADDER = SHFT3+1;
			SHFT3 = SHFT2;
			SHFT2 = SHFT1;
			SHFT1 = SHFT0;
			SHFT0 = 11'b00000000000;
		end
	end
endmodule