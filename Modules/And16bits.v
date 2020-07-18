//AND 16 bits
module And16bits(A,B,out);
input [15:0] A,B; // Input
output [15:0] out; // Output 
reg [15:0] out;
always @(*) begin
	out = A & B;
end 
endmodule 