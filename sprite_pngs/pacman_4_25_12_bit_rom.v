module pacman_4_25_rom
	(
		input wire clk,
		input wire [3:0] row,
		input wire [3:0] col,
		output reg [11:0] color_data
	);

	(* rom_style = "block" *)

	//signal declaration
	reg [3:0] row_reg;
	reg [3:0] col_reg;

	always @(posedge clk)
		begin
		row_reg <= row;
		col_reg <= col;
		end

	always @(*) begin
		if(({row_reg, col_reg}>=8'b00000000) && ({row_reg, col_reg}<8'b00000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b00000100)) color_data = 12'b001100110000;
		if(({row_reg, col_reg}==8'b00000101)) color_data = 12'b010101000000;
		if(({row_reg, col_reg}==8'b00000110)) color_data = 12'b001000100000;

		if(({row_reg, col_reg}>=8'b00000111) && ({row_reg, col_reg}<8'b00010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b00010010)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==8'b00010011)) color_data = 12'b011101110000;
		if(({row_reg, col_reg}==8'b00010100)) color_data = 12'b110011000000;
		if(({row_reg, col_reg}==8'b00010101)) color_data = 12'b111111110000;
		if(({row_reg, col_reg}==8'b00010110)) color_data = 12'b101110100000;
		if(({row_reg, col_reg}==8'b00010111)) color_data = 12'b011001100000;

		if(({row_reg, col_reg}>=8'b00011000) && ({row_reg, col_reg}<8'b00100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b00100001)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==8'b00100010)) color_data = 12'b101010100000;
		if(({row_reg, col_reg}==8'b00100011)) color_data = 12'b111111110000;
		if(({row_reg, col_reg}==8'b00100100)) color_data = 12'b111111100000;
		if(({row_reg, col_reg}>=8'b00100101) && ({row_reg, col_reg}<8'b00100111)) color_data = 12'b111111110000;
		if(({row_reg, col_reg}==8'b00100111)) color_data = 12'b111111100000;
		if(({row_reg, col_reg}==8'b00101000)) color_data = 12'b100010000000;

		if(({row_reg, col_reg}==8'b00101001)) color_data = 12'b000100000000;
		if(({row_reg, col_reg}==8'b00110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b00110001)) color_data = 12'b100001110000;
		if(({row_reg, col_reg}>=8'b00110010) && ({row_reg, col_reg}<8'b00110111)) color_data = 12'b111111110000;
		if(({row_reg, col_reg}==8'b00110111)) color_data = 12'b111011100000;
		if(({row_reg, col_reg}==8'b00111000)) color_data = 12'b100110010001;

		if(({row_reg, col_reg}==8'b00111001)) color_data = 12'b001100110000;
		if(({row_reg, col_reg}==8'b01000000)) color_data = 12'b001100110001;
		if(({row_reg, col_reg}==8'b01000001)) color_data = 12'b110010110000;
		if(({row_reg, col_reg}>=8'b01000010) && ({row_reg, col_reg}<8'b01000100)) color_data = 12'b111111110000;
		if(({row_reg, col_reg}==8'b01000100)) color_data = 12'b111011100000;
		if(({row_reg, col_reg}==8'b01000101)) color_data = 12'b110011000001;
		if(({row_reg, col_reg}==8'b01000110)) color_data = 12'b011001100000;
		if(({row_reg, col_reg}==8'b01000111)) color_data = 12'b010101010000;
		if(({row_reg, col_reg}==8'b01001000)) color_data = 12'b000100000000;

		if(({row_reg, col_reg}==8'b01001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b01010000)) color_data = 12'b010101010000;
		if(({row_reg, col_reg}>=8'b01010001) && ({row_reg, col_reg}<8'b01010011)) color_data = 12'b111111110000;
		if(({row_reg, col_reg}==8'b01010011)) color_data = 12'b111111100000;
		if(({row_reg, col_reg}==8'b01010100)) color_data = 12'b100110010000;
		if(({row_reg, col_reg}==8'b01010101)) color_data = 12'b010000110000;

		if(({row_reg, col_reg}>=8'b01010110) && ({row_reg, col_reg}<8'b01100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b01100000)) color_data = 12'b001100110000;
		if(({row_reg, col_reg}==8'b01100001)) color_data = 12'b110011000000;
		if(({row_reg, col_reg}>=8'b01100010) && ({row_reg, col_reg}<8'b01100100)) color_data = 12'b111111110000;
		if(({row_reg, col_reg}==8'b01100100)) color_data = 12'b111111100000;
		if(({row_reg, col_reg}==8'b01100101)) color_data = 12'b110010110000;
		if(({row_reg, col_reg}==8'b01100110)) color_data = 12'b011101100000;
		if(({row_reg, col_reg}==8'b01100111)) color_data = 12'b010101000000;
		if(({row_reg, col_reg}==8'b01101000)) color_data = 12'b000100010000;

		if(({row_reg, col_reg}>=8'b01101001) && ({row_reg, col_reg}<8'b01110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b01110001)) color_data = 12'b100001110000;
		if(({row_reg, col_reg}>=8'b01110010) && ({row_reg, col_reg}<8'b01110111)) color_data = 12'b111111110000;
		if(({row_reg, col_reg}==8'b01110111)) color_data = 12'b111011010000;
		if(({row_reg, col_reg}==8'b01111000)) color_data = 12'b101010100000;

		if(({row_reg, col_reg}==8'b01111001)) color_data = 12'b010101000000;
		if(({row_reg, col_reg}==8'b10000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b10000001)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==8'b10000010)) color_data = 12'b101010100000;
		if(({row_reg, col_reg}>=8'b10000011) && ({row_reg, col_reg}<8'b10000111)) color_data = 12'b111111110000;
		if(({row_reg, col_reg}==8'b10000111)) color_data = 12'b111111100000;
		if(({row_reg, col_reg}==8'b10001000)) color_data = 12'b011101110000;

		if(({row_reg, col_reg}==8'b10001001)) color_data = 12'b000100010000;
		if(({row_reg, col_reg}>=8'b10010000) && ({row_reg, col_reg}<8'b10010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b10010010)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==8'b10010011)) color_data = 12'b100001110000;
		if(({row_reg, col_reg}==8'b10010100)) color_data = 12'b110111000000;
		if(({row_reg, col_reg}==8'b10010101)) color_data = 12'b111111100000;
		if(({row_reg, col_reg}==8'b10010110)) color_data = 12'b101110100000;
		if(({row_reg, col_reg}==8'b10010111)) color_data = 12'b011101100000;
		if(({row_reg, col_reg}==8'b10011000)) color_data = 12'b000100000000;

		if(({row_reg, col_reg}>=8'b10011001) && ({row_reg, col_reg}<=8'b10011001)) color_data = 12'b000000000000;
	end
endmodule