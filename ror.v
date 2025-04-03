module ror(out, in);

	parameter N = 1;
	
	input  [31:0] in;
	output [31:0] out;

	assign out = {in[N-1:0], in[31:N]};
endmodule