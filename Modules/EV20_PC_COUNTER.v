module EV20_PC_COUNTER(new_PC, in, res, preload, clk);

input [10:0] in;
input res, preload, clk;
output [10:0] new_PC;
reg [10:0] new_PC;

always @(posedge clk) begin
	if(preload) begin
	// Preload 
		new_PC = in;
	end
	else if(~res) begin
	// Reset pong mi salida en 0
		new_PC = 11'b0000000000;
	end
	else begin
	// Si no tengo preload o un reset incremento con cada clock
		new_PC = new_PC+1;
	end
end

endmodule