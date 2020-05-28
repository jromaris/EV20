//Flip Flop de 3 bits
module FFD3bits(in,clk,out);
input [2:0] in; // Data input 
input clk; // clock input 
output [2:0] out; // output Q 
reg [2:0] out;
always @(posedge clk) 
begin
 out = in; 
end 
endmodule 