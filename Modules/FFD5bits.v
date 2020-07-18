//Flip Flop de 5 bits
module FFD5bits(in,en,clk,out);
input [4:0] in; // Data input 
input clk,en; // clock input 
output [4:0] out; // output Q 
reg [4:0] out;
always @(posedge clk) begin
	if(en) begin
		out = in;
	end	
end 
endmodule 