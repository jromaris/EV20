//Flip Flop de 11 bits
module FFD11bits(in,clk,out);
input [10:0] in; // Data input 
input clk; // clock input 
output [10:0] out; // output Q 
reg [10:0] out;
always @(posedge clk) 
begin
 out = in; 
end 
endmodule 