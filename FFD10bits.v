//Flip Flop de 10 bits
module FFD10bits(in,clk,out);
input [9:0] in; // Data input 
input clk; // clock input 
output [9:0] out; // output Q 
reg [9:0] out;
always @(posedge clk) 
begin
 out = in; 
end 
endmodule 