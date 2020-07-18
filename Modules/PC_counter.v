module PC_COUNTER(new_PC, in, hold, preload, clk, branch, ret,jump);

input [10:0] in;
input hold, preload, clk, branch,ret,jump;
output [10:0] new_PC;

reg [10:0] SHFT0, SHFT1, SHFT2, SHFT3, ADDER;
reg [10:0] new_PC;
reg [9:0] S;
reg [2:0] counter;

assign level = counter;

always @(posedge clk) begin
	if(hold) begin	
		if(jump) begin
			if(branch) begin
				counter = counter + 1;
				SHFT0 = SHFT1;
				SHFT1 = SHFT2;
				SHFT2 = SHFT3;
				SHFT3 = new_PC-2;
				new_PC = new_PC + in[9:0]-2;

			end
			else if(ret) begin
				counter = counter - 1;
				new_PC = SHFT3+1;
				SHFT3 = SHFT2;
				SHFT2 = SHFT1;
				SHFT1 = SHFT0;
				SHFT0 = 11'b00000000000;
			end
			else if(preload) begin
			// Preload 
				new_PC = in;
			end
		end
		else begin
		// Si no tengo preload o un reset incremento con cada clock
			new_PC = new_PC+1;
		end
	end
	else begin
		new_PC = new_PC;
	end
end

endmodule
