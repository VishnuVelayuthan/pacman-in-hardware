module pacman_resized_rom
	(
		input wire clk,
		input wire [4:0] row,
		input wire [4:0] col,
		output reg [11:0] color_data
	);

	(* rom_style = "block" *)

	//signal declaration
	reg [4:0] row_reg;
	reg [4:0] col_reg;

	always @(posedge clk)
		begin
		row_reg <= row;
		col_reg <= col;
		end

	always @(*) begin

		if(({row_reg, col_reg}>=10'b0000000000) && ({row_reg, col_reg}<10'b0000101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0000101010)) color_data = 12'b000100010000;
		if(({row_reg, col_reg}==10'b0000101011)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==10'b0000101100)) color_data = 12'b001000010001;
		if(({row_reg, col_reg}==10'b0000101101)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==10'b0000101110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==10'b0000101111)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}>=10'b0000110000) && ({row_reg, col_reg}<10'b0000110010)) color_data = 12'b000100010000;
		if(({row_reg, col_reg}==10'b0000110010)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==10'b0000110011)) color_data = 12'b000100010000;

		if(({row_reg, col_reg}>=10'b0000110100) && ({row_reg, col_reg}<10'b0001001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0001001001)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==10'b0001001010)) color_data = 12'b110010110010;
		if(({row_reg, col_reg}==10'b0001001011)) color_data = 12'b111011010010;
		if(({row_reg, col_reg}==10'b0001001100)) color_data = 12'b110111000011;
		if(({row_reg, col_reg}==10'b0001001101)) color_data = 12'b110111010010;
		if(({row_reg, col_reg}==10'b0001001110)) color_data = 12'b110111000011;
		if(({row_reg, col_reg}==10'b0001001111)) color_data = 12'b110111000010;
		if(({row_reg, col_reg}>=10'b0001010000) && ({row_reg, col_reg}<10'b0001010010)) color_data = 12'b111011000011;
		if(({row_reg, col_reg}==10'b0001010010)) color_data = 12'b111011010011;
		if(({row_reg, col_reg}==10'b0001010011)) color_data = 12'b110010110010;
		if(({row_reg, col_reg}==10'b0001010100)) color_data = 12'b001000010000;

		if(({row_reg, col_reg}>=10'b0001010101) && ({row_reg, col_reg}<10'b0001100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0001100110)) color_data = 12'b000100010000;
		if(({row_reg, col_reg}==10'b0001100111)) color_data = 12'b001000010001;
		if(({row_reg, col_reg}==10'b0001101000)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==10'b0001101001)) color_data = 12'b001100110000;
		if(({row_reg, col_reg}==10'b0001101010)) color_data = 12'b110111010011;
		if(({row_reg, col_reg}==10'b0001101011)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}==10'b0001101100)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b0001101101)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}==10'b0001101110)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b0001101111)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}==10'b0001110000)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}>=10'b0001110001) && ({row_reg, col_reg}<10'b0001110011)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0001110011)) color_data = 12'b111011010011;
		if(({row_reg, col_reg}==10'b0001110100)) color_data = 12'b001100110000;
		if(({row_reg, col_reg}==10'b0001110101)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==10'b0001110110)) color_data = 12'b000100100000;
		if(({row_reg, col_reg}==10'b0001110111)) color_data = 12'b000100010000;

		if(({row_reg, col_reg}>=10'b0001111000) && ({row_reg, col_reg}<10'b0010000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0010000101)) color_data = 12'b000100010000;
		if(({row_reg, col_reg}==10'b0010000110)) color_data = 12'b101110110010;
		if(({row_reg, col_reg}==10'b0010000111)) color_data = 12'b110111000011;
		if(({row_reg, col_reg}==10'b0010001000)) color_data = 12'b110111000010;
		if(({row_reg, col_reg}==10'b0010001001)) color_data = 12'b111011010011;
		if(({row_reg, col_reg}>=10'b0010001010) && ({row_reg, col_reg}<10'b0010001110)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0010001110)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}>=10'b0010001111) && ({row_reg, col_reg}<10'b0010010100)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0010010100)) color_data = 12'b111011000011;
		if(({row_reg, col_reg}==10'b0010010101)) color_data = 12'b111011010011;
		if(({row_reg, col_reg}==10'b0010010110)) color_data = 12'b111011000011;
		if(({row_reg, col_reg}==10'b0010010111)) color_data = 12'b110010110011;
		if(({row_reg, col_reg}==10'b0010011000)) color_data = 12'b000100010000;

		if(({row_reg, col_reg}>=10'b0010011001) && ({row_reg, col_reg}<10'b0010100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0010100100)) color_data = 12'b000100010000;
		if(({row_reg, col_reg}==10'b0010100101)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==10'b0010100110)) color_data = 12'b111011010011;
		if(({row_reg, col_reg}>=10'b0010100111) && ({row_reg, col_reg}<10'b0010101001)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0010101001)) color_data = 12'b111111110100;
		if(({row_reg, col_reg}>=10'b0010101010) && ({row_reg, col_reg}<10'b0010101100)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0010101100)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}==10'b0010101101)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}>=10'b0010101110) && ({row_reg, col_reg}<10'b0010110000)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b0010110000)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}==10'b0010110001)) color_data = 12'b111111110100;
		if(({row_reg, col_reg}==10'b0010110010)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b0010110011)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}>=10'b0010110100) && ({row_reg, col_reg}<10'b0010110110)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}==10'b0010110110)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0010110111)) color_data = 12'b111011010010;
		if(({row_reg, col_reg}==10'b0010111000)) color_data = 12'b001100100001;
		if(({row_reg, col_reg}==10'b0010111001)) color_data = 12'b001000010000;

		if(({row_reg, col_reg}>=10'b0010111010) && ({row_reg, col_reg}<10'b0011000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0011000011)) color_data = 12'b000100010000;
		if(({row_reg, col_reg}==10'b0011000100)) color_data = 12'b110010110010;
		if(({row_reg, col_reg}==10'b0011000101)) color_data = 12'b111011010011;
		if(({row_reg, col_reg}==10'b0011000110)) color_data = 12'b111111100010;
		if(({row_reg, col_reg}==10'b0011000111)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b0011001000)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}>=10'b0011001001) && ({row_reg, col_reg}<10'b0011001101)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0011001101)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}>=10'b0011001110) && ({row_reg, col_reg}<10'b0011010101)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0011010101)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}>=10'b0011010110) && ({row_reg, col_reg}<10'b0011011000)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0011011000)) color_data = 12'b111011010011;
		if(({row_reg, col_reg}==10'b0011011001)) color_data = 12'b101110110010;
		if(({row_reg, col_reg}==10'b0011011010)) color_data = 12'b000100010000;

		if(({row_reg, col_reg}>=10'b0011011011) && ({row_reg, col_reg}<10'b0011100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0011100011)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==10'b0011100100)) color_data = 12'b110111000011;
		if(({row_reg, col_reg}==10'b0011100101)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0011100110)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}>=10'b0011100111) && ({row_reg, col_reg}<10'b0011101001)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}==10'b0011101001)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}>=10'b0011101010) && ({row_reg, col_reg}<10'b0011101100)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0011101100)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}>=10'b0011101101) && ({row_reg, col_reg}<10'b0011101111)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}>=10'b0011101111) && ({row_reg, col_reg}<10'b0011110001)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b0011110001)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0011110010)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b0011110011)) color_data = 12'b111111100010;
		if(({row_reg, col_reg}==10'b0011110100)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}>=10'b0011110101) && ({row_reg, col_reg}<10'b0011110111)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0011110111)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b0011111000)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0011111001)) color_data = 12'b111011010011;
		if(({row_reg, col_reg}==10'b0011111010)) color_data = 12'b001000010000;

		if(({row_reg, col_reg}>=10'b0011111011) && ({row_reg, col_reg}<10'b0100000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0100000011)) color_data = 12'b001000010001;
		if(({row_reg, col_reg}==10'b0100000100)) color_data = 12'b111011010010;
		if(({row_reg, col_reg}>=10'b0100000101) && ({row_reg, col_reg}<10'b0100000111)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0100000111)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b0100001000)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}>=10'b0100001001) && ({row_reg, col_reg}<10'b0100001100)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0100001100)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}>=10'b0100001101) && ({row_reg, col_reg}<10'b0100001111)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0100001111)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b0100010000)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0100010001)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b0100010010)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0100010011)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}>=10'b0100010100) && ({row_reg, col_reg}<10'b0100010110)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0100010110)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b0100010111)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0100011000)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b0100011001)) color_data = 12'b110111010010;
		if(({row_reg, col_reg}==10'b0100011010)) color_data = 12'b000100010000;

		if(({row_reg, col_reg}>=10'b0100011011) && ({row_reg, col_reg}<10'b0100100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0100100011)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==10'b0100100100)) color_data = 12'b101110110010;
		if(({row_reg, col_reg}==10'b0100100101)) color_data = 12'b111011010100;
		if(({row_reg, col_reg}>=10'b0100100110) && ({row_reg, col_reg}<10'b0100101000)) color_data = 12'b110111010011;
		if(({row_reg, col_reg}>=10'b0100101000) && ({row_reg, col_reg}<10'b0100101010)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}>=10'b0100101010) && ({row_reg, col_reg}<10'b0100101110)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0100101110)) color_data = 12'b111111110100;
		if(({row_reg, col_reg}>=10'b0100101111) && ({row_reg, col_reg}<10'b0100110111)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0100110111)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b0100111000)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}==10'b0100111001)) color_data = 12'b111011010011;
		if(({row_reg, col_reg}==10'b0100111010)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==10'b0100111011)) color_data = 12'b000100010000;

		if(({row_reg, col_reg}>=10'b0100111100) && ({row_reg, col_reg}<10'b0101000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0101000100) && ({row_reg, col_reg}<10'b0101000111)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==10'b0101000111)) color_data = 12'b001100110001;
		if(({row_reg, col_reg}==10'b0101001000)) color_data = 12'b110111010010;
		if(({row_reg, col_reg}==10'b0101001001)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}>=10'b0101001010) && ({row_reg, col_reg}<10'b0101001100)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b0101001100)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0101001101)) color_data = 12'b111111110100;
		if(({row_reg, col_reg}==10'b0101001110)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}>=10'b0101001111) && ({row_reg, col_reg}<10'b0101010001)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}>=10'b0101010001) && ({row_reg, col_reg}<10'b0101010100)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}>=10'b0101010100) && ({row_reg, col_reg}<10'b0101010110)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}==10'b0101010110)) color_data = 12'b111111100010;
		if(({row_reg, col_reg}==10'b0101010111)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0101011000)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b0101011001)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0101011010)) color_data = 12'b111011010011;
		if(({row_reg, col_reg}==10'b0101011011)) color_data = 12'b110010110010;
		if(({row_reg, col_reg}==10'b0101011100)) color_data = 12'b000100010000;

		if(({row_reg, col_reg}>=10'b0101011101) && ({row_reg, col_reg}<10'b0101100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0101100111)) color_data = 12'b000100010000;
		if(({row_reg, col_reg}==10'b0101101000)) color_data = 12'b110010110010;
		if(({row_reg, col_reg}==10'b0101101001)) color_data = 12'b111011010010;
		if(({row_reg, col_reg}==10'b0101101010)) color_data = 12'b110111000011;
		if(({row_reg, col_reg}==10'b0101101011)) color_data = 12'b110111010011;
		if(({row_reg, col_reg}==10'b0101101100)) color_data = 12'b110111010010;
		if(({row_reg, col_reg}==10'b0101101101)) color_data = 12'b111011010100;
		if(({row_reg, col_reg}>=10'b0101101110) && ({row_reg, col_reg}<10'b0101110001)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}>=10'b0101110001) && ({row_reg, col_reg}<10'b0101110011)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}>=10'b0101110011) && ({row_reg, col_reg}<10'b0101110111)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}>=10'b0101110111) && ({row_reg, col_reg}<10'b0101111001)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}>=10'b0101111001) && ({row_reg, col_reg}<10'b0101111011)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0101111011)) color_data = 12'b111011010010;
		if(({row_reg, col_reg}==10'b0101111100)) color_data = 12'b000100010000;

		if(({row_reg, col_reg}>=10'b0101111101) && ({row_reg, col_reg}<10'b0110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0110001000)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==10'b0110001001)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}>=10'b0110001010) && ({row_reg, col_reg}<10'b0110001101)) color_data = 12'b000100010000;
		if(({row_reg, col_reg}==10'b0110001101)) color_data = 12'b001100110000;
		if(({row_reg, col_reg}==10'b0110001110)) color_data = 12'b110111010100;
		if(({row_reg, col_reg}==10'b0110001111)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0110010000)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}==10'b0110010001)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}>=10'b0110010010) && ({row_reg, col_reg}<10'b0110010100)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0110010100)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b0110010101)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0110010110)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}>=10'b0110010111) && ({row_reg, col_reg}<10'b0110011001)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}>=10'b0110011001) && ({row_reg, col_reg}<10'b0110011011)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b0110011011)) color_data = 12'b111011000100;
		if(({row_reg, col_reg}==10'b0110011100)) color_data = 12'b001000010000;

		if(({row_reg, col_reg}>=10'b0110011101) && ({row_reg, col_reg}<10'b0110101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0110101101)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==10'b0110101110)) color_data = 12'b110010110011;
		if(({row_reg, col_reg}==10'b0110101111)) color_data = 12'b111011010011;
		if(({row_reg, col_reg}==10'b0110110000)) color_data = 12'b110111010010;
		if(({row_reg, col_reg}==10'b0110110001)) color_data = 12'b110111000011;
		if(({row_reg, col_reg}>=10'b0110110010) && ({row_reg, col_reg}<10'b0110110100)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}>=10'b0110110100) && ({row_reg, col_reg}<10'b0110110111)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b0110110111)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0110111000)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}>=10'b0110111001) && ({row_reg, col_reg}<10'b0110111011)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0110111011)) color_data = 12'b111011010011;
		if(({row_reg, col_reg}==10'b0110111100)) color_data = 12'b000100010000;

		if(({row_reg, col_reg}>=10'b0110111101) && ({row_reg, col_reg}<10'b0111001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0111001110)) color_data = 12'b000100010000;
		if(({row_reg, col_reg}==10'b0111001111)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==10'b0111010000)) color_data = 12'b000100010000;
		if(({row_reg, col_reg}==10'b0111010001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==10'b0111010010)) color_data = 12'b110111000011;
		if(({row_reg, col_reg}==10'b0111010011)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0111010100)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b0111010101)) color_data = 12'b111111100010;
		if(({row_reg, col_reg}>=10'b0111010110) && ({row_reg, col_reg}<10'b0111011001)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0111011001)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b0111011010)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0111011011)) color_data = 12'b110111000011;
		if(({row_reg, col_reg}==10'b0111011100)) color_data = 12'b001000010000;

		if(({row_reg, col_reg}>=10'b0111011101) && ({row_reg, col_reg}<10'b0111101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b0111101110)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=10'b0111101111) && ({row_reg, col_reg}<10'b0111110001)) color_data = 12'b000100010000;
		if(({row_reg, col_reg}==10'b0111110001)) color_data = 12'b001100100000;
		if(({row_reg, col_reg}==10'b0111110010)) color_data = 12'b110111010011;
		if(({row_reg, col_reg}==10'b0111110011)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0111110100)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b0111110101)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}==10'b0111110110)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b0111110111)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}>=10'b0111111000) && ({row_reg, col_reg}<10'b0111111011)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b0111111011)) color_data = 12'b110111010010;
		if(({row_reg, col_reg}==10'b0111111100)) color_data = 12'b001000010001;

		if(({row_reg, col_reg}>=10'b0111111101) && ({row_reg, col_reg}<10'b1000001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b1000001101)) color_data = 12'b000100010000;
		if(({row_reg, col_reg}==10'b1000001110)) color_data = 12'b110010110010;
		if(({row_reg, col_reg}==10'b1000001111)) color_data = 12'b111011010011;
		if(({row_reg, col_reg}==10'b1000010000)) color_data = 12'b111011000010;
		if(({row_reg, col_reg}==10'b1000010001)) color_data = 12'b111011010011;
		if(({row_reg, col_reg}>=10'b1000010010) && ({row_reg, col_reg}<10'b1000011011)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1000011011)) color_data = 12'b111011000011;
		if(({row_reg, col_reg}==10'b1000011100)) color_data = 12'b000100100000;

		if(({row_reg, col_reg}>=10'b1000011101) && ({row_reg, col_reg}<10'b1000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b1000101000)) color_data = 12'b000100010000;
		if(({row_reg, col_reg}==10'b1000101001)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==10'b1000101010)) color_data = 12'b001000010001;
		if(({row_reg, col_reg}==10'b1000101011)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==10'b1000101100)) color_data = 12'b000100010000;
		if(({row_reg, col_reg}==10'b1000101101)) color_data = 12'b010000110000;
		if(({row_reg, col_reg}==10'b1000101110)) color_data = 12'b110111000011;
		if(({row_reg, col_reg}==10'b1000101111)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}>=10'b1000110000) && ({row_reg, col_reg}<10'b1000110011)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}>=10'b1000110011) && ({row_reg, col_reg}<10'b1000111000)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}>=10'b1000111000) && ({row_reg, col_reg}<10'b1000111010)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b1000111010)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1000111011)) color_data = 12'b111011000011;
		if(({row_reg, col_reg}==10'b1000111100)) color_data = 12'b000100100000;

		if(({row_reg, col_reg}>=10'b1000111101) && ({row_reg, col_reg}<10'b1001000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b1001000111)) color_data = 12'b000100010000;
		if(({row_reg, col_reg}==10'b1001001000)) color_data = 12'b110010110010;
		if(({row_reg, col_reg}==10'b1001001001)) color_data = 12'b111011010010;
		if(({row_reg, col_reg}==10'b1001001010)) color_data = 12'b110111000011;
		if(({row_reg, col_reg}==10'b1001001011)) color_data = 12'b111011010010;
		if(({row_reg, col_reg}==10'b1001001100)) color_data = 12'b110111010011;
		if(({row_reg, col_reg}==10'b1001001101)) color_data = 12'b111011010011;
		if(({row_reg, col_reg}==10'b1001001110)) color_data = 12'b111111110100;
		if(({row_reg, col_reg}>=10'b1001001111) && ({row_reg, col_reg}<10'b1001010010)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}>=10'b1001010010) && ({row_reg, col_reg}<10'b1001011010)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1001011010)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}==10'b1001011011)) color_data = 12'b110111000010;
		if(({row_reg, col_reg}==10'b1001011100)) color_data = 12'b000100100000;

		if(({row_reg, col_reg}>=10'b1001011101) && ({row_reg, col_reg}<10'b1001100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b1001100100)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}>=10'b1001100101) && ({row_reg, col_reg}<10'b1001100111)) color_data = 12'b000100010000;
		if(({row_reg, col_reg}==10'b1001100111)) color_data = 12'b001100110001;
		if(({row_reg, col_reg}==10'b1001101000)) color_data = 12'b111011010011;
		if(({row_reg, col_reg}==10'b1001101001)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}>=10'b1001101010) && ({row_reg, col_reg}<10'b1001101100)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1001101100)) color_data = 12'b111111100010;
		if(({row_reg, col_reg}>=10'b1001101101) && ({row_reg, col_reg}<10'b1001111000)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1001111000)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b1001111001)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1001111010)) color_data = 12'b110111010010;
		if(({row_reg, col_reg}==10'b1001111011)) color_data = 12'b110010110001;
		if(({row_reg, col_reg}==10'b1001111100)) color_data = 12'b000100010000;

		if(({row_reg, col_reg}>=10'b1001111101) && ({row_reg, col_reg}<10'b1010000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b1010000011)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==10'b1010000100)) color_data = 12'b101110110011;
		if(({row_reg, col_reg}>=10'b1010000101) && ({row_reg, col_reg}<10'b1010000111)) color_data = 12'b110111010011;
		if(({row_reg, col_reg}==10'b1010000111)) color_data = 12'b111011010011;
		if(({row_reg, col_reg}==10'b1010001000)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1010001001)) color_data = 12'b111111100010;
		if(({row_reg, col_reg}==10'b1010001010)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b1010001011)) color_data = 12'b111111100101;
		if(({row_reg, col_reg}>=10'b1010001100) && ({row_reg, col_reg}<10'b1010001110)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1010001110)) color_data = 12'b111111110100;
		if(({row_reg, col_reg}>=10'b1010001111) && ({row_reg, col_reg}<10'b1010010111)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1010010111)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b1010011000)) color_data = 12'b111111100010;
		if(({row_reg, col_reg}==10'b1010011001)) color_data = 12'b111011000011;
		if(({row_reg, col_reg}==10'b1010011010)) color_data = 12'b001100110001;
		if(({row_reg, col_reg}==10'b1010011011)) color_data = 12'b000100010000;

		if(({row_reg, col_reg}>=10'b1010011100) && ({row_reg, col_reg}<10'b1010100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b1010100011)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==10'b1010100100)) color_data = 12'b110111010011;
		if(({row_reg, col_reg}==10'b1010100101)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}>=10'b1010100110) && ({row_reg, col_reg}<10'b1010101000)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1010101000)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}>=10'b1010101001) && ({row_reg, col_reg}<10'b1010101110)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1010101110)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}>=10'b1010101111) && ({row_reg, col_reg}<10'b1010111000)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1010111000)) color_data = 12'b111111110100;
		if(({row_reg, col_reg}==10'b1010111001)) color_data = 12'b111011010011;
		if(({row_reg, col_reg}==10'b1010111010)) color_data = 12'b001000010000;

		if(({row_reg, col_reg}>=10'b1010111011) && ({row_reg, col_reg}<10'b1011000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b1011000011)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==10'b1011000100)) color_data = 12'b110111000011;
		if(({row_reg, col_reg}>=10'b1011000101) && ({row_reg, col_reg}<10'b1011001001)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}>=10'b1011001001) && ({row_reg, col_reg}<10'b1011001011)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}==10'b1011001011)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1011001100)) color_data = 12'b111111110100;
		if(({row_reg, col_reg}>=10'b1011001101) && ({row_reg, col_reg}<10'b1011001111)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1011001111)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}>=10'b1011010000) && ({row_reg, col_reg}<10'b1011011001)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1011011001)) color_data = 12'b110111000011;
		if(({row_reg, col_reg}==10'b1011011010)) color_data = 12'b000100010000;

		if(({row_reg, col_reg}>=10'b1011011011) && ({row_reg, col_reg}<10'b1011100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b1011100011)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==10'b1011100100)) color_data = 12'b110010110010;
		if(({row_reg, col_reg}==10'b1011100101)) color_data = 12'b111011010010;
		if(({row_reg, col_reg}==10'b1011100110)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}>=10'b1011100111) && ({row_reg, col_reg}<10'b1011101001)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1011101001)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}>=10'b1011101010) && ({row_reg, col_reg}<10'b1011111000)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1011111000)) color_data = 12'b111011010011;
		if(({row_reg, col_reg}==10'b1011111001)) color_data = 12'b110010110011;
		if(({row_reg, col_reg}==10'b1011111010)) color_data = 12'b000100010000;

		if(({row_reg, col_reg}>=10'b1011111011) && ({row_reg, col_reg}<10'b1100000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b1100000100)) color_data = 12'b000100010000;
		if(({row_reg, col_reg}==10'b1100000101)) color_data = 12'b001100100001;
		if(({row_reg, col_reg}==10'b1100000110)) color_data = 12'b111011010011;
		if(({row_reg, col_reg}==10'b1100000111)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1100001000)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b1100001001)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}==10'b1100001010)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b1100001011)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1100001100)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}==10'b1100001101)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}>=10'b1100001110) && ({row_reg, col_reg}<10'b1100010011)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1100010011)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b1100010100)) color_data = 12'b111111110010;
		if(({row_reg, col_reg}==10'b1100010101)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}==10'b1100010110)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1100010111)) color_data = 12'b111011010011;
		if(({row_reg, col_reg}==10'b1100011000)) color_data = 12'b001100110001;
		if(({row_reg, col_reg}==10'b1100011001)) color_data = 12'b000100010000;

		if(({row_reg, col_reg}>=10'b1100011010) && ({row_reg, col_reg}<10'b1100100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b1100100101)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==10'b1100100110)) color_data = 12'b101110110010;
		if(({row_reg, col_reg}==10'b1100100111)) color_data = 12'b110111010011;
		if(({row_reg, col_reg}==10'b1100101000)) color_data = 12'b110111010010;
		if(({row_reg, col_reg}==10'b1100101001)) color_data = 12'b111011010011;
		if(({row_reg, col_reg}>=10'b1100101010) && ({row_reg, col_reg}<10'b1100101100)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1100101100)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}>=10'b1100101101) && ({row_reg, col_reg}<10'b1100110000)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1100110000)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}>=10'b1100110001) && ({row_reg, col_reg}<10'b1100110011)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b1100110011)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1100110100)) color_data = 12'b111011000011;
		if(({row_reg, col_reg}==10'b1100110101)) color_data = 12'b110111010011;
		if(({row_reg, col_reg}==10'b1100110110)) color_data = 12'b110111000011;
		if(({row_reg, col_reg}==10'b1100110111)) color_data = 12'b110010110010;
		if(({row_reg, col_reg}==10'b1100111000)) color_data = 12'b000100010000;

		if(({row_reg, col_reg}>=10'b1100111001) && ({row_reg, col_reg}<10'b1101000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b1101000110)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==10'b1101000111)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==10'b1101001000)) color_data = 12'b000100010000;
		if(({row_reg, col_reg}==10'b1101001001)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==10'b1101001010)) color_data = 12'b110111010011;
		if(({row_reg, col_reg}==10'b1101001011)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}==10'b1101001100)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b1101001101)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}==10'b1101001110)) color_data = 12'b111111100100;
		if(({row_reg, col_reg}==10'b1101001111)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}>=10'b1101010000) && ({row_reg, col_reg}<10'b1101010010)) color_data = 12'b111111100011;
		if(({row_reg, col_reg}==10'b1101010010)) color_data = 12'b111111110011;
		if(({row_reg, col_reg}==10'b1101010011)) color_data = 12'b110111010010;
		if(({row_reg, col_reg}==10'b1101010100)) color_data = 12'b001100110001;
		if(({row_reg, col_reg}>=10'b1101010101) && ({row_reg, col_reg}<10'b1101010111)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==10'b1101010111)) color_data = 12'b000100010000;

		if(({row_reg, col_reg}>=10'b1101011000) && ({row_reg, col_reg}<10'b1101101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b1101101001)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==10'b1101101010)) color_data = 12'b101110110010;
		if(({row_reg, col_reg}==10'b1101101011)) color_data = 12'b111011010010;
		if(({row_reg, col_reg}==10'b1101101100)) color_data = 12'b110111000011;
		if(({row_reg, col_reg}==10'b1101101101)) color_data = 12'b111011010011;
		if(({row_reg, col_reg}==10'b1101101110)) color_data = 12'b110111000011;
		if(({row_reg, col_reg}==10'b1101101111)) color_data = 12'b110111010010;
		if(({row_reg, col_reg}>=10'b1101110000) && ({row_reg, col_reg}<10'b1101110010)) color_data = 12'b111011000011;
		if(({row_reg, col_reg}==10'b1101110010)) color_data = 12'b111011010011;
		if(({row_reg, col_reg}==10'b1101110011)) color_data = 12'b110010110001;
		if(({row_reg, col_reg}==10'b1101110100)) color_data = 12'b000100010000;

		if(({row_reg, col_reg}>=10'b1101110101) && ({row_reg, col_reg}<10'b1110001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==10'b1110001010)) color_data = 12'b000100010000;
		if(({row_reg, col_reg}==10'b1110001011)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==10'b1110001100)) color_data = 12'b001000100001;
		if(({row_reg, col_reg}==10'b1110001101)) color_data = 12'b001000100000;
		if(({row_reg, col_reg}==10'b1110001110)) color_data = 12'b001000010000;
		if(({row_reg, col_reg}==10'b1110001111)) color_data = 12'b001000010001;
		if(({row_reg, col_reg}>=10'b1110010000) && ({row_reg, col_reg}<10'b1110010010)) color_data = 12'b000100010000;
		if(({row_reg, col_reg}==10'b1110010010)) color_data = 12'b000100100000;
		if(({row_reg, col_reg}==10'b1110010011)) color_data = 12'b000100010000;


		if(({row_reg, col_reg}>=10'b1110010100) && ({row_reg, col_reg}<=10'b1110111101)) color_data = 12'b000000000000;
	end
endmodule