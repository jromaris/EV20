//Flip Flop de 11 bits
module FFD11bits(in,en,clk,out);
input [10:0] in; // Data input 
input clk,en; // clock input 
output [10:0] out; // output Q 
reg [10:0] out;
always @(posedge clk) begin
	if(en) begin
		out = in;
	end	
end 
endmodule 