module multiplexer16b(
    input [15:0] a,
    input [15:0] b,
    input select,
    output [15:0] result
//    input clk
    );
//    wire [15:0] a,b;
    reg [15:0] out;
	 assign result = out;
     
    always @(a,b,select)
    begin
    if(select==0)
        out=a;
    else
        out=b;
    end    
endmodule