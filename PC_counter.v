module PC_COUNTER(new_PC, in, hold, preload, clk);

input [10:0] in;
input hold, preload, clk;
output [10:0] new_PC;
reg [10:0] new_PC;

always @(posedge clk) begin
	if(hold) begin	
		if(preload) begin
		// Preload 
			new_PC = in;
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