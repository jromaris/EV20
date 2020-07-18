//0 16 bits
module Zero16bits(out);
output [15:0] out; // Output 
reg [15:0] out;
always @(*) begin
	out = 0;
end 
endmodule 