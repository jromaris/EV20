//Flip Flop de 7 bits
module FFD7bits(in,en,clk,out);
input [6:0] in; // Data input 
input clk,en; // clock input 
output [6:0] out; // output Q 
reg [6:0] out;
always @(posedge clk) begin
	if(en) begin
		out = in;
	end	
end 
endmodule 