//Flip Flop de 4 bits
module FFD4bits(in,en,clk,out);
input [3:0] in; // Data input 
input clk, en; // clock input 
output [3:0] out; // output Q 
reg [3:0] out;
always @(posedge clk) begin
	if(en) begin
		out = in;
	end
end 
endmodule 