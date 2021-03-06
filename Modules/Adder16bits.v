//Adder 16 bits
module Adder16bits(A,B,CY_In,CY_Out,out);
input [15:0] A,B; // Input
input CY_In;
output CY_Out;
output [15:0] out; // Output 
reg [16:0] Result;
assign out = Result[15:0]; // La salida de la alu es el resultado de la operación de la misma
assign CY_Out = Result[16]; // El flag de Carry Out es el bit más significativo del registro temporario

always @(*) begin
	Result = A + B + CY_In;
end 
endmodule 