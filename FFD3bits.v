//Flip Flop de 3 bits
module FFD3bits(in,en,clk,out);
input [2:0] in; // Data input 
input clk, en; // clock input 
output [2:0] out; // output Q 
reg [2:0] out;
always @(posedge clk) begin
	if(en) begin
		out = in;
	end
end 
endmodule 