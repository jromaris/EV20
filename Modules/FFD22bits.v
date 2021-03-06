//Flip Flop de 22 bits
module FFD22bits(in,en,clk,out);
input [21:0] in; // Data input 
input clk,en; // clock input 
output [21:0] out; // output Q 
reg [21:0] out;
always @(posedge clk) begin
	if(en) begin
		out = in;
	end	
end 
endmodule 