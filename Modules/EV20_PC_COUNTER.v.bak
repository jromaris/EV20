module EV20_PC_COUNTER(out, in, res, preload, clk);

input [10:0] in;
input res, preload, clk;
output [10:0] out;
reg [10:0] out;

always @(posedge clk) begin
	if(preload) begin
	// Preload 
		out = in;
	end
	else if( not(res)) begin
	// Reset pong mi salida en 0
		out = 11'b0000000000;
	end
	else begin
	// Si no tengo preload o un reset incremento con cada clock
		out = out+1;
	end
end

endmodule