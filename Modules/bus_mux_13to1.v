module bus_mux_13to1 ( input [15:0] a,                 // 4-bit input called a
                       input [15:0] b,                 // 4-bit input called b
                       input [15:0] c,                 // 4-bit input called c
                       input [15:0] d,                 // 4-bit input called d
                       input [15:0] e,                 // 4-bit input called e
                       input [15:0] f,                 // 4-bit input called f
                       input [15:0] g,                 // 4-bit input called g
                       input [15:0] h,                 // 4-bit input called h
							  input [15:0] i,                 // 4-bit input called i
                       input [15:0] j,                 // 4-bit input called j
                       input [15:0] k,                 // 4-bit input called k
                       input [15:0] l,                 // 4-bit input called l
							  input [15:0] m,                 // 4-bit input called m
							  input [3:0] sel,               // input sel used to select between a,b,c,d
                       output reg [15:0] out);         // 4-bit output based on input sel
 
   // This always block gets executed whenever a/b/c/d/sel changes value
   // When that happens, based on value in sel, output is assigned to either a/b/c/d
   always @ (*) begin
      case (sel)
         4'b0000 : out <= a;
         4'b0001 : out <= b;
         4'b0010 : out <= c;
         4'b0011 : out <= d;
			4'b0100 : out <= e;
         4'b0101 : out <= f;
         4'b0110 : out <= g;
         4'b0111 : out <= h;
			4'b1000 : out <= i;
         4'b1001 : out <= j;
         4'b1010 : out <= k;
         4'b1011 : out <= l;
         4'b1100 : out <= m;
      endcase
   end
endmodule