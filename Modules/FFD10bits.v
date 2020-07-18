//Flip Flop de 10 bits
module FFD10bits(in,en,clk,out);
input [9:0] in; // Data input 
input clk,en; // clock input 
output [9:0] out; // output Q 
reg [9:0] out;
always @(posedge clk) begin
	if(en) begin
		out = in;
	end	
end 
endmodule 