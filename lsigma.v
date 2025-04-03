module lsigma(out, in);

	parameter SHIFT_BITS 	= 1;
	parameter ROTATE_BITS_0	= 1;
	parameter ROTATE_BITS_1	= 1;

	input  [31:0] in;
	output [31:0] out;

	wire [31:0] net [2:0];

	assign net[0] = in >> SHIFT_BITS;
	ror #(ROTATE_BITS_0) (net[1], in);
	ror #(ROTATE_BITS_1) (net[2], in);

	assign out = net[0] ^ net[1] ^ net[2];
endmodule