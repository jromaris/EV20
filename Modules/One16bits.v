//1 16 bits
module One16bits(out);
output [15:0] out; // Output 
reg [15:0] out;
always @(*) begin
	out = 16'b0000000000000001;
end 
endmodule 