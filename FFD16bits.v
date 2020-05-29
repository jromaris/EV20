//Flip Flop de 16 bits
module FFD16bits(in,en,clk,out);
input [15:0] in; // Data input 
input clk,en; // clock input 
output [15:0] out; // output Q 
reg [15:0] out;
always @(posedge clk) begin
	if(en) begin
		out = in;
	end	
end 
endmodule 