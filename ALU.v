/* ALU operaciones lógicas y aritméticas
----------------------------------------------------------------------
|ALU_Sel|   ALU operación
----------------------------------------------------------------------
| 0000  |   Z = A;
----------------------------------------------------------------------
| 0001  |   Z = B;
----------------------------------------------------------------------
| 0010  |   Z = not(A);
----------------------------------------------------------------------
| 0011  |   Z = not(B);
----------------------------------------------------------------------
| 0100  |   Z = A + B;
----------------------------------------------------------------------
| 0101  |   Z = A + B + CY;
----------------------------------------------------------------------
| 0110  |   Z = A or B;
----------------------------------------------------------------------
| 0111  |   Z = A and B;
----------------------------------------------------------------------
| 1000  |   Z = 0;
----------------------------------------------------------------------
| 1001  |   Z = 1;
----------------------------------------------------------------------
| 1010  |   Z = 0xFFFF;
----------------------------------------------------------------------
| 1011  |   Cy_Out = 0;
----------------------------------------------------------------------
| 1100  |   Cy_Out = 1;
----------------------------------------------------------------------*/

module alu(
           input [15:0] A,B,  // Inputs de 16 bits                
           input [3:0] ALU_Sel,// Selector de 4 bits
		     input Cy_In, //Carry in
			  input System_Clk, //El clock utilizado para latchear los buses A y B
			  output [15:0] ALU_Out, // Salida de 16 bits
           output CY_Out // Flag de Carry Out
    );
    reg [16:0] ALU_Result; //El resultado de la operacion de la Alu
    assign ALU_Out = ALU_Result[15:0]; // La salida de la alu es el resultado de la operación de la misma
    assign CY_Out = ALU_Result[16]; // El flag de Carry Out es el bit más significativo del registro temporario
    
	 always @(posedge System_Clk)
    begin
        case(ALU_Sel)
        4'b0000: // Salida es A
           ALU_Result = A + B ; 
        4'b0001: // Salida es B
           ALU_Result = B ;
        4'b0010: // not(A)
           ALU_Result = ~A;
        4'b0011: // not(B)
           ALU_Result = ~B;
        4'b0100: // A + B
           ALU_Result = A + B;
        4'b0101: // A+ B + CY_In	
           ALU_Result = A + B + Cy_In;
        4'b0110: // A or B
           ALU_Result = A | B;
        4'b0111: // A and B
           ALU_Result = A & B;
        4'b1000: //  Out = 0 
           ALU_Result = 0;
        4'b1001: //  Out  = 1
           ALU_Result[15:0] = 16'b0000000000000001;
        4'b1010: //  Out = 0xFFFF 
           ALU_Result[15:0] = 16'b1111111111111111;
        4'b1011: //  Cy_Out= 0
           ALU_Result[16] = 0;
        4'b1100: //  Cy_Out = 1 
           ALU_Result[16] = 1;
         default: ALU_Result = A + B ; 
        endcase
    end

endmodule