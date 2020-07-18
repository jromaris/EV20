//1s 16 bits
module Ones16bits(out);
output [15:0] out; // Output 
reg [15:0] out;
always @(*) begin
	out = 16'b1111111111111111;
end 
endmodule 