//Flip Flop de 5 bits
module FFD5btis(in,clk,out);
input [4:0] in; // Data input 
input clk; // clock input 
output [4:0] out; // output Q 
reg [4:0] out;
always @(posedge clk) 
begin
 out = in; 
end 
endmodule 