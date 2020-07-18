//Not 16 bits
module Not16bits(in,out);
input [15:0] in; // Data input 
output [15:0] out; // output Q 
reg [15:0] out;
always @(*) begin
	out = ~in;
end 
endmodule 