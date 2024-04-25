module maze_with_color_rom
	(
		input wire clk,
		input wire [8:0] row,
		input wire [7:0] col,
		output reg [11:0] color_data
	);

	(* rom_style = "block" *)

	//signal declaration
	reg [8:0] row_reg;
	reg [7:0] col_reg;

	always @(posedge clk)
		begin
		row_reg <= row;
		col_reg <= col;
		end

	always @(*) begin








		if(({row_reg, col_reg}>=17'b00000000000000000) && ({row_reg, col_reg}<17'b00000100000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00000100000001000) && ({row_reg, col_reg}<17'b00000100001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00000100001110000) && ({row_reg, col_reg}<17'b00000100010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00000100010000000) && ({row_reg, col_reg}<17'b00000100011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00000100011101000) && ({row_reg, col_reg}<17'b00000100100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00000100100001000) && ({row_reg, col_reg}<17'b00000100101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00000100101110000) && ({row_reg, col_reg}<17'b00000100110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00000100110000000) && ({row_reg, col_reg}<17'b00000100111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00000100111101000) && ({row_reg, col_reg}<17'b00000101000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00000101000001000) && ({row_reg, col_reg}<17'b00000101001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00000101001110000) && ({row_reg, col_reg}<17'b00000101010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00000101010000000) && ({row_reg, col_reg}<17'b00000101011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00000101011101000) && ({row_reg, col_reg}<17'b00000101100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00000101100001000) && ({row_reg, col_reg}<17'b00000101101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00000101101110000) && ({row_reg, col_reg}<17'b00000101110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00000101110000000) && ({row_reg, col_reg}<17'b00000101111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00000101111101000) && ({row_reg, col_reg}<17'b00000110000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00000110000001000) && ({row_reg, col_reg}<17'b00000110001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00000110001110000) && ({row_reg, col_reg}<17'b00000110010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00000110010000000) && ({row_reg, col_reg}<17'b00000110011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00000110011101000) && ({row_reg, col_reg}<17'b00000110100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00000110100001000) && ({row_reg, col_reg}<17'b00000110101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00000110101110000) && ({row_reg, col_reg}<17'b00000110110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00000110110000000) && ({row_reg, col_reg}<17'b00000110111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00000110111101000) && ({row_reg, col_reg}<17'b00000111000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00000111000001000) && ({row_reg, col_reg}<17'b00000111001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00000111001110000) && ({row_reg, col_reg}<17'b00000111010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00000111010000000) && ({row_reg, col_reg}<17'b00000111011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00000111011101000) && ({row_reg, col_reg}<17'b00000111100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00000111100001000) && ({row_reg, col_reg}<17'b00000111101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00000111101110000) && ({row_reg, col_reg}<17'b00000111110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00000111110000000) && ({row_reg, col_reg}<17'b00000111111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00000111111101000) && ({row_reg, col_reg}<17'b00001000000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001000000001000) && ({row_reg, col_reg}<17'b00001000000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001000000010000) && ({row_reg, col_reg}<17'b00001000000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001000000110000) && ({row_reg, col_reg}<17'b00001000001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001000001000000) && ({row_reg, col_reg}<17'b00001000001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001000001101000) && ({row_reg, col_reg}<17'b00001000001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001000001110000) && ({row_reg, col_reg}<17'b00001000010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001000010000000) && ({row_reg, col_reg}<17'b00001000010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001000010001000) && ({row_reg, col_reg}<17'b00001000010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001000010110000) && ({row_reg, col_reg}<17'b00001000011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001000011000000) && ({row_reg, col_reg}<17'b00001000011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001000011100000) && ({row_reg, col_reg}<17'b00001000011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00001000011101000) && ({row_reg, col_reg}<17'b00001000100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001000100001000) && ({row_reg, col_reg}<17'b00001000100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001000100010000) && ({row_reg, col_reg}<17'b00001000100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001000100110000) && ({row_reg, col_reg}<17'b00001000101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001000101000000) && ({row_reg, col_reg}<17'b00001000101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001000101101000) && ({row_reg, col_reg}<17'b00001000101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001000101110000) && ({row_reg, col_reg}<17'b00001000110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001000110000000) && ({row_reg, col_reg}<17'b00001000110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001000110001000) && ({row_reg, col_reg}<17'b00001000110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001000110110000) && ({row_reg, col_reg}<17'b00001000111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001000111000000) && ({row_reg, col_reg}<17'b00001000111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001000111100000) && ({row_reg, col_reg}<17'b00001000111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00001000111101000) && ({row_reg, col_reg}<17'b00001001000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001001000001000) && ({row_reg, col_reg}<17'b00001001000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001001000010000) && ({row_reg, col_reg}<17'b00001001000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001001000110000) && ({row_reg, col_reg}<17'b00001001001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001001001000000) && ({row_reg, col_reg}<17'b00001001001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001001001101000) && ({row_reg, col_reg}<17'b00001001001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001001001110000) && ({row_reg, col_reg}<17'b00001001010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001001010000000) && ({row_reg, col_reg}<17'b00001001010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001001010001000) && ({row_reg, col_reg}<17'b00001001010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001001010110000) && ({row_reg, col_reg}<17'b00001001011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001001011000000) && ({row_reg, col_reg}<17'b00001001011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001001011100000) && ({row_reg, col_reg}<17'b00001001011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00001001011101000) && ({row_reg, col_reg}<17'b00001001100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001001100001000) && ({row_reg, col_reg}<17'b00001001100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001001100010000) && ({row_reg, col_reg}<17'b00001001100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001001100110000) && ({row_reg, col_reg}<17'b00001001101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001001101000000) && ({row_reg, col_reg}<17'b00001001101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001001101101000) && ({row_reg, col_reg}<17'b00001001101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001001101110000) && ({row_reg, col_reg}<17'b00001001110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001001110000000) && ({row_reg, col_reg}<17'b00001001110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001001110001000) && ({row_reg, col_reg}<17'b00001001110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001001110110000) && ({row_reg, col_reg}<17'b00001001111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001001111000000) && ({row_reg, col_reg}<17'b00001001111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001001111100000) && ({row_reg, col_reg}<17'b00001001111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00001001111101000) && ({row_reg, col_reg}<17'b00001010000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001010000001000) && ({row_reg, col_reg}<17'b00001010000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001010000010000) && ({row_reg, col_reg}<17'b00001010000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001010000110000) && ({row_reg, col_reg}<17'b00001010001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001010001000000) && ({row_reg, col_reg}<17'b00001010001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001010001101000) && ({row_reg, col_reg}<17'b00001010001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001010001110000) && ({row_reg, col_reg}<17'b00001010010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001010010000000) && ({row_reg, col_reg}<17'b00001010010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001010010001000) && ({row_reg, col_reg}<17'b00001010010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001010010110000) && ({row_reg, col_reg}<17'b00001010011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001010011000000) && ({row_reg, col_reg}<17'b00001010011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001010011100000) && ({row_reg, col_reg}<17'b00001010011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00001010011101000) && ({row_reg, col_reg}<17'b00001010100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001010100001000) && ({row_reg, col_reg}<17'b00001010100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001010100010000) && ({row_reg, col_reg}<17'b00001010100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001010100110000) && ({row_reg, col_reg}<17'b00001010101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001010101000000) && ({row_reg, col_reg}<17'b00001010101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001010101101000) && ({row_reg, col_reg}<17'b00001010101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001010101110000) && ({row_reg, col_reg}<17'b00001010110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001010110000000) && ({row_reg, col_reg}<17'b00001010110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001010110001000) && ({row_reg, col_reg}<17'b00001010110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001010110110000) && ({row_reg, col_reg}<17'b00001010111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001010111000000) && ({row_reg, col_reg}<17'b00001010111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001010111100000) && ({row_reg, col_reg}<17'b00001010111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00001010111101000) && ({row_reg, col_reg}<17'b00001011000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001011000001000) && ({row_reg, col_reg}<17'b00001011000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001011000010000) && ({row_reg, col_reg}<17'b00001011000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001011000110000) && ({row_reg, col_reg}<17'b00001011001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001011001000000) && ({row_reg, col_reg}<17'b00001011001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001011001101000) && ({row_reg, col_reg}<17'b00001011001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001011001110000) && ({row_reg, col_reg}<17'b00001011010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001011010000000) && ({row_reg, col_reg}<17'b00001011010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001011010001000) && ({row_reg, col_reg}<17'b00001011010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001011010110000) && ({row_reg, col_reg}<17'b00001011011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001011011000000) && ({row_reg, col_reg}<17'b00001011011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001011011100000) && ({row_reg, col_reg}<17'b00001011011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00001011011101000) && ({row_reg, col_reg}<17'b00001011100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001011100001000) && ({row_reg, col_reg}<17'b00001011100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001011100010000) && ({row_reg, col_reg}<17'b00001011100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001011100110000) && ({row_reg, col_reg}<17'b00001011101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001011101000000) && ({row_reg, col_reg}<17'b00001011101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001011101101000) && ({row_reg, col_reg}<17'b00001011101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001011101110000) && ({row_reg, col_reg}<17'b00001011110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001011110000000) && ({row_reg, col_reg}<17'b00001011110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001011110001000) && ({row_reg, col_reg}<17'b00001011110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001011110110000) && ({row_reg, col_reg}<17'b00001011111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001011111000000) && ({row_reg, col_reg}<17'b00001011111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001011111100000) && ({row_reg, col_reg}<17'b00001011111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00001011111101000) && ({row_reg, col_reg}<17'b00001100000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001100000001000) && ({row_reg, col_reg}<17'b00001100000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001100000010000) && ({row_reg, col_reg}<17'b00001100000011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001100000011000) && ({row_reg, col_reg}<17'b00001100000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001100000101000) && ({row_reg, col_reg}<17'b00001100000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001100000110000) && ({row_reg, col_reg}<17'b00001100001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001100001000000) && ({row_reg, col_reg}<17'b00001100001001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001100001001000) && ({row_reg, col_reg}<17'b00001100001100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001100001100000) && ({row_reg, col_reg}<17'b00001100001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001100001101000) && ({row_reg, col_reg}<17'b00001100001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001100001110000) && ({row_reg, col_reg}<17'b00001100010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001100010000000) && ({row_reg, col_reg}<17'b00001100010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001100010001000) && ({row_reg, col_reg}<17'b00001100010010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001100010010000) && ({row_reg, col_reg}<17'b00001100010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001100010101000) && ({row_reg, col_reg}<17'b00001100010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001100010110000) && ({row_reg, col_reg}<17'b00001100011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001100011000000) && ({row_reg, col_reg}<17'b00001100011001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001100011001000) && ({row_reg, col_reg}<17'b00001100011011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001100011011000) && ({row_reg, col_reg}<17'b00001100011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001100011100000) && ({row_reg, col_reg}<17'b00001100011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00001100011101000) && ({row_reg, col_reg}<17'b00001100100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001100100001000) && ({row_reg, col_reg}<17'b00001100100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001100100010000) && ({row_reg, col_reg}<17'b00001100100011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001100100011000) && ({row_reg, col_reg}<17'b00001100100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001100100101000) && ({row_reg, col_reg}<17'b00001100100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001100100110000) && ({row_reg, col_reg}<17'b00001100101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001100101000000) && ({row_reg, col_reg}<17'b00001100101001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001100101001000) && ({row_reg, col_reg}<17'b00001100101100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001100101100000) && ({row_reg, col_reg}<17'b00001100101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001100101101000) && ({row_reg, col_reg}<17'b00001100101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001100101110000) && ({row_reg, col_reg}<17'b00001100110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001100110000000) && ({row_reg, col_reg}<17'b00001100110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001100110001000) && ({row_reg, col_reg}<17'b00001100110010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001100110010000) && ({row_reg, col_reg}<17'b00001100110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001100110101000) && ({row_reg, col_reg}<17'b00001100110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001100110110000) && ({row_reg, col_reg}<17'b00001100111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001100111000000) && ({row_reg, col_reg}<17'b00001100111001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001100111001000) && ({row_reg, col_reg}<17'b00001100111011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001100111011000) && ({row_reg, col_reg}<17'b00001100111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001100111100000) && ({row_reg, col_reg}<17'b00001100111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00001100111101000) && ({row_reg, col_reg}<17'b00001101000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001101000001000) && ({row_reg, col_reg}<17'b00001101000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001101000010000) && ({row_reg, col_reg}<17'b00001101000011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001101000011000) && ({row_reg, col_reg}<17'b00001101000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001101000101000) && ({row_reg, col_reg}<17'b00001101000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001101000110000) && ({row_reg, col_reg}<17'b00001101001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001101001000000) && ({row_reg, col_reg}<17'b00001101001001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001101001001000) && ({row_reg, col_reg}<17'b00001101001100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001101001100000) && ({row_reg, col_reg}<17'b00001101001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001101001101000) && ({row_reg, col_reg}<17'b00001101001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001101001110000) && ({row_reg, col_reg}<17'b00001101010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001101010000000) && ({row_reg, col_reg}<17'b00001101010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001101010001000) && ({row_reg, col_reg}<17'b00001101010010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001101010010000) && ({row_reg, col_reg}<17'b00001101010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001101010101000) && ({row_reg, col_reg}<17'b00001101010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001101010110000) && ({row_reg, col_reg}<17'b00001101011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001101011000000) && ({row_reg, col_reg}<17'b00001101011001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001101011001000) && ({row_reg, col_reg}<17'b00001101011011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001101011011000) && ({row_reg, col_reg}<17'b00001101011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001101011100000) && ({row_reg, col_reg}<17'b00001101011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00001101011101000) && ({row_reg, col_reg}<17'b00001101100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001101100001000) && ({row_reg, col_reg}<17'b00001101100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001101100010000) && ({row_reg, col_reg}<17'b00001101100011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001101100011000) && ({row_reg, col_reg}<17'b00001101100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001101100101000) && ({row_reg, col_reg}<17'b00001101100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001101100110000) && ({row_reg, col_reg}<17'b00001101101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001101101000000) && ({row_reg, col_reg}<17'b00001101101001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001101101001000) && ({row_reg, col_reg}<17'b00001101101100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001101101100000) && ({row_reg, col_reg}<17'b00001101101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001101101101000) && ({row_reg, col_reg}<17'b00001101101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001101101110000) && ({row_reg, col_reg}<17'b00001101110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001101110000000) && ({row_reg, col_reg}<17'b00001101110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001101110001000) && ({row_reg, col_reg}<17'b00001101110010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001101110010000) && ({row_reg, col_reg}<17'b00001101110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001101110101000) && ({row_reg, col_reg}<17'b00001101110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001101110110000) && ({row_reg, col_reg}<17'b00001101111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001101111000000) && ({row_reg, col_reg}<17'b00001101111001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001101111001000) && ({row_reg, col_reg}<17'b00001101111011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001101111011000) && ({row_reg, col_reg}<17'b00001101111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001101111100000) && ({row_reg, col_reg}<17'b00001101111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00001101111101000) && ({row_reg, col_reg}<17'b00001110000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001110000001000) && ({row_reg, col_reg}<17'b00001110000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001110000010000) && ({row_reg, col_reg}<17'b00001110000011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001110000011000) && ({row_reg, col_reg}<17'b00001110000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001110000101000) && ({row_reg, col_reg}<17'b00001110000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001110000110000) && ({row_reg, col_reg}<17'b00001110001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001110001000000) && ({row_reg, col_reg}<17'b00001110001001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001110001001000) && ({row_reg, col_reg}<17'b00001110001100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001110001100000) && ({row_reg, col_reg}<17'b00001110001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001110001101000) && ({row_reg, col_reg}<17'b00001110001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001110001110000) && ({row_reg, col_reg}<17'b00001110010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001110010000000) && ({row_reg, col_reg}<17'b00001110010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001110010001000) && ({row_reg, col_reg}<17'b00001110010010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001110010010000) && ({row_reg, col_reg}<17'b00001110010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001110010101000) && ({row_reg, col_reg}<17'b00001110010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001110010110000) && ({row_reg, col_reg}<17'b00001110011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001110011000000) && ({row_reg, col_reg}<17'b00001110011001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001110011001000) && ({row_reg, col_reg}<17'b00001110011011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001110011011000) && ({row_reg, col_reg}<17'b00001110011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001110011100000) && ({row_reg, col_reg}<17'b00001110011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00001110011101000) && ({row_reg, col_reg}<17'b00001110100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001110100001000) && ({row_reg, col_reg}<17'b00001110100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001110100010000) && ({row_reg, col_reg}<17'b00001110100011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001110100011000) && ({row_reg, col_reg}<17'b00001110100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001110100101000) && ({row_reg, col_reg}<17'b00001110100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001110100110000) && ({row_reg, col_reg}<17'b00001110101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001110101000000) && ({row_reg, col_reg}<17'b00001110101001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001110101001000) && ({row_reg, col_reg}<17'b00001110101100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001110101100000) && ({row_reg, col_reg}<17'b00001110101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001110101101000) && ({row_reg, col_reg}<17'b00001110101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001110101110000) && ({row_reg, col_reg}<17'b00001110110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001110110000000) && ({row_reg, col_reg}<17'b00001110110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001110110001000) && ({row_reg, col_reg}<17'b00001110110010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001110110010000) && ({row_reg, col_reg}<17'b00001110110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001110110101000) && ({row_reg, col_reg}<17'b00001110110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001110110110000) && ({row_reg, col_reg}<17'b00001110111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001110111000000) && ({row_reg, col_reg}<17'b00001110111001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001110111001000) && ({row_reg, col_reg}<17'b00001110111011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001110111011000) && ({row_reg, col_reg}<17'b00001110111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001110111100000) && ({row_reg, col_reg}<17'b00001110111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00001110111101000) && ({row_reg, col_reg}<17'b00001111000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001111000001000) && ({row_reg, col_reg}<17'b00001111000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001111000010000) && ({row_reg, col_reg}<17'b00001111000011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001111000011000) && ({row_reg, col_reg}<17'b00001111000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001111000101000) && ({row_reg, col_reg}<17'b00001111000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001111000110000) && ({row_reg, col_reg}<17'b00001111001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001111001000000) && ({row_reg, col_reg}<17'b00001111001001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001111001001000) && ({row_reg, col_reg}<17'b00001111001100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001111001100000) && ({row_reg, col_reg}<17'b00001111001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001111001101000) && ({row_reg, col_reg}<17'b00001111001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001111001110000) && ({row_reg, col_reg}<17'b00001111010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001111010000000) && ({row_reg, col_reg}<17'b00001111010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001111010001000) && ({row_reg, col_reg}<17'b00001111010010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001111010010000) && ({row_reg, col_reg}<17'b00001111010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001111010101000) && ({row_reg, col_reg}<17'b00001111010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001111010110000) && ({row_reg, col_reg}<17'b00001111011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001111011000000) && ({row_reg, col_reg}<17'b00001111011001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001111011001000) && ({row_reg, col_reg}<17'b00001111011011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001111011011000) && ({row_reg, col_reg}<17'b00001111011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001111011100000) && ({row_reg, col_reg}<17'b00001111011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00001111011101000) && ({row_reg, col_reg}<17'b00001111100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001111100001000) && ({row_reg, col_reg}<17'b00001111100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001111100010000) && ({row_reg, col_reg}<17'b00001111100011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001111100011000) && ({row_reg, col_reg}<17'b00001111100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001111100101000) && ({row_reg, col_reg}<17'b00001111100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001111100110000) && ({row_reg, col_reg}<17'b00001111101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001111101000000) && ({row_reg, col_reg}<17'b00001111101001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001111101001000) && ({row_reg, col_reg}<17'b00001111101100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001111101100000) && ({row_reg, col_reg}<17'b00001111101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001111101101000) && ({row_reg, col_reg}<17'b00001111101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001111101110000) && ({row_reg, col_reg}<17'b00001111110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001111110000000) && ({row_reg, col_reg}<17'b00001111110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001111110001000) && ({row_reg, col_reg}<17'b00001111110010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001111110010000) && ({row_reg, col_reg}<17'b00001111110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001111110101000) && ({row_reg, col_reg}<17'b00001111110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001111110110000) && ({row_reg, col_reg}<17'b00001111111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001111111000000) && ({row_reg, col_reg}<17'b00001111111001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001111111001000) && ({row_reg, col_reg}<17'b00001111111011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00001111111011000) && ({row_reg, col_reg}<17'b00001111111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00001111111100000) && ({row_reg, col_reg}<17'b00001111111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00001111111101000) && ({row_reg, col_reg}<17'b00010000000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010000000001000) && ({row_reg, col_reg}<17'b00010000000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010000000010000) && ({row_reg, col_reg}<17'b00010000000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010000000110000) && ({row_reg, col_reg}<17'b00010000001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010000001000000) && ({row_reg, col_reg}<17'b00010000001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010000001101000) && ({row_reg, col_reg}<17'b00010000001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010000001110000) && ({row_reg, col_reg}<17'b00010000010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010000010000000) && ({row_reg, col_reg}<17'b00010000010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010000010001000) && ({row_reg, col_reg}<17'b00010000010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010000010110000) && ({row_reg, col_reg}<17'b00010000011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010000011000000) && ({row_reg, col_reg}<17'b00010000011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010000011100000) && ({row_reg, col_reg}<17'b00010000011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00010000011101000) && ({row_reg, col_reg}<17'b00010000100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010000100001000) && ({row_reg, col_reg}<17'b00010000100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010000100010000) && ({row_reg, col_reg}<17'b00010000100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010000100110000) && ({row_reg, col_reg}<17'b00010000101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010000101000000) && ({row_reg, col_reg}<17'b00010000101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010000101101000) && ({row_reg, col_reg}<17'b00010000101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010000101110000) && ({row_reg, col_reg}<17'b00010000110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010000110000000) && ({row_reg, col_reg}<17'b00010000110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010000110001000) && ({row_reg, col_reg}<17'b00010000110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010000110110000) && ({row_reg, col_reg}<17'b00010000111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010000111000000) && ({row_reg, col_reg}<17'b00010000111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010000111100000) && ({row_reg, col_reg}<17'b00010000111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00010000111101000) && ({row_reg, col_reg}<17'b00010001000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010001000001000) && ({row_reg, col_reg}<17'b00010001000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010001000010000) && ({row_reg, col_reg}<17'b00010001000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010001000110000) && ({row_reg, col_reg}<17'b00010001001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010001001000000) && ({row_reg, col_reg}<17'b00010001001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010001001101000) && ({row_reg, col_reg}<17'b00010001001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010001001110000) && ({row_reg, col_reg}<17'b00010001010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010001010000000) && ({row_reg, col_reg}<17'b00010001010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010001010001000) && ({row_reg, col_reg}<17'b00010001010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010001010110000) && ({row_reg, col_reg}<17'b00010001011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010001011000000) && ({row_reg, col_reg}<17'b00010001011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010001011100000) && ({row_reg, col_reg}<17'b00010001011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00010001011101000) && ({row_reg, col_reg}<17'b00010001100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010001100001000) && ({row_reg, col_reg}<17'b00010001100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010001100010000) && ({row_reg, col_reg}<17'b00010001100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010001100110000) && ({row_reg, col_reg}<17'b00010001101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010001101000000) && ({row_reg, col_reg}<17'b00010001101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010001101101000) && ({row_reg, col_reg}<17'b00010001101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010001101110000) && ({row_reg, col_reg}<17'b00010001110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010001110000000) && ({row_reg, col_reg}<17'b00010001110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010001110001000) && ({row_reg, col_reg}<17'b00010001110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010001110110000) && ({row_reg, col_reg}<17'b00010001111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010001111000000) && ({row_reg, col_reg}<17'b00010001111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010001111100000) && ({row_reg, col_reg}<17'b00010001111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00010001111101000) && ({row_reg, col_reg}<17'b00010010000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010010000001000) && ({row_reg, col_reg}<17'b00010010000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010010000010000) && ({row_reg, col_reg}<17'b00010010000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010010000110000) && ({row_reg, col_reg}<17'b00010010001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010010001000000) && ({row_reg, col_reg}<17'b00010010001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010010001101000) && ({row_reg, col_reg}<17'b00010010001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010010001110000) && ({row_reg, col_reg}<17'b00010010010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010010010000000) && ({row_reg, col_reg}<17'b00010010010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010010010001000) && ({row_reg, col_reg}<17'b00010010010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010010010110000) && ({row_reg, col_reg}<17'b00010010011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010010011000000) && ({row_reg, col_reg}<17'b00010010011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010010011100000) && ({row_reg, col_reg}<17'b00010010011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00010010011101000) && ({row_reg, col_reg}<17'b00010010100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010010100001000) && ({row_reg, col_reg}<17'b00010010100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010010100010000) && ({row_reg, col_reg}<17'b00010010100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010010100110000) && ({row_reg, col_reg}<17'b00010010101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010010101000000) && ({row_reg, col_reg}<17'b00010010101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010010101101000) && ({row_reg, col_reg}<17'b00010010101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010010101110000) && ({row_reg, col_reg}<17'b00010010110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010010110000000) && ({row_reg, col_reg}<17'b00010010110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010010110001000) && ({row_reg, col_reg}<17'b00010010110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010010110110000) && ({row_reg, col_reg}<17'b00010010111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010010111000000) && ({row_reg, col_reg}<17'b00010010111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010010111100000) && ({row_reg, col_reg}<17'b00010010111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00010010111101000) && ({row_reg, col_reg}<17'b00010011000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010011000001000) && ({row_reg, col_reg}<17'b00010011000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010011000010000) && ({row_reg, col_reg}<17'b00010011000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010011000110000) && ({row_reg, col_reg}<17'b00010011001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010011001000000) && ({row_reg, col_reg}<17'b00010011001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010011001101000) && ({row_reg, col_reg}<17'b00010011001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010011001110000) && ({row_reg, col_reg}<17'b00010011010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010011010000000) && ({row_reg, col_reg}<17'b00010011010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010011010001000) && ({row_reg, col_reg}<17'b00010011010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010011010110000) && ({row_reg, col_reg}<17'b00010011011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010011011000000) && ({row_reg, col_reg}<17'b00010011011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010011011100000) && ({row_reg, col_reg}<17'b00010011011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00010011011101000) && ({row_reg, col_reg}<17'b00010011100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010011100001000) && ({row_reg, col_reg}<17'b00010011100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010011100010000) && ({row_reg, col_reg}<17'b00010011100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010011100110000) && ({row_reg, col_reg}<17'b00010011101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010011101000000) && ({row_reg, col_reg}<17'b00010011101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010011101101000) && ({row_reg, col_reg}<17'b00010011101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010011101110000) && ({row_reg, col_reg}<17'b00010011110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010011110000000) && ({row_reg, col_reg}<17'b00010011110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010011110001000) && ({row_reg, col_reg}<17'b00010011110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010011110110000) && ({row_reg, col_reg}<17'b00010011111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00010011111000000) && ({row_reg, col_reg}<17'b00010011111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010011111100000) && ({row_reg, col_reg}<17'b00010011111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00010011111101000) && ({row_reg, col_reg}<17'b00010100000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010100000001000) && ({row_reg, col_reg}<17'b00010100011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00010100011101000) && ({row_reg, col_reg}<17'b00010100100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010100100001000) && ({row_reg, col_reg}<17'b00010100111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00010100111101000) && ({row_reg, col_reg}<17'b00010101000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010101000001000) && ({row_reg, col_reg}<17'b00010101011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00010101011101000) && ({row_reg, col_reg}<17'b00010101100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010101100001000) && ({row_reg, col_reg}<17'b00010101111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00010101111101000) && ({row_reg, col_reg}<17'b00010110000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010110000001000) && ({row_reg, col_reg}<17'b00010110011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00010110011101000) && ({row_reg, col_reg}<17'b00010110100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010110100001000) && ({row_reg, col_reg}<17'b00010110111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00010110111101000) && ({row_reg, col_reg}<17'b00010111000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010111000001000) && ({row_reg, col_reg}<17'b00010111011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00010111011101000) && ({row_reg, col_reg}<17'b00010111100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00010111100001000) && ({row_reg, col_reg}<17'b00010111111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00010111111101000) && ({row_reg, col_reg}<17'b00011000000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011000000001000) && ({row_reg, col_reg}<17'b00011000011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00011000011101000) && ({row_reg, col_reg}<17'b00011000100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011000100001000) && ({row_reg, col_reg}<17'b00011000111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00011000111101000) && ({row_reg, col_reg}<17'b00011001000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011001000001000) && ({row_reg, col_reg}<17'b00011001011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00011001011101000) && ({row_reg, col_reg}<17'b00011001100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011001100001000) && ({row_reg, col_reg}<17'b00011001111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00011001111101000) && ({row_reg, col_reg}<17'b00011010000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011010000001000) && ({row_reg, col_reg}<17'b00011010011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00011010011101000) && ({row_reg, col_reg}<17'b00011010100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011010100001000) && ({row_reg, col_reg}<17'b00011010111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00011010111101000) && ({row_reg, col_reg}<17'b00011011000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011011000001000) && ({row_reg, col_reg}<17'b00011011011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00011011011101000) && ({row_reg, col_reg}<17'b00011011100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011011100001000) && ({row_reg, col_reg}<17'b00011011111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00011011111101000) && ({row_reg, col_reg}<17'b00011100000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011100000001000) && ({row_reg, col_reg}<17'b00011100000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011100000010000) && ({row_reg, col_reg}<17'b00011100000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011100000110000) && ({row_reg, col_reg}<17'b00011100001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011100001000000) && ({row_reg, col_reg}<17'b00011100001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011100001010000) && ({row_reg, col_reg}<17'b00011100001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011100001011000) && ({row_reg, col_reg}<17'b00011100010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011100010011000) && ({row_reg, col_reg}<17'b00011100010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011100010101000) && ({row_reg, col_reg}<17'b00011100010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011100010110000) && ({row_reg, col_reg}<17'b00011100011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011100011000000) && ({row_reg, col_reg}<17'b00011100011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011100011100000) && ({row_reg, col_reg}<17'b00011100011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00011100011101000) && ({row_reg, col_reg}<17'b00011100100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011100100001000) && ({row_reg, col_reg}<17'b00011100100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011100100010000) && ({row_reg, col_reg}<17'b00011100100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011100100110000) && ({row_reg, col_reg}<17'b00011100101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011100101000000) && ({row_reg, col_reg}<17'b00011100101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011100101010000) && ({row_reg, col_reg}<17'b00011100101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011100101011000) && ({row_reg, col_reg}<17'b00011100110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011100110011000) && ({row_reg, col_reg}<17'b00011100110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011100110101000) && ({row_reg, col_reg}<17'b00011100110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011100110110000) && ({row_reg, col_reg}<17'b00011100111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011100111000000) && ({row_reg, col_reg}<17'b00011100111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011100111100000) && ({row_reg, col_reg}<17'b00011100111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00011100111101000) && ({row_reg, col_reg}<17'b00011101000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011101000001000) && ({row_reg, col_reg}<17'b00011101000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011101000010000) && ({row_reg, col_reg}<17'b00011101000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011101000110000) && ({row_reg, col_reg}<17'b00011101001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011101001000000) && ({row_reg, col_reg}<17'b00011101001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011101001010000) && ({row_reg, col_reg}<17'b00011101001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011101001011000) && ({row_reg, col_reg}<17'b00011101010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011101010011000) && ({row_reg, col_reg}<17'b00011101010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011101010101000) && ({row_reg, col_reg}<17'b00011101010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011101010110000) && ({row_reg, col_reg}<17'b00011101011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011101011000000) && ({row_reg, col_reg}<17'b00011101011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011101011100000) && ({row_reg, col_reg}<17'b00011101011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00011101011101000) && ({row_reg, col_reg}<17'b00011101100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011101100001000) && ({row_reg, col_reg}<17'b00011101100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011101100010000) && ({row_reg, col_reg}<17'b00011101100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011101100110000) && ({row_reg, col_reg}<17'b00011101101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011101101000000) && ({row_reg, col_reg}<17'b00011101101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011101101010000) && ({row_reg, col_reg}<17'b00011101101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011101101011000) && ({row_reg, col_reg}<17'b00011101110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011101110011000) && ({row_reg, col_reg}<17'b00011101110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011101110101000) && ({row_reg, col_reg}<17'b00011101110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011101110110000) && ({row_reg, col_reg}<17'b00011101111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011101111000000) && ({row_reg, col_reg}<17'b00011101111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011101111100000) && ({row_reg, col_reg}<17'b00011101111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00011101111101000) && ({row_reg, col_reg}<17'b00011110000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011110000001000) && ({row_reg, col_reg}<17'b00011110000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011110000010000) && ({row_reg, col_reg}<17'b00011110000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011110000110000) && ({row_reg, col_reg}<17'b00011110001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011110001000000) && ({row_reg, col_reg}<17'b00011110001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011110001010000) && ({row_reg, col_reg}<17'b00011110001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011110001011000) && ({row_reg, col_reg}<17'b00011110010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011110010011000) && ({row_reg, col_reg}<17'b00011110010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011110010101000) && ({row_reg, col_reg}<17'b00011110010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011110010110000) && ({row_reg, col_reg}<17'b00011110011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011110011000000) && ({row_reg, col_reg}<17'b00011110011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011110011100000) && ({row_reg, col_reg}<17'b00011110011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00011110011101000) && ({row_reg, col_reg}<17'b00011110100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011110100001000) && ({row_reg, col_reg}<17'b00011110100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011110100010000) && ({row_reg, col_reg}<17'b00011110100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011110100110000) && ({row_reg, col_reg}<17'b00011110101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011110101000000) && ({row_reg, col_reg}<17'b00011110101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011110101010000) && ({row_reg, col_reg}<17'b00011110101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011110101011000) && ({row_reg, col_reg}<17'b00011110110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011110110011000) && ({row_reg, col_reg}<17'b00011110110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011110110101000) && ({row_reg, col_reg}<17'b00011110110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011110110110000) && ({row_reg, col_reg}<17'b00011110111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011110111000000) && ({row_reg, col_reg}<17'b00011110111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011110111100000) && ({row_reg, col_reg}<17'b00011110111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00011110111101000) && ({row_reg, col_reg}<17'b00011111000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011111000001000) && ({row_reg, col_reg}<17'b00011111000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011111000010000) && ({row_reg, col_reg}<17'b00011111000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011111000110000) && ({row_reg, col_reg}<17'b00011111001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011111001000000) && ({row_reg, col_reg}<17'b00011111001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011111001010000) && ({row_reg, col_reg}<17'b00011111001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011111001011000) && ({row_reg, col_reg}<17'b00011111010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011111010011000) && ({row_reg, col_reg}<17'b00011111010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011111010101000) && ({row_reg, col_reg}<17'b00011111010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011111010110000) && ({row_reg, col_reg}<17'b00011111011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011111011000000) && ({row_reg, col_reg}<17'b00011111011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011111011100000) && ({row_reg, col_reg}<17'b00011111011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00011111011101000) && ({row_reg, col_reg}<17'b00011111100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011111100001000) && ({row_reg, col_reg}<17'b00011111100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011111100010000) && ({row_reg, col_reg}<17'b00011111100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011111100110000) && ({row_reg, col_reg}<17'b00011111101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011111101000000) && ({row_reg, col_reg}<17'b00011111101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011111101010000) && ({row_reg, col_reg}<17'b00011111101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011111101011000) && ({row_reg, col_reg}<17'b00011111110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011111110011000) && ({row_reg, col_reg}<17'b00011111110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011111110101000) && ({row_reg, col_reg}<17'b00011111110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011111110110000) && ({row_reg, col_reg}<17'b00011111111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00011111111000000) && ({row_reg, col_reg}<17'b00011111111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00011111111100000) && ({row_reg, col_reg}<17'b00011111111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00011111111101000) && ({row_reg, col_reg}<17'b00100000000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100000000001000) && ({row_reg, col_reg}<17'b00100000001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100000001000000) && ({row_reg, col_reg}<17'b00100000001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100000001010000) && ({row_reg, col_reg}<17'b00100000001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100000001110000) && ({row_reg, col_reg}<17'b00100000010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100000010000000) && ({row_reg, col_reg}<17'b00100000010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100000010101000) && ({row_reg, col_reg}<17'b00100000010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100000010110000) && ({row_reg, col_reg}<17'b00100000011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00100000011101000) && ({row_reg, col_reg}<17'b00100000100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100000100001000) && ({row_reg, col_reg}<17'b00100000101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100000101000000) && ({row_reg, col_reg}<17'b00100000101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100000101010000) && ({row_reg, col_reg}<17'b00100000101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100000101110000) && ({row_reg, col_reg}<17'b00100000110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100000110000000) && ({row_reg, col_reg}<17'b00100000110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100000110101000) && ({row_reg, col_reg}<17'b00100000110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100000110110000) && ({row_reg, col_reg}<17'b00100000111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00100000111101000) && ({row_reg, col_reg}<17'b00100001000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100001000001000) && ({row_reg, col_reg}<17'b00100001001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100001001000000) && ({row_reg, col_reg}<17'b00100001001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100001001010000) && ({row_reg, col_reg}<17'b00100001001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100001001110000) && ({row_reg, col_reg}<17'b00100001010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100001010000000) && ({row_reg, col_reg}<17'b00100001010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100001010101000) && ({row_reg, col_reg}<17'b00100001010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100001010110000) && ({row_reg, col_reg}<17'b00100001011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00100001011101000) && ({row_reg, col_reg}<17'b00100001100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100001100001000) && ({row_reg, col_reg}<17'b00100001101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100001101000000) && ({row_reg, col_reg}<17'b00100001101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100001101010000) && ({row_reg, col_reg}<17'b00100001101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100001101110000) && ({row_reg, col_reg}<17'b00100001110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100001110000000) && ({row_reg, col_reg}<17'b00100001110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100001110101000) && ({row_reg, col_reg}<17'b00100001110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100001110110000) && ({row_reg, col_reg}<17'b00100001111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00100001111101000) && ({row_reg, col_reg}<17'b00100010000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100010000001000) && ({row_reg, col_reg}<17'b00100010001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100010001000000) && ({row_reg, col_reg}<17'b00100010001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100010001010000) && ({row_reg, col_reg}<17'b00100010001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100010001110000) && ({row_reg, col_reg}<17'b00100010010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100010010000000) && ({row_reg, col_reg}<17'b00100010010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100010010101000) && ({row_reg, col_reg}<17'b00100010010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100010010110000) && ({row_reg, col_reg}<17'b00100010011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00100010011101000) && ({row_reg, col_reg}<17'b00100010100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100010100001000) && ({row_reg, col_reg}<17'b00100010101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100010101000000) && ({row_reg, col_reg}<17'b00100010101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100010101010000) && ({row_reg, col_reg}<17'b00100010101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100010101110000) && ({row_reg, col_reg}<17'b00100010110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100010110000000) && ({row_reg, col_reg}<17'b00100010110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100010110101000) && ({row_reg, col_reg}<17'b00100010110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100010110110000) && ({row_reg, col_reg}<17'b00100010111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00100010111101000) && ({row_reg, col_reg}<17'b00100011000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100011000001000) && ({row_reg, col_reg}<17'b00100011001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100011001000000) && ({row_reg, col_reg}<17'b00100011001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100011001010000) && ({row_reg, col_reg}<17'b00100011001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100011001110000) && ({row_reg, col_reg}<17'b00100011010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100011010000000) && ({row_reg, col_reg}<17'b00100011010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100011010101000) && ({row_reg, col_reg}<17'b00100011010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100011010110000) && ({row_reg, col_reg}<17'b00100011011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00100011011101000) && ({row_reg, col_reg}<17'b00100011100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100011100001000) && ({row_reg, col_reg}<17'b00100011101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100011101000000) && ({row_reg, col_reg}<17'b00100011101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100011101010000) && ({row_reg, col_reg}<17'b00100011101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100011101110000) && ({row_reg, col_reg}<17'b00100011110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100011110000000) && ({row_reg, col_reg}<17'b00100011110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100011110101000) && ({row_reg, col_reg}<17'b00100011110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100011110110000) && ({row_reg, col_reg}<17'b00100011111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00100011111101000) && ({row_reg, col_reg}<17'b00100100000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100100000001000) && ({row_reg, col_reg}<17'b00100100001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100100001000000) && ({row_reg, col_reg}<17'b00100100001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100100001010000) && ({row_reg, col_reg}<17'b00100100001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100100001110000) && ({row_reg, col_reg}<17'b00100100010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100100010000000) && ({row_reg, col_reg}<17'b00100100010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100100010101000) && ({row_reg, col_reg}<17'b00100100010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100100010110000) && ({row_reg, col_reg}<17'b00100100011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00100100011101000) && ({row_reg, col_reg}<17'b00100100100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100100100001000) && ({row_reg, col_reg}<17'b00100100101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100100101000000) && ({row_reg, col_reg}<17'b00100100101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100100101010000) && ({row_reg, col_reg}<17'b00100100101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100100101110000) && ({row_reg, col_reg}<17'b00100100110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100100110000000) && ({row_reg, col_reg}<17'b00100100110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100100110101000) && ({row_reg, col_reg}<17'b00100100110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100100110110000) && ({row_reg, col_reg}<17'b00100100111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00100100111101000) && ({row_reg, col_reg}<17'b00100101000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100101000001000) && ({row_reg, col_reg}<17'b00100101001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100101001000000) && ({row_reg, col_reg}<17'b00100101001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100101001010000) && ({row_reg, col_reg}<17'b00100101001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100101001110000) && ({row_reg, col_reg}<17'b00100101010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100101010000000) && ({row_reg, col_reg}<17'b00100101010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100101010101000) && ({row_reg, col_reg}<17'b00100101010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100101010110000) && ({row_reg, col_reg}<17'b00100101011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00100101011101000) && ({row_reg, col_reg}<17'b00100101100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100101100001000) && ({row_reg, col_reg}<17'b00100101101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100101101000000) && ({row_reg, col_reg}<17'b00100101101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100101101010000) && ({row_reg, col_reg}<17'b00100101101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100101101110000) && ({row_reg, col_reg}<17'b00100101110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100101110000000) && ({row_reg, col_reg}<17'b00100101110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100101110101000) && ({row_reg, col_reg}<17'b00100101110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100101110110000) && ({row_reg, col_reg}<17'b00100101111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00100101111101000) && ({row_reg, col_reg}<17'b00100110000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100110000001000) && ({row_reg, col_reg}<17'b00100110001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100110001000000) && ({row_reg, col_reg}<17'b00100110001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100110001010000) && ({row_reg, col_reg}<17'b00100110001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100110001110000) && ({row_reg, col_reg}<17'b00100110010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100110010000000) && ({row_reg, col_reg}<17'b00100110010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100110010101000) && ({row_reg, col_reg}<17'b00100110010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100110010110000) && ({row_reg, col_reg}<17'b00100110011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00100110011101000) && ({row_reg, col_reg}<17'b00100110100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100110100001000) && ({row_reg, col_reg}<17'b00100110101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100110101000000) && ({row_reg, col_reg}<17'b00100110101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100110101010000) && ({row_reg, col_reg}<17'b00100110101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100110101110000) && ({row_reg, col_reg}<17'b00100110110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100110110000000) && ({row_reg, col_reg}<17'b00100110110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100110110101000) && ({row_reg, col_reg}<17'b00100110110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100110110110000) && ({row_reg, col_reg}<17'b00100110111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00100110111101000) && ({row_reg, col_reg}<17'b00100111000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100111000001000) && ({row_reg, col_reg}<17'b00100111001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100111001000000) && ({row_reg, col_reg}<17'b00100111001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100111001010000) && ({row_reg, col_reg}<17'b00100111001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100111001110000) && ({row_reg, col_reg}<17'b00100111010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100111010000000) && ({row_reg, col_reg}<17'b00100111010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100111010101000) && ({row_reg, col_reg}<17'b00100111010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100111010110000) && ({row_reg, col_reg}<17'b00100111011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00100111011101000) && ({row_reg, col_reg}<17'b00100111100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100111100001000) && ({row_reg, col_reg}<17'b00100111101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100111101000000) && ({row_reg, col_reg}<17'b00100111101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100111101010000) && ({row_reg, col_reg}<17'b00100111101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100111101110000) && ({row_reg, col_reg}<17'b00100111110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100111110000000) && ({row_reg, col_reg}<17'b00100111110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00100111110101000) && ({row_reg, col_reg}<17'b00100111110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00100111110110000) && ({row_reg, col_reg}<17'b00100111111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00100111111101000) && ({row_reg, col_reg}<17'b00101000000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101000000110000) && ({row_reg, col_reg}<17'b00101000001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101000001000000) && ({row_reg, col_reg}<17'b00101000001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101000001101000) && ({row_reg, col_reg}<17'b00101000001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101000001110000) && ({row_reg, col_reg}<17'b00101000010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101000010000000) && ({row_reg, col_reg}<17'b00101000010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101000010001000) && ({row_reg, col_reg}<17'b00101000010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101000010110000) && ({row_reg, col_reg}<17'b00101000011000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00101000011000000) && ({row_reg, col_reg}<17'b00101000100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101000100110000) && ({row_reg, col_reg}<17'b00101000101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101000101000000) && ({row_reg, col_reg}<17'b00101000101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101000101101000) && ({row_reg, col_reg}<17'b00101000101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101000101110000) && ({row_reg, col_reg}<17'b00101000110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101000110000000) && ({row_reg, col_reg}<17'b00101000110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101000110001000) && ({row_reg, col_reg}<17'b00101000110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101000110110000) && ({row_reg, col_reg}<17'b00101000111000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00101000111000000) && ({row_reg, col_reg}<17'b00101001000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101001000110000) && ({row_reg, col_reg}<17'b00101001001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101001001000000) && ({row_reg, col_reg}<17'b00101001001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101001001101000) && ({row_reg, col_reg}<17'b00101001001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101001001110000) && ({row_reg, col_reg}<17'b00101001010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101001010000000) && ({row_reg, col_reg}<17'b00101001010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101001010001000) && ({row_reg, col_reg}<17'b00101001010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101001010110000) && ({row_reg, col_reg}<17'b00101001011000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00101001011000000) && ({row_reg, col_reg}<17'b00101001100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101001100110000) && ({row_reg, col_reg}<17'b00101001101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101001101000000) && ({row_reg, col_reg}<17'b00101001101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101001101101000) && ({row_reg, col_reg}<17'b00101001101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101001101110000) && ({row_reg, col_reg}<17'b00101001110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101001110000000) && ({row_reg, col_reg}<17'b00101001110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101001110001000) && ({row_reg, col_reg}<17'b00101001110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101001110110000) && ({row_reg, col_reg}<17'b00101001111000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00101001111000000) && ({row_reg, col_reg}<17'b00101010000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101010000110000) && ({row_reg, col_reg}<17'b00101010001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101010001000000) && ({row_reg, col_reg}<17'b00101010001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101010001101000) && ({row_reg, col_reg}<17'b00101010001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101010001110000) && ({row_reg, col_reg}<17'b00101010010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101010010000000) && ({row_reg, col_reg}<17'b00101010010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101010010001000) && ({row_reg, col_reg}<17'b00101010010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101010010110000) && ({row_reg, col_reg}<17'b00101010011000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00101010011000000) && ({row_reg, col_reg}<17'b00101010100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101010100110000) && ({row_reg, col_reg}<17'b00101010101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101010101000000) && ({row_reg, col_reg}<17'b00101010101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101010101101000) && ({row_reg, col_reg}<17'b00101010101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101010101110000) && ({row_reg, col_reg}<17'b00101010110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101010110000000) && ({row_reg, col_reg}<17'b00101010110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101010110001000) && ({row_reg, col_reg}<17'b00101010110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101010110110000) && ({row_reg, col_reg}<17'b00101010111000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00101010111000000) && ({row_reg, col_reg}<17'b00101011000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101011000110000) && ({row_reg, col_reg}<17'b00101011001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101011001000000) && ({row_reg, col_reg}<17'b00101011001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101011001101000) && ({row_reg, col_reg}<17'b00101011001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101011001110000) && ({row_reg, col_reg}<17'b00101011010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101011010000000) && ({row_reg, col_reg}<17'b00101011010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101011010001000) && ({row_reg, col_reg}<17'b00101011010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101011010110000) && ({row_reg, col_reg}<17'b00101011011000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00101011011000000) && ({row_reg, col_reg}<17'b00101011100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101011100110000) && ({row_reg, col_reg}<17'b00101011101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101011101000000) && ({row_reg, col_reg}<17'b00101011101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101011101101000) && ({row_reg, col_reg}<17'b00101011101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101011101110000) && ({row_reg, col_reg}<17'b00101011110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101011110000000) && ({row_reg, col_reg}<17'b00101011110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101011110001000) && ({row_reg, col_reg}<17'b00101011110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101011110110000) && ({row_reg, col_reg}<17'b00101011111000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00101011111000000) && ({row_reg, col_reg}<17'b00101100000000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101100000000000) && ({row_reg, col_reg}<17'b00101100000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101100000101000) && ({row_reg, col_reg}<17'b00101100000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101100000110000) && ({row_reg, col_reg}<17'b00101100001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101100001000000) && ({row_reg, col_reg}<17'b00101100001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101100001101000) && ({row_reg, col_reg}<17'b00101100001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101100001110000) && ({row_reg, col_reg}<17'b00101100010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101100010000000) && ({row_reg, col_reg}<17'b00101100010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101100010001000) && ({row_reg, col_reg}<17'b00101100010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101100010110000) && ({row_reg, col_reg}<17'b00101100011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101100011000000) && ({row_reg, col_reg}<17'b00101100011001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b00101100011001000) && ({row_reg, col_reg}<17'b00101100100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101100100101000) && ({row_reg, col_reg}<17'b00101100100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101100100110000) && ({row_reg, col_reg}<17'b00101100101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101100101000000) && ({row_reg, col_reg}<17'b00101100101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101100101101000) && ({row_reg, col_reg}<17'b00101100101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101100101110000) && ({row_reg, col_reg}<17'b00101100110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101100110000000) && ({row_reg, col_reg}<17'b00101100110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101100110001000) && ({row_reg, col_reg}<17'b00101100110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101100110110000) && ({row_reg, col_reg}<17'b00101100111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101100111000000) && ({row_reg, col_reg}<17'b00101100111001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b00101100111001000) && ({row_reg, col_reg}<17'b00101101000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101101000101000) && ({row_reg, col_reg}<17'b00101101000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101101000110000) && ({row_reg, col_reg}<17'b00101101001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101101001000000) && ({row_reg, col_reg}<17'b00101101001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101101001101000) && ({row_reg, col_reg}<17'b00101101001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101101001110000) && ({row_reg, col_reg}<17'b00101101010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101101010000000) && ({row_reg, col_reg}<17'b00101101010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101101010001000) && ({row_reg, col_reg}<17'b00101101010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101101010110000) && ({row_reg, col_reg}<17'b00101101011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101101011000000) && ({row_reg, col_reg}<17'b00101101011001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b00101101011001000) && ({row_reg, col_reg}<17'b00101101100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101101100101000) && ({row_reg, col_reg}<17'b00101101100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101101100110000) && ({row_reg, col_reg}<17'b00101101101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101101101000000) && ({row_reg, col_reg}<17'b00101101101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101101101101000) && ({row_reg, col_reg}<17'b00101101101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101101101110000) && ({row_reg, col_reg}<17'b00101101110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101101110000000) && ({row_reg, col_reg}<17'b00101101110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101101110001000) && ({row_reg, col_reg}<17'b00101101110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101101110110000) && ({row_reg, col_reg}<17'b00101101111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101101111000000) && ({row_reg, col_reg}<17'b00101101111001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b00101101111001000) && ({row_reg, col_reg}<17'b00101110000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101110000101000) && ({row_reg, col_reg}<17'b00101110000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101110000110000) && ({row_reg, col_reg}<17'b00101110001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101110001000000) && ({row_reg, col_reg}<17'b00101110001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101110001101000) && ({row_reg, col_reg}<17'b00101110001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101110001110000) && ({row_reg, col_reg}<17'b00101110010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101110010000000) && ({row_reg, col_reg}<17'b00101110010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101110010001000) && ({row_reg, col_reg}<17'b00101110010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101110010110000) && ({row_reg, col_reg}<17'b00101110011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101110011000000) && ({row_reg, col_reg}<17'b00101110011001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b00101110011001000) && ({row_reg, col_reg}<17'b00101110100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101110100101000) && ({row_reg, col_reg}<17'b00101110100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101110100110000) && ({row_reg, col_reg}<17'b00101110101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101110101000000) && ({row_reg, col_reg}<17'b00101110101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101110101101000) && ({row_reg, col_reg}<17'b00101110101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101110101110000) && ({row_reg, col_reg}<17'b00101110110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101110110000000) && ({row_reg, col_reg}<17'b00101110110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101110110001000) && ({row_reg, col_reg}<17'b00101110110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101110110110000) && ({row_reg, col_reg}<17'b00101110111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101110111000000) && ({row_reg, col_reg}<17'b00101110111001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b00101110111001000) && ({row_reg, col_reg}<17'b00101111000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101111000101000) && ({row_reg, col_reg}<17'b00101111000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101111000110000) && ({row_reg, col_reg}<17'b00101111001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101111001000000) && ({row_reg, col_reg}<17'b00101111001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101111001101000) && ({row_reg, col_reg}<17'b00101111001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101111001110000) && ({row_reg, col_reg}<17'b00101111010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101111010000000) && ({row_reg, col_reg}<17'b00101111010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101111010001000) && ({row_reg, col_reg}<17'b00101111010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101111010110000) && ({row_reg, col_reg}<17'b00101111011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101111011000000) && ({row_reg, col_reg}<17'b00101111011001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b00101111011001000) && ({row_reg, col_reg}<17'b00101111100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101111100101000) && ({row_reg, col_reg}<17'b00101111100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101111100110000) && ({row_reg, col_reg}<17'b00101111101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101111101000000) && ({row_reg, col_reg}<17'b00101111101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101111101101000) && ({row_reg, col_reg}<17'b00101111101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101111101110000) && ({row_reg, col_reg}<17'b00101111110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101111110000000) && ({row_reg, col_reg}<17'b00101111110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101111110001000) && ({row_reg, col_reg}<17'b00101111110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00101111110110000) && ({row_reg, col_reg}<17'b00101111111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00101111111000000) && ({row_reg, col_reg}<17'b00101111111001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b00101111111001000) && ({row_reg, col_reg}<17'b00110000000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110000000101000) && ({row_reg, col_reg}<17'b00110000000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110000000110000) && ({row_reg, col_reg}<17'b00110000001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110000001000000) && ({row_reg, col_reg}<17'b00110000001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110000001010000) && ({row_reg, col_reg}<17'b00110000010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110000010101000) && ({row_reg, col_reg}<17'b00110000010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110000010110000) && ({row_reg, col_reg}<17'b00110000011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110000011000000) && ({row_reg, col_reg}<17'b00110000011001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b00110000011001000) && ({row_reg, col_reg}<17'b00110000100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110000100101000) && ({row_reg, col_reg}<17'b00110000100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110000100110000) && ({row_reg, col_reg}<17'b00110000101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110000101000000) && ({row_reg, col_reg}<17'b00110000101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110000101010000) && ({row_reg, col_reg}<17'b00110000110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110000110101000) && ({row_reg, col_reg}<17'b00110000110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110000110110000) && ({row_reg, col_reg}<17'b00110000111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110000111000000) && ({row_reg, col_reg}<17'b00110000111001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b00110000111001000) && ({row_reg, col_reg}<17'b00110001000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110001000101000) && ({row_reg, col_reg}<17'b00110001000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110001000110000) && ({row_reg, col_reg}<17'b00110001001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110001001000000) && ({row_reg, col_reg}<17'b00110001001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110001001010000) && ({row_reg, col_reg}<17'b00110001010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110001010101000) && ({row_reg, col_reg}<17'b00110001010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110001010110000) && ({row_reg, col_reg}<17'b00110001011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110001011000000) && ({row_reg, col_reg}<17'b00110001011001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b00110001011001000) && ({row_reg, col_reg}<17'b00110001100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110001100101000) && ({row_reg, col_reg}<17'b00110001100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110001100110000) && ({row_reg, col_reg}<17'b00110001101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110001101000000) && ({row_reg, col_reg}<17'b00110001101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110001101010000) && ({row_reg, col_reg}<17'b00110001110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110001110101000) && ({row_reg, col_reg}<17'b00110001110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110001110110000) && ({row_reg, col_reg}<17'b00110001111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110001111000000) && ({row_reg, col_reg}<17'b00110001111001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b00110001111001000) && ({row_reg, col_reg}<17'b00110010000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110010000101000) && ({row_reg, col_reg}<17'b00110010000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110010000110000) && ({row_reg, col_reg}<17'b00110010001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110010001000000) && ({row_reg, col_reg}<17'b00110010001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110010001010000) && ({row_reg, col_reg}<17'b00110010010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110010010101000) && ({row_reg, col_reg}<17'b00110010010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110010010110000) && ({row_reg, col_reg}<17'b00110010011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110010011000000) && ({row_reg, col_reg}<17'b00110010011001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b00110010011001000) && ({row_reg, col_reg}<17'b00110010100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110010100101000) && ({row_reg, col_reg}<17'b00110010100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110010100110000) && ({row_reg, col_reg}<17'b00110010101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110010101000000) && ({row_reg, col_reg}<17'b00110010101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110010101010000) && ({row_reg, col_reg}<17'b00110010110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110010110101000) && ({row_reg, col_reg}<17'b00110010110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110010110110000) && ({row_reg, col_reg}<17'b00110010111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110010111000000) && ({row_reg, col_reg}<17'b00110010111001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b00110010111001000) && ({row_reg, col_reg}<17'b00110011000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110011000101000) && ({row_reg, col_reg}<17'b00110011000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110011000110000) && ({row_reg, col_reg}<17'b00110011001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110011001000000) && ({row_reg, col_reg}<17'b00110011001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110011001010000) && ({row_reg, col_reg}<17'b00110011010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110011010101000) && ({row_reg, col_reg}<17'b00110011010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110011010110000) && ({row_reg, col_reg}<17'b00110011011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110011011000000) && ({row_reg, col_reg}<17'b00110011011001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b00110011011001000) && ({row_reg, col_reg}<17'b00110011100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110011100101000) && ({row_reg, col_reg}<17'b00110011100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110011100110000) && ({row_reg, col_reg}<17'b00110011101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110011101000000) && ({row_reg, col_reg}<17'b00110011101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110011101010000) && ({row_reg, col_reg}<17'b00110011110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110011110101000) && ({row_reg, col_reg}<17'b00110011110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110011110110000) && ({row_reg, col_reg}<17'b00110011111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110011111000000) && ({row_reg, col_reg}<17'b00110011111001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b00110011111001000) && ({row_reg, col_reg}<17'b00110100000000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110100000000000) && ({row_reg, col_reg}<17'b00110100000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110100000110000) && ({row_reg, col_reg}<17'b00110100001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110100001000000) && ({row_reg, col_reg}<17'b00110100001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110100001010000) && ({row_reg, col_reg}<17'b00110100001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110100001011000) && ({row_reg, col_reg}<17'b00110100001110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110100001110000) && ({row_reg, col_reg}<17'b00110100010000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110100010000000) && ({row_reg, col_reg}<17'b00110100010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110100010011000) && ({row_reg, col_reg}<17'b00110100010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110100010101000) && ({row_reg, col_reg}<17'b00110100010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110100010110000) && ({row_reg, col_reg}<17'b00110100011000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00110100011000000) && ({row_reg, col_reg}<17'b00110100100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110100100110000) && ({row_reg, col_reg}<17'b00110100101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110100101000000) && ({row_reg, col_reg}<17'b00110100101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110100101010000) && ({row_reg, col_reg}<17'b00110100101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110100101011000) && ({row_reg, col_reg}<17'b00110100101110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110100101110000) && ({row_reg, col_reg}<17'b00110100110000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110100110000000) && ({row_reg, col_reg}<17'b00110100110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110100110011000) && ({row_reg, col_reg}<17'b00110100110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110100110101000) && ({row_reg, col_reg}<17'b00110100110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110100110110000) && ({row_reg, col_reg}<17'b00110100111000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00110100111000000) && ({row_reg, col_reg}<17'b00110101000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110101000110000) && ({row_reg, col_reg}<17'b00110101001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110101001000000) && ({row_reg, col_reg}<17'b00110101001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110101001010000) && ({row_reg, col_reg}<17'b00110101001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110101001011000) && ({row_reg, col_reg}<17'b00110101001110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110101001110000) && ({row_reg, col_reg}<17'b00110101010000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110101010000000) && ({row_reg, col_reg}<17'b00110101010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110101010011000) && ({row_reg, col_reg}<17'b00110101010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110101010101000) && ({row_reg, col_reg}<17'b00110101010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110101010110000) && ({row_reg, col_reg}<17'b00110101011000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00110101011000000) && ({row_reg, col_reg}<17'b00110101100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110101100110000) && ({row_reg, col_reg}<17'b00110101101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110101101000000) && ({row_reg, col_reg}<17'b00110101101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110101101010000) && ({row_reg, col_reg}<17'b00110101101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110101101011000) && ({row_reg, col_reg}<17'b00110101101110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110101101110000) && ({row_reg, col_reg}<17'b00110101110000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110101110000000) && ({row_reg, col_reg}<17'b00110101110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110101110011000) && ({row_reg, col_reg}<17'b00110101110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110101110101000) && ({row_reg, col_reg}<17'b00110101110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110101110110000) && ({row_reg, col_reg}<17'b00110101111000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00110101111000000) && ({row_reg, col_reg}<17'b00110110000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110110000110000) && ({row_reg, col_reg}<17'b00110110001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110110001000000) && ({row_reg, col_reg}<17'b00110110001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110110001010000) && ({row_reg, col_reg}<17'b00110110001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110110001011000) && ({row_reg, col_reg}<17'b00110110001110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110110001110000) && ({row_reg, col_reg}<17'b00110110010000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110110010000000) && ({row_reg, col_reg}<17'b00110110010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110110010011000) && ({row_reg, col_reg}<17'b00110110010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110110010101000) && ({row_reg, col_reg}<17'b00110110010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110110010110000) && ({row_reg, col_reg}<17'b00110110011000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00110110011000000) && ({row_reg, col_reg}<17'b00110110100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110110100110000) && ({row_reg, col_reg}<17'b00110110101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110110101000000) && ({row_reg, col_reg}<17'b00110110101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110110101010000) && ({row_reg, col_reg}<17'b00110110101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110110101011000) && ({row_reg, col_reg}<17'b00110110101110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110110101110000) && ({row_reg, col_reg}<17'b00110110110000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110110110000000) && ({row_reg, col_reg}<17'b00110110110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110110110011000) && ({row_reg, col_reg}<17'b00110110110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110110110101000) && ({row_reg, col_reg}<17'b00110110110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110110110110000) && ({row_reg, col_reg}<17'b00110110111000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00110110111000000) && ({row_reg, col_reg}<17'b00110111000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110111000110000) && ({row_reg, col_reg}<17'b00110111001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110111001000000) && ({row_reg, col_reg}<17'b00110111001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110111001010000) && ({row_reg, col_reg}<17'b00110111001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110111001011000) && ({row_reg, col_reg}<17'b00110111001110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110111001110000) && ({row_reg, col_reg}<17'b00110111010000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110111010000000) && ({row_reg, col_reg}<17'b00110111010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110111010011000) && ({row_reg, col_reg}<17'b00110111010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110111010101000) && ({row_reg, col_reg}<17'b00110111010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110111010110000) && ({row_reg, col_reg}<17'b00110111011000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00110111011000000) && ({row_reg, col_reg}<17'b00110111100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110111100110000) && ({row_reg, col_reg}<17'b00110111101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110111101000000) && ({row_reg, col_reg}<17'b00110111101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110111101010000) && ({row_reg, col_reg}<17'b00110111101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110111101011000) && ({row_reg, col_reg}<17'b00110111101110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110111101110000) && ({row_reg, col_reg}<17'b00110111110000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110111110000000) && ({row_reg, col_reg}<17'b00110111110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110111110011000) && ({row_reg, col_reg}<17'b00110111110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00110111110101000) && ({row_reg, col_reg}<17'b00110111110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00110111110110000) && ({row_reg, col_reg}<17'b00110111111000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00110111111000000) && ({row_reg, col_reg}<17'b00111000000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111000000110000) && ({row_reg, col_reg}<17'b00111000001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111000001000000) && ({row_reg, col_reg}<17'b00111000001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111000001010000) && ({row_reg, col_reg}<17'b00111000001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111000001011000) && ({row_reg, col_reg}<17'b00111000001100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111000001100000) && ({row_reg, col_reg}<17'b00111000010010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111000010010000) && ({row_reg, col_reg}<17'b00111000010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111000010011000) && ({row_reg, col_reg}<17'b00111000010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111000010101000) && ({row_reg, col_reg}<17'b00111000010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111000010110000) && ({row_reg, col_reg}<17'b00111000011000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00111000011000000) && ({row_reg, col_reg}<17'b00111000100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111000100110000) && ({row_reg, col_reg}<17'b00111000101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111000101000000) && ({row_reg, col_reg}<17'b00111000101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111000101010000) && ({row_reg, col_reg}<17'b00111000101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111000101011000) && ({row_reg, col_reg}<17'b00111000101100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111000101100000) && ({row_reg, col_reg}<17'b00111000110010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111000110010000) && ({row_reg, col_reg}<17'b00111000110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111000110011000) && ({row_reg, col_reg}<17'b00111000110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111000110101000) && ({row_reg, col_reg}<17'b00111000110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111000110110000) && ({row_reg, col_reg}<17'b00111000111000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00111000111000000) && ({row_reg, col_reg}<17'b00111001000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111001000110000) && ({row_reg, col_reg}<17'b00111001001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111001001000000) && ({row_reg, col_reg}<17'b00111001001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111001001010000) && ({row_reg, col_reg}<17'b00111001001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111001001011000) && ({row_reg, col_reg}<17'b00111001001100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111001001100000) && ({row_reg, col_reg}<17'b00111001010010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111001010010000) && ({row_reg, col_reg}<17'b00111001010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111001010011000) && ({row_reg, col_reg}<17'b00111001010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111001010101000) && ({row_reg, col_reg}<17'b00111001010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111001010110000) && ({row_reg, col_reg}<17'b00111001011000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00111001011000000) && ({row_reg, col_reg}<17'b00111001100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111001100110000) && ({row_reg, col_reg}<17'b00111001101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111001101000000) && ({row_reg, col_reg}<17'b00111001101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111001101010000) && ({row_reg, col_reg}<17'b00111001101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111001101011000) && ({row_reg, col_reg}<17'b00111001101100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111001101100000) && ({row_reg, col_reg}<17'b00111001110010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111001110010000) && ({row_reg, col_reg}<17'b00111001110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111001110011000) && ({row_reg, col_reg}<17'b00111001110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111001110101000) && ({row_reg, col_reg}<17'b00111001110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111001110110000) && ({row_reg, col_reg}<17'b00111001111000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00111001111000000) && ({row_reg, col_reg}<17'b00111010000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111010000110000) && ({row_reg, col_reg}<17'b00111010001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111010001000000) && ({row_reg, col_reg}<17'b00111010001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111010001010000) && ({row_reg, col_reg}<17'b00111010001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111010001011000) && ({row_reg, col_reg}<17'b00111010001100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111010001100000) && ({row_reg, col_reg}<17'b00111010010010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111010010010000) && ({row_reg, col_reg}<17'b00111010010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111010010011000) && ({row_reg, col_reg}<17'b00111010010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111010010101000) && ({row_reg, col_reg}<17'b00111010010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111010010110000) && ({row_reg, col_reg}<17'b00111010011000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00111010011000000) && ({row_reg, col_reg}<17'b00111010100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111010100110000) && ({row_reg, col_reg}<17'b00111010101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111010101000000) && ({row_reg, col_reg}<17'b00111010101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111010101010000) && ({row_reg, col_reg}<17'b00111010101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111010101011000) && ({row_reg, col_reg}<17'b00111010101100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111010101100000) && ({row_reg, col_reg}<17'b00111010110010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111010110010000) && ({row_reg, col_reg}<17'b00111010110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111010110011000) && ({row_reg, col_reg}<17'b00111010110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111010110101000) && ({row_reg, col_reg}<17'b00111010110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111010110110000) && ({row_reg, col_reg}<17'b00111010111000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00111010111000000) && ({row_reg, col_reg}<17'b00111011000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111011000110000) && ({row_reg, col_reg}<17'b00111011001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111011001000000) && ({row_reg, col_reg}<17'b00111011001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111011001010000) && ({row_reg, col_reg}<17'b00111011001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111011001011000) && ({row_reg, col_reg}<17'b00111011001100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111011001100000) && ({row_reg, col_reg}<17'b00111011010010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111011010010000) && ({row_reg, col_reg}<17'b00111011010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111011010011000) && ({row_reg, col_reg}<17'b00111011010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111011010101000) && ({row_reg, col_reg}<17'b00111011010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111011010110000) && ({row_reg, col_reg}<17'b00111011011000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00111011011000000) && ({row_reg, col_reg}<17'b00111011100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111011100110000) && ({row_reg, col_reg}<17'b00111011101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111011101000000) && ({row_reg, col_reg}<17'b00111011101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111011101010000) && ({row_reg, col_reg}<17'b00111011101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111011101011000) && ({row_reg, col_reg}<17'b00111011101100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111011101100000) && ({row_reg, col_reg}<17'b00111011110010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111011110010000) && ({row_reg, col_reg}<17'b00111011110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111011110011000) && ({row_reg, col_reg}<17'b00111011110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111011110101000) && ({row_reg, col_reg}<17'b00111011110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111011110110000) && ({row_reg, col_reg}<17'b00111011111000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b00111011111000000) && ({row_reg, col_reg}<17'b00111100000000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111100000000000) && ({row_reg, col_reg}<17'b00111100001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111100001011000) && ({row_reg, col_reg}<17'b00111100001100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111100001100000) && ({row_reg, col_reg}<17'b00111100010010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111100010010000) && ({row_reg, col_reg}<17'b00111100010011000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b00111100010011000) && ({row_reg, col_reg}<17'b00111100101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111100101011000) && ({row_reg, col_reg}<17'b00111100101100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111100101100000) && ({row_reg, col_reg}<17'b00111100110010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111100110010000) && ({row_reg, col_reg}<17'b00111100110011000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b00111100110011000) && ({row_reg, col_reg}<17'b00111101001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111101001011000) && ({row_reg, col_reg}<17'b00111101001100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111101001100000) && ({row_reg, col_reg}<17'b00111101010010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111101010010000) && ({row_reg, col_reg}<17'b00111101010011000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b00111101010011000) && ({row_reg, col_reg}<17'b00111101101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111101101011000) && ({row_reg, col_reg}<17'b00111101101100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111101101100000) && ({row_reg, col_reg}<17'b00111101110010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111101110010000) && ({row_reg, col_reg}<17'b00111101110011000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b00111101110011000) && ({row_reg, col_reg}<17'b00111110001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111110001011000) && ({row_reg, col_reg}<17'b00111110001100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111110001100000) && ({row_reg, col_reg}<17'b00111110010010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111110010010000) && ({row_reg, col_reg}<17'b00111110010011000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b00111110010011000) && ({row_reg, col_reg}<17'b00111110101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111110101011000) && ({row_reg, col_reg}<17'b00111110101100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111110101100000) && ({row_reg, col_reg}<17'b00111110110010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111110110010000) && ({row_reg, col_reg}<17'b00111110110011000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b00111110110011000) && ({row_reg, col_reg}<17'b00111111001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111111001011000) && ({row_reg, col_reg}<17'b00111111001100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111111001100000) && ({row_reg, col_reg}<17'b00111111010010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111111010010000) && ({row_reg, col_reg}<17'b00111111010011000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b00111111010011000) && ({row_reg, col_reg}<17'b00111111101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111111101011000) && ({row_reg, col_reg}<17'b00111111101100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b00111111101100000) && ({row_reg, col_reg}<17'b00111111110010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b00111111110010000) && ({row_reg, col_reg}<17'b00111111110011000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b00111111110011000) && ({row_reg, col_reg}<17'b01000000000000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000000000000000) && ({row_reg, col_reg}<17'b01000000000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000000000110000) && ({row_reg, col_reg}<17'b01000000001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000000001000000) && ({row_reg, col_reg}<17'b01000000001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000000001010000) && ({row_reg, col_reg}<17'b01000000001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000000001011000) && ({row_reg, col_reg}<17'b01000000001100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000000001100000) && ({row_reg, col_reg}<17'b01000000010010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000000010010000) && ({row_reg, col_reg}<17'b01000000010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000000010011000) && ({row_reg, col_reg}<17'b01000000010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000000010101000) && ({row_reg, col_reg}<17'b01000000010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000000010110000) && ({row_reg, col_reg}<17'b01000000011000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01000000011000000) && ({row_reg, col_reg}<17'b01000000100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000000100110000) && ({row_reg, col_reg}<17'b01000000101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000000101000000) && ({row_reg, col_reg}<17'b01000000101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000000101010000) && ({row_reg, col_reg}<17'b01000000101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000000101011000) && ({row_reg, col_reg}<17'b01000000101100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000000101100000) && ({row_reg, col_reg}<17'b01000000110010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000000110010000) && ({row_reg, col_reg}<17'b01000000110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000000110011000) && ({row_reg, col_reg}<17'b01000000110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000000110101000) && ({row_reg, col_reg}<17'b01000000110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000000110110000) && ({row_reg, col_reg}<17'b01000000111000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01000000111000000) && ({row_reg, col_reg}<17'b01000001000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000001000110000) && ({row_reg, col_reg}<17'b01000001001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000001001000000) && ({row_reg, col_reg}<17'b01000001001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000001001010000) && ({row_reg, col_reg}<17'b01000001001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000001001011000) && ({row_reg, col_reg}<17'b01000001001100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000001001100000) && ({row_reg, col_reg}<17'b01000001010010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000001010010000) && ({row_reg, col_reg}<17'b01000001010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000001010011000) && ({row_reg, col_reg}<17'b01000001010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000001010101000) && ({row_reg, col_reg}<17'b01000001010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000001010110000) && ({row_reg, col_reg}<17'b01000001011000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01000001011000000) && ({row_reg, col_reg}<17'b01000001100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000001100110000) && ({row_reg, col_reg}<17'b01000001101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000001101000000) && ({row_reg, col_reg}<17'b01000001101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000001101010000) && ({row_reg, col_reg}<17'b01000001101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000001101011000) && ({row_reg, col_reg}<17'b01000001101100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000001101100000) && ({row_reg, col_reg}<17'b01000001110010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000001110010000) && ({row_reg, col_reg}<17'b01000001110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000001110011000) && ({row_reg, col_reg}<17'b01000001110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000001110101000) && ({row_reg, col_reg}<17'b01000001110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000001110110000) && ({row_reg, col_reg}<17'b01000001111000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01000001111000000) && ({row_reg, col_reg}<17'b01000010000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000010000110000) && ({row_reg, col_reg}<17'b01000010001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000010001000000) && ({row_reg, col_reg}<17'b01000010001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000010001010000) && ({row_reg, col_reg}<17'b01000010001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000010001011000) && ({row_reg, col_reg}<17'b01000010001100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000010001100000) && ({row_reg, col_reg}<17'b01000010010010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000010010010000) && ({row_reg, col_reg}<17'b01000010010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000010010011000) && ({row_reg, col_reg}<17'b01000010010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000010010101000) && ({row_reg, col_reg}<17'b01000010010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000010010110000) && ({row_reg, col_reg}<17'b01000010011000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01000010011000000) && ({row_reg, col_reg}<17'b01000010100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000010100110000) && ({row_reg, col_reg}<17'b01000010101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000010101000000) && ({row_reg, col_reg}<17'b01000010101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000010101010000) && ({row_reg, col_reg}<17'b01000010101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000010101011000) && ({row_reg, col_reg}<17'b01000010101100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000010101100000) && ({row_reg, col_reg}<17'b01000010110010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000010110010000) && ({row_reg, col_reg}<17'b01000010110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000010110011000) && ({row_reg, col_reg}<17'b01000010110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000010110101000) && ({row_reg, col_reg}<17'b01000010110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000010110110000) && ({row_reg, col_reg}<17'b01000010111000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01000010111000000) && ({row_reg, col_reg}<17'b01000011000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000011000110000) && ({row_reg, col_reg}<17'b01000011001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000011001000000) && ({row_reg, col_reg}<17'b01000011001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000011001010000) && ({row_reg, col_reg}<17'b01000011001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000011001011000) && ({row_reg, col_reg}<17'b01000011001100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000011001100000) && ({row_reg, col_reg}<17'b01000011010010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000011010010000) && ({row_reg, col_reg}<17'b01000011010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000011010011000) && ({row_reg, col_reg}<17'b01000011010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000011010101000) && ({row_reg, col_reg}<17'b01000011010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000011010110000) && ({row_reg, col_reg}<17'b01000011011000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01000011011000000) && ({row_reg, col_reg}<17'b01000011100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000011100110000) && ({row_reg, col_reg}<17'b01000011101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000011101000000) && ({row_reg, col_reg}<17'b01000011101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000011101010000) && ({row_reg, col_reg}<17'b01000011101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000011101011000) && ({row_reg, col_reg}<17'b01000011101100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000011101100000) && ({row_reg, col_reg}<17'b01000011110010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000011110010000) && ({row_reg, col_reg}<17'b01000011110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000011110011000) && ({row_reg, col_reg}<17'b01000011110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000011110101000) && ({row_reg, col_reg}<17'b01000011110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000011110110000) && ({row_reg, col_reg}<17'b01000011111000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01000011111000000) && ({row_reg, col_reg}<17'b01000100000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000100000110000) && ({row_reg, col_reg}<17'b01000100001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000100001000000) && ({row_reg, col_reg}<17'b01000100001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000100001010000) && ({row_reg, col_reg}<17'b01000100001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000100001011000) && ({row_reg, col_reg}<17'b01000100010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000100010011000) && ({row_reg, col_reg}<17'b01000100010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000100010101000) && ({row_reg, col_reg}<17'b01000100010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000100010110000) && ({row_reg, col_reg}<17'b01000100011000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01000100011000000) && ({row_reg, col_reg}<17'b01000100100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000100100110000) && ({row_reg, col_reg}<17'b01000100101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000100101000000) && ({row_reg, col_reg}<17'b01000100101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000100101010000) && ({row_reg, col_reg}<17'b01000100101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000100101011000) && ({row_reg, col_reg}<17'b01000100110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000100110011000) && ({row_reg, col_reg}<17'b01000100110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000100110101000) && ({row_reg, col_reg}<17'b01000100110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000100110110000) && ({row_reg, col_reg}<17'b01000100111000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01000100111000000) && ({row_reg, col_reg}<17'b01000101000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000101000110000) && ({row_reg, col_reg}<17'b01000101001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000101001000000) && ({row_reg, col_reg}<17'b01000101001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000101001010000) && ({row_reg, col_reg}<17'b01000101001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000101001011000) && ({row_reg, col_reg}<17'b01000101010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000101010011000) && ({row_reg, col_reg}<17'b01000101010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000101010101000) && ({row_reg, col_reg}<17'b01000101010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000101010110000) && ({row_reg, col_reg}<17'b01000101011000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01000101011000000) && ({row_reg, col_reg}<17'b01000101100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000101100110000) && ({row_reg, col_reg}<17'b01000101101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000101101000000) && ({row_reg, col_reg}<17'b01000101101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000101101010000) && ({row_reg, col_reg}<17'b01000101101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000101101011000) && ({row_reg, col_reg}<17'b01000101110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000101110011000) && ({row_reg, col_reg}<17'b01000101110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000101110101000) && ({row_reg, col_reg}<17'b01000101110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000101110110000) && ({row_reg, col_reg}<17'b01000101111000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01000101111000000) && ({row_reg, col_reg}<17'b01000110000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000110000110000) && ({row_reg, col_reg}<17'b01000110001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000110001000000) && ({row_reg, col_reg}<17'b01000110001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000110001010000) && ({row_reg, col_reg}<17'b01000110001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000110001011000) && ({row_reg, col_reg}<17'b01000110010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000110010011000) && ({row_reg, col_reg}<17'b01000110010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000110010101000) && ({row_reg, col_reg}<17'b01000110010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000110010110000) && ({row_reg, col_reg}<17'b01000110011000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01000110011000000) && ({row_reg, col_reg}<17'b01000110100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000110100110000) && ({row_reg, col_reg}<17'b01000110101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000110101000000) && ({row_reg, col_reg}<17'b01000110101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000110101010000) && ({row_reg, col_reg}<17'b01000110101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000110101011000) && ({row_reg, col_reg}<17'b01000110110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000110110011000) && ({row_reg, col_reg}<17'b01000110110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000110110101000) && ({row_reg, col_reg}<17'b01000110110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000110110110000) && ({row_reg, col_reg}<17'b01000110111000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01000110111000000) && ({row_reg, col_reg}<17'b01000111000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000111000110000) && ({row_reg, col_reg}<17'b01000111001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000111001000000) && ({row_reg, col_reg}<17'b01000111001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000111001010000) && ({row_reg, col_reg}<17'b01000111001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000111001011000) && ({row_reg, col_reg}<17'b01000111010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000111010011000) && ({row_reg, col_reg}<17'b01000111010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000111010101000) && ({row_reg, col_reg}<17'b01000111010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000111010110000) && ({row_reg, col_reg}<17'b01000111011000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01000111011000000) && ({row_reg, col_reg}<17'b01000111100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000111100110000) && ({row_reg, col_reg}<17'b01000111101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000111101000000) && ({row_reg, col_reg}<17'b01000111101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000111101010000) && ({row_reg, col_reg}<17'b01000111101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000111101011000) && ({row_reg, col_reg}<17'b01000111110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000111110011000) && ({row_reg, col_reg}<17'b01000111110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01000111110101000) && ({row_reg, col_reg}<17'b01000111110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01000111110110000) && ({row_reg, col_reg}<17'b01000111111000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01000111111000000) && ({row_reg, col_reg}<17'b01001000000000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001000000000000) && ({row_reg, col_reg}<17'b01001000000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001000000101000) && ({row_reg, col_reg}<17'b01001000000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001000000110000) && ({row_reg, col_reg}<17'b01001000001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001000001000000) && ({row_reg, col_reg}<17'b01001000001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001000001010000) && ({row_reg, col_reg}<17'b01001000010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001000010101000) && ({row_reg, col_reg}<17'b01001000010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001000010110000) && ({row_reg, col_reg}<17'b01001000011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001000011000000) && ({row_reg, col_reg}<17'b01001000011001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b01001000011001000) && ({row_reg, col_reg}<17'b01001000100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001000100101000) && ({row_reg, col_reg}<17'b01001000100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001000100110000) && ({row_reg, col_reg}<17'b01001000101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001000101000000) && ({row_reg, col_reg}<17'b01001000101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001000101010000) && ({row_reg, col_reg}<17'b01001000110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001000110101000) && ({row_reg, col_reg}<17'b01001000110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001000110110000) && ({row_reg, col_reg}<17'b01001000111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001000111000000) && ({row_reg, col_reg}<17'b01001000111001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b01001000111001000) && ({row_reg, col_reg}<17'b01001001000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001001000101000) && ({row_reg, col_reg}<17'b01001001000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001001000110000) && ({row_reg, col_reg}<17'b01001001001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001001001000000) && ({row_reg, col_reg}<17'b01001001001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001001001010000) && ({row_reg, col_reg}<17'b01001001010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001001010101000) && ({row_reg, col_reg}<17'b01001001010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001001010110000) && ({row_reg, col_reg}<17'b01001001011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001001011000000) && ({row_reg, col_reg}<17'b01001001011001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b01001001011001000) && ({row_reg, col_reg}<17'b01001001100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001001100101000) && ({row_reg, col_reg}<17'b01001001100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001001100110000) && ({row_reg, col_reg}<17'b01001001101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001001101000000) && ({row_reg, col_reg}<17'b01001001101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001001101010000) && ({row_reg, col_reg}<17'b01001001110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001001110101000) && ({row_reg, col_reg}<17'b01001001110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001001110110000) && ({row_reg, col_reg}<17'b01001001111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001001111000000) && ({row_reg, col_reg}<17'b01001001111001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b01001001111001000) && ({row_reg, col_reg}<17'b01001010000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001010000101000) && ({row_reg, col_reg}<17'b01001010000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001010000110000) && ({row_reg, col_reg}<17'b01001010001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001010001000000) && ({row_reg, col_reg}<17'b01001010001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001010001010000) && ({row_reg, col_reg}<17'b01001010010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001010010101000) && ({row_reg, col_reg}<17'b01001010010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001010010110000) && ({row_reg, col_reg}<17'b01001010011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001010011000000) && ({row_reg, col_reg}<17'b01001010011001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b01001010011001000) && ({row_reg, col_reg}<17'b01001010100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001010100101000) && ({row_reg, col_reg}<17'b01001010100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001010100110000) && ({row_reg, col_reg}<17'b01001010101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001010101000000) && ({row_reg, col_reg}<17'b01001010101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001010101010000) && ({row_reg, col_reg}<17'b01001010110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001010110101000) && ({row_reg, col_reg}<17'b01001010110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001010110110000) && ({row_reg, col_reg}<17'b01001010111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001010111000000) && ({row_reg, col_reg}<17'b01001010111001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b01001010111001000) && ({row_reg, col_reg}<17'b01001011000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001011000101000) && ({row_reg, col_reg}<17'b01001011000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001011000110000) && ({row_reg, col_reg}<17'b01001011001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001011001000000) && ({row_reg, col_reg}<17'b01001011001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001011001010000) && ({row_reg, col_reg}<17'b01001011010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001011010101000) && ({row_reg, col_reg}<17'b01001011010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001011010110000) && ({row_reg, col_reg}<17'b01001011011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001011011000000) && ({row_reg, col_reg}<17'b01001011011001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b01001011011001000) && ({row_reg, col_reg}<17'b01001011100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001011100101000) && ({row_reg, col_reg}<17'b01001011100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001011100110000) && ({row_reg, col_reg}<17'b01001011101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001011101000000) && ({row_reg, col_reg}<17'b01001011101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001011101010000) && ({row_reg, col_reg}<17'b01001011110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001011110101000) && ({row_reg, col_reg}<17'b01001011110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001011110110000) && ({row_reg, col_reg}<17'b01001011111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001011111000000) && ({row_reg, col_reg}<17'b01001011111001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b01001011111001000) && ({row_reg, col_reg}<17'b01001100000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001100000101000) && ({row_reg, col_reg}<17'b01001100000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001100000110000) && ({row_reg, col_reg}<17'b01001100001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001100001000000) && ({row_reg, col_reg}<17'b01001100001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001100001010000) && ({row_reg, col_reg}<17'b01001100001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001100001011000) && ({row_reg, col_reg}<17'b01001100010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001100010011000) && ({row_reg, col_reg}<17'b01001100010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001100010101000) && ({row_reg, col_reg}<17'b01001100010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001100010110000) && ({row_reg, col_reg}<17'b01001100011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001100011000000) && ({row_reg, col_reg}<17'b01001100011001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b01001100011001000) && ({row_reg, col_reg}<17'b01001100100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001100100101000) && ({row_reg, col_reg}<17'b01001100100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001100100110000) && ({row_reg, col_reg}<17'b01001100101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001100101000000) && ({row_reg, col_reg}<17'b01001100101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001100101010000) && ({row_reg, col_reg}<17'b01001100101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001100101011000) && ({row_reg, col_reg}<17'b01001100110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001100110011000) && ({row_reg, col_reg}<17'b01001100110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001100110101000) && ({row_reg, col_reg}<17'b01001100110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001100110110000) && ({row_reg, col_reg}<17'b01001100111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001100111000000) && ({row_reg, col_reg}<17'b01001100111001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b01001100111001000) && ({row_reg, col_reg}<17'b01001101000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001101000101000) && ({row_reg, col_reg}<17'b01001101000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001101000110000) && ({row_reg, col_reg}<17'b01001101001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001101001000000) && ({row_reg, col_reg}<17'b01001101001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001101001010000) && ({row_reg, col_reg}<17'b01001101001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001101001011000) && ({row_reg, col_reg}<17'b01001101010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001101010011000) && ({row_reg, col_reg}<17'b01001101010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001101010101000) && ({row_reg, col_reg}<17'b01001101010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001101010110000) && ({row_reg, col_reg}<17'b01001101011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001101011000000) && ({row_reg, col_reg}<17'b01001101011001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b01001101011001000) && ({row_reg, col_reg}<17'b01001101100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001101100101000) && ({row_reg, col_reg}<17'b01001101100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001101100110000) && ({row_reg, col_reg}<17'b01001101101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001101101000000) && ({row_reg, col_reg}<17'b01001101101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001101101010000) && ({row_reg, col_reg}<17'b01001101101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001101101011000) && ({row_reg, col_reg}<17'b01001101110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001101110011000) && ({row_reg, col_reg}<17'b01001101110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001101110101000) && ({row_reg, col_reg}<17'b01001101110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001101110110000) && ({row_reg, col_reg}<17'b01001101111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001101111000000) && ({row_reg, col_reg}<17'b01001101111001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b01001101111001000) && ({row_reg, col_reg}<17'b01001110000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001110000101000) && ({row_reg, col_reg}<17'b01001110000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001110000110000) && ({row_reg, col_reg}<17'b01001110001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001110001000000) && ({row_reg, col_reg}<17'b01001110001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001110001010000) && ({row_reg, col_reg}<17'b01001110001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001110001011000) && ({row_reg, col_reg}<17'b01001110010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001110010011000) && ({row_reg, col_reg}<17'b01001110010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001110010101000) && ({row_reg, col_reg}<17'b01001110010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001110010110000) && ({row_reg, col_reg}<17'b01001110011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001110011000000) && ({row_reg, col_reg}<17'b01001110011001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b01001110011001000) && ({row_reg, col_reg}<17'b01001110100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001110100101000) && ({row_reg, col_reg}<17'b01001110100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001110100110000) && ({row_reg, col_reg}<17'b01001110101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001110101000000) && ({row_reg, col_reg}<17'b01001110101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001110101010000) && ({row_reg, col_reg}<17'b01001110101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001110101011000) && ({row_reg, col_reg}<17'b01001110110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001110110011000) && ({row_reg, col_reg}<17'b01001110110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001110110101000) && ({row_reg, col_reg}<17'b01001110110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001110110110000) && ({row_reg, col_reg}<17'b01001110111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001110111000000) && ({row_reg, col_reg}<17'b01001110111001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b01001110111001000) && ({row_reg, col_reg}<17'b01001111000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001111000101000) && ({row_reg, col_reg}<17'b01001111000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001111000110000) && ({row_reg, col_reg}<17'b01001111001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001111001000000) && ({row_reg, col_reg}<17'b01001111001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001111001010000) && ({row_reg, col_reg}<17'b01001111001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001111001011000) && ({row_reg, col_reg}<17'b01001111010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001111010011000) && ({row_reg, col_reg}<17'b01001111010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001111010101000) && ({row_reg, col_reg}<17'b01001111010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001111010110000) && ({row_reg, col_reg}<17'b01001111011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001111011000000) && ({row_reg, col_reg}<17'b01001111011001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b01001111011001000) && ({row_reg, col_reg}<17'b01001111100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001111100101000) && ({row_reg, col_reg}<17'b01001111100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001111100110000) && ({row_reg, col_reg}<17'b01001111101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001111101000000) && ({row_reg, col_reg}<17'b01001111101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001111101010000) && ({row_reg, col_reg}<17'b01001111101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001111101011000) && ({row_reg, col_reg}<17'b01001111110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001111110011000) && ({row_reg, col_reg}<17'b01001111110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001111110101000) && ({row_reg, col_reg}<17'b01001111110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01001111110110000) && ({row_reg, col_reg}<17'b01001111111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01001111111000000) && ({row_reg, col_reg}<17'b01001111111001000)) color_data = 12'b100000001000;

		if(({row_reg, col_reg}>=17'b01001111111001000) && ({row_reg, col_reg}<17'b01010000000000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010000000000000) && ({row_reg, col_reg}<17'b01010000000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010000000110000) && ({row_reg, col_reg}<17'b01010000001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010000001000000) && ({row_reg, col_reg}<17'b01010000001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010000001010000) && ({row_reg, col_reg}<17'b01010000001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010000001011000) && ({row_reg, col_reg}<17'b01010000010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010000010011000) && ({row_reg, col_reg}<17'b01010000010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010000010101000) && ({row_reg, col_reg}<17'b01010000010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010000010110000) && ({row_reg, col_reg}<17'b01010000011000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01010000011000000) && ({row_reg, col_reg}<17'b01010000100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010000100110000) && ({row_reg, col_reg}<17'b01010000101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010000101000000) && ({row_reg, col_reg}<17'b01010000101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010000101010000) && ({row_reg, col_reg}<17'b01010000101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010000101011000) && ({row_reg, col_reg}<17'b01010000110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010000110011000) && ({row_reg, col_reg}<17'b01010000110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010000110101000) && ({row_reg, col_reg}<17'b01010000110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010000110110000) && ({row_reg, col_reg}<17'b01010000111000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01010000111000000) && ({row_reg, col_reg}<17'b01010001000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010001000110000) && ({row_reg, col_reg}<17'b01010001001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010001001000000) && ({row_reg, col_reg}<17'b01010001001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010001001010000) && ({row_reg, col_reg}<17'b01010001001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010001001011000) && ({row_reg, col_reg}<17'b01010001010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010001010011000) && ({row_reg, col_reg}<17'b01010001010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010001010101000) && ({row_reg, col_reg}<17'b01010001010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010001010110000) && ({row_reg, col_reg}<17'b01010001011000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01010001011000000) && ({row_reg, col_reg}<17'b01010001100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010001100110000) && ({row_reg, col_reg}<17'b01010001101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010001101000000) && ({row_reg, col_reg}<17'b01010001101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010001101010000) && ({row_reg, col_reg}<17'b01010001101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010001101011000) && ({row_reg, col_reg}<17'b01010001110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010001110011000) && ({row_reg, col_reg}<17'b01010001110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010001110101000) && ({row_reg, col_reg}<17'b01010001110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010001110110000) && ({row_reg, col_reg}<17'b01010001111000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01010001111000000) && ({row_reg, col_reg}<17'b01010010000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010010000110000) && ({row_reg, col_reg}<17'b01010010001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010010001000000) && ({row_reg, col_reg}<17'b01010010001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010010001010000) && ({row_reg, col_reg}<17'b01010010001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010010001011000) && ({row_reg, col_reg}<17'b01010010010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010010010011000) && ({row_reg, col_reg}<17'b01010010010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010010010101000) && ({row_reg, col_reg}<17'b01010010010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010010010110000) && ({row_reg, col_reg}<17'b01010010011000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01010010011000000) && ({row_reg, col_reg}<17'b01010010100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010010100110000) && ({row_reg, col_reg}<17'b01010010101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010010101000000) && ({row_reg, col_reg}<17'b01010010101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010010101010000) && ({row_reg, col_reg}<17'b01010010101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010010101011000) && ({row_reg, col_reg}<17'b01010010110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010010110011000) && ({row_reg, col_reg}<17'b01010010110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010010110101000) && ({row_reg, col_reg}<17'b01010010110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010010110110000) && ({row_reg, col_reg}<17'b01010010111000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01010010111000000) && ({row_reg, col_reg}<17'b01010011000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010011000110000) && ({row_reg, col_reg}<17'b01010011001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010011001000000) && ({row_reg, col_reg}<17'b01010011001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010011001010000) && ({row_reg, col_reg}<17'b01010011001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010011001011000) && ({row_reg, col_reg}<17'b01010011010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010011010011000) && ({row_reg, col_reg}<17'b01010011010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010011010101000) && ({row_reg, col_reg}<17'b01010011010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010011010110000) && ({row_reg, col_reg}<17'b01010011011000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01010011011000000) && ({row_reg, col_reg}<17'b01010011100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010011100110000) && ({row_reg, col_reg}<17'b01010011101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010011101000000) && ({row_reg, col_reg}<17'b01010011101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010011101010000) && ({row_reg, col_reg}<17'b01010011101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010011101011000) && ({row_reg, col_reg}<17'b01010011110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010011110011000) && ({row_reg, col_reg}<17'b01010011110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010011110101000) && ({row_reg, col_reg}<17'b01010011110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010011110110000) && ({row_reg, col_reg}<17'b01010011111000000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01010011111000000) && ({row_reg, col_reg}<17'b01010100000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010100000001000) && ({row_reg, col_reg}<17'b01010100001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010100001110000) && ({row_reg, col_reg}<17'b01010100010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010100010000000) && ({row_reg, col_reg}<17'b01010100011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01010100011101000) && ({row_reg, col_reg}<17'b01010100100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010100100001000) && ({row_reg, col_reg}<17'b01010100101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010100101110000) && ({row_reg, col_reg}<17'b01010100110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010100110000000) && ({row_reg, col_reg}<17'b01010100111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01010100111101000) && ({row_reg, col_reg}<17'b01010101000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010101000001000) && ({row_reg, col_reg}<17'b01010101001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010101001110000) && ({row_reg, col_reg}<17'b01010101010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010101010000000) && ({row_reg, col_reg}<17'b01010101011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01010101011101000) && ({row_reg, col_reg}<17'b01010101100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010101100001000) && ({row_reg, col_reg}<17'b01010101101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010101101110000) && ({row_reg, col_reg}<17'b01010101110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010101110000000) && ({row_reg, col_reg}<17'b01010101111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01010101111101000) && ({row_reg, col_reg}<17'b01010110000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010110000001000) && ({row_reg, col_reg}<17'b01010110001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010110001110000) && ({row_reg, col_reg}<17'b01010110010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010110010000000) && ({row_reg, col_reg}<17'b01010110011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01010110011101000) && ({row_reg, col_reg}<17'b01010110100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010110100001000) && ({row_reg, col_reg}<17'b01010110101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010110101110000) && ({row_reg, col_reg}<17'b01010110110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010110110000000) && ({row_reg, col_reg}<17'b01010110111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01010110111101000) && ({row_reg, col_reg}<17'b01010111000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010111000001000) && ({row_reg, col_reg}<17'b01010111001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010111001110000) && ({row_reg, col_reg}<17'b01010111010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010111010000000) && ({row_reg, col_reg}<17'b01010111011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01010111011101000) && ({row_reg, col_reg}<17'b01010111100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010111100001000) && ({row_reg, col_reg}<17'b01010111101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01010111101110000) && ({row_reg, col_reg}<17'b01010111110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01010111110000000) && ({row_reg, col_reg}<17'b01010111111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01010111111101000) && ({row_reg, col_reg}<17'b01011000000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011000000001000) && ({row_reg, col_reg}<17'b01011000001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011000001110000) && ({row_reg, col_reg}<17'b01011000010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011000010000000) && ({row_reg, col_reg}<17'b01011000011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01011000011101000) && ({row_reg, col_reg}<17'b01011000100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011000100001000) && ({row_reg, col_reg}<17'b01011000101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011000101110000) && ({row_reg, col_reg}<17'b01011000110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011000110000000) && ({row_reg, col_reg}<17'b01011000111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01011000111101000) && ({row_reg, col_reg}<17'b01011001000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011001000001000) && ({row_reg, col_reg}<17'b01011001001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011001001110000) && ({row_reg, col_reg}<17'b01011001010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011001010000000) && ({row_reg, col_reg}<17'b01011001011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01011001011101000) && ({row_reg, col_reg}<17'b01011001100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011001100001000) && ({row_reg, col_reg}<17'b01011001101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011001101110000) && ({row_reg, col_reg}<17'b01011001110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011001110000000) && ({row_reg, col_reg}<17'b01011001111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01011001111101000) && ({row_reg, col_reg}<17'b01011010000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011010000001000) && ({row_reg, col_reg}<17'b01011010001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011010001110000) && ({row_reg, col_reg}<17'b01011010010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011010010000000) && ({row_reg, col_reg}<17'b01011010011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01011010011101000) && ({row_reg, col_reg}<17'b01011010100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011010100001000) && ({row_reg, col_reg}<17'b01011010101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011010101110000) && ({row_reg, col_reg}<17'b01011010110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011010110000000) && ({row_reg, col_reg}<17'b01011010111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01011010111101000) && ({row_reg, col_reg}<17'b01011011000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011011000001000) && ({row_reg, col_reg}<17'b01011011001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011011001110000) && ({row_reg, col_reg}<17'b01011011010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011011010000000) && ({row_reg, col_reg}<17'b01011011011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01011011011101000) && ({row_reg, col_reg}<17'b01011011100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011011100001000) && ({row_reg, col_reg}<17'b01011011101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011011101110000) && ({row_reg, col_reg}<17'b01011011110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011011110000000) && ({row_reg, col_reg}<17'b01011011111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01011011111101000) && ({row_reg, col_reg}<17'b01011100000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011100000001000) && ({row_reg, col_reg}<17'b01011100000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011100000010000) && ({row_reg, col_reg}<17'b01011100000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011100000110000) && ({row_reg, col_reg}<17'b01011100001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011100001000000) && ({row_reg, col_reg}<17'b01011100001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011100001101000) && ({row_reg, col_reg}<17'b01011100001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011100001110000) && ({row_reg, col_reg}<17'b01011100010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011100010000000) && ({row_reg, col_reg}<17'b01011100010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011100010001000) && ({row_reg, col_reg}<17'b01011100010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011100010110000) && ({row_reg, col_reg}<17'b01011100011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011100011000000) && ({row_reg, col_reg}<17'b01011100011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011100011100000) && ({row_reg, col_reg}<17'b01011100011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01011100011101000) && ({row_reg, col_reg}<17'b01011100100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011100100001000) && ({row_reg, col_reg}<17'b01011100100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011100100010000) && ({row_reg, col_reg}<17'b01011100100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011100100110000) && ({row_reg, col_reg}<17'b01011100101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011100101000000) && ({row_reg, col_reg}<17'b01011100101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011100101101000) && ({row_reg, col_reg}<17'b01011100101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011100101110000) && ({row_reg, col_reg}<17'b01011100110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011100110000000) && ({row_reg, col_reg}<17'b01011100110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011100110001000) && ({row_reg, col_reg}<17'b01011100110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011100110110000) && ({row_reg, col_reg}<17'b01011100111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011100111000000) && ({row_reg, col_reg}<17'b01011100111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011100111100000) && ({row_reg, col_reg}<17'b01011100111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01011100111101000) && ({row_reg, col_reg}<17'b01011101000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011101000001000) && ({row_reg, col_reg}<17'b01011101000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011101000010000) && ({row_reg, col_reg}<17'b01011101000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011101000110000) && ({row_reg, col_reg}<17'b01011101001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011101001000000) && ({row_reg, col_reg}<17'b01011101001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011101001101000) && ({row_reg, col_reg}<17'b01011101001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011101001110000) && ({row_reg, col_reg}<17'b01011101010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011101010000000) && ({row_reg, col_reg}<17'b01011101010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011101010001000) && ({row_reg, col_reg}<17'b01011101010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011101010110000) && ({row_reg, col_reg}<17'b01011101011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011101011000000) && ({row_reg, col_reg}<17'b01011101011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011101011100000) && ({row_reg, col_reg}<17'b01011101011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01011101011101000) && ({row_reg, col_reg}<17'b01011101100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011101100001000) && ({row_reg, col_reg}<17'b01011101100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011101100010000) && ({row_reg, col_reg}<17'b01011101100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011101100110000) && ({row_reg, col_reg}<17'b01011101101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011101101000000) && ({row_reg, col_reg}<17'b01011101101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011101101101000) && ({row_reg, col_reg}<17'b01011101101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011101101110000) && ({row_reg, col_reg}<17'b01011101110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011101110000000) && ({row_reg, col_reg}<17'b01011101110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011101110001000) && ({row_reg, col_reg}<17'b01011101110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011101110110000) && ({row_reg, col_reg}<17'b01011101111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011101111000000) && ({row_reg, col_reg}<17'b01011101111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011101111100000) && ({row_reg, col_reg}<17'b01011101111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01011101111101000) && ({row_reg, col_reg}<17'b01011110000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011110000001000) && ({row_reg, col_reg}<17'b01011110000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011110000010000) && ({row_reg, col_reg}<17'b01011110000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011110000110000) && ({row_reg, col_reg}<17'b01011110001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011110001000000) && ({row_reg, col_reg}<17'b01011110001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011110001101000) && ({row_reg, col_reg}<17'b01011110001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011110001110000) && ({row_reg, col_reg}<17'b01011110010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011110010000000) && ({row_reg, col_reg}<17'b01011110010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011110010001000) && ({row_reg, col_reg}<17'b01011110010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011110010110000) && ({row_reg, col_reg}<17'b01011110011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011110011000000) && ({row_reg, col_reg}<17'b01011110011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011110011100000) && ({row_reg, col_reg}<17'b01011110011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01011110011101000) && ({row_reg, col_reg}<17'b01011110100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011110100001000) && ({row_reg, col_reg}<17'b01011110100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011110100010000) && ({row_reg, col_reg}<17'b01011110100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011110100110000) && ({row_reg, col_reg}<17'b01011110101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011110101000000) && ({row_reg, col_reg}<17'b01011110101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011110101101000) && ({row_reg, col_reg}<17'b01011110101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011110101110000) && ({row_reg, col_reg}<17'b01011110110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011110110000000) && ({row_reg, col_reg}<17'b01011110110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011110110001000) && ({row_reg, col_reg}<17'b01011110110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011110110110000) && ({row_reg, col_reg}<17'b01011110111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011110111000000) && ({row_reg, col_reg}<17'b01011110111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011110111100000) && ({row_reg, col_reg}<17'b01011110111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01011110111101000) && ({row_reg, col_reg}<17'b01011111000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011111000001000) && ({row_reg, col_reg}<17'b01011111000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011111000010000) && ({row_reg, col_reg}<17'b01011111000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011111000110000) && ({row_reg, col_reg}<17'b01011111001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011111001000000) && ({row_reg, col_reg}<17'b01011111001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011111001101000) && ({row_reg, col_reg}<17'b01011111001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011111001110000) && ({row_reg, col_reg}<17'b01011111010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011111010000000) && ({row_reg, col_reg}<17'b01011111010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011111010001000) && ({row_reg, col_reg}<17'b01011111010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011111010110000) && ({row_reg, col_reg}<17'b01011111011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011111011000000) && ({row_reg, col_reg}<17'b01011111011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011111011100000) && ({row_reg, col_reg}<17'b01011111011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01011111011101000) && ({row_reg, col_reg}<17'b01011111100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011111100001000) && ({row_reg, col_reg}<17'b01011111100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011111100010000) && ({row_reg, col_reg}<17'b01011111100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011111100110000) && ({row_reg, col_reg}<17'b01011111101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011111101000000) && ({row_reg, col_reg}<17'b01011111101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011111101101000) && ({row_reg, col_reg}<17'b01011111101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011111101110000) && ({row_reg, col_reg}<17'b01011111110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011111110000000) && ({row_reg, col_reg}<17'b01011111110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011111110001000) && ({row_reg, col_reg}<17'b01011111110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011111110110000) && ({row_reg, col_reg}<17'b01011111111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01011111111000000) && ({row_reg, col_reg}<17'b01011111111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01011111111100000) && ({row_reg, col_reg}<17'b01011111111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01011111111101000) && ({row_reg, col_reg}<17'b01100000000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100000000001000) && ({row_reg, col_reg}<17'b01100000000100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100000000100000) && ({row_reg, col_reg}<17'b01100000000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100000000110000) && ({row_reg, col_reg}<17'b01100000011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100000011000000) && ({row_reg, col_reg}<17'b01100000011010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100000011010000) && ({row_reg, col_reg}<17'b01100000011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01100000011101000) && ({row_reg, col_reg}<17'b01100000100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100000100001000) && ({row_reg, col_reg}<17'b01100000100100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100000100100000) && ({row_reg, col_reg}<17'b01100000100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100000100110000) && ({row_reg, col_reg}<17'b01100000111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100000111000000) && ({row_reg, col_reg}<17'b01100000111010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100000111010000) && ({row_reg, col_reg}<17'b01100000111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01100000111101000) && ({row_reg, col_reg}<17'b01100001000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100001000001000) && ({row_reg, col_reg}<17'b01100001000100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100001000100000) && ({row_reg, col_reg}<17'b01100001000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100001000110000) && ({row_reg, col_reg}<17'b01100001011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100001011000000) && ({row_reg, col_reg}<17'b01100001011010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100001011010000) && ({row_reg, col_reg}<17'b01100001011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01100001011101000) && ({row_reg, col_reg}<17'b01100001100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100001100001000) && ({row_reg, col_reg}<17'b01100001100100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100001100100000) && ({row_reg, col_reg}<17'b01100001100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100001100110000) && ({row_reg, col_reg}<17'b01100001111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100001111000000) && ({row_reg, col_reg}<17'b01100001111010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100001111010000) && ({row_reg, col_reg}<17'b01100001111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01100001111101000) && ({row_reg, col_reg}<17'b01100010000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100010000001000) && ({row_reg, col_reg}<17'b01100010000100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100010000100000) && ({row_reg, col_reg}<17'b01100010000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100010000110000) && ({row_reg, col_reg}<17'b01100010011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100010011000000) && ({row_reg, col_reg}<17'b01100010011010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100010011010000) && ({row_reg, col_reg}<17'b01100010011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01100010011101000) && ({row_reg, col_reg}<17'b01100010100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100010100001000) && ({row_reg, col_reg}<17'b01100010100100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100010100100000) && ({row_reg, col_reg}<17'b01100010100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100010100110000) && ({row_reg, col_reg}<17'b01100010111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100010111000000) && ({row_reg, col_reg}<17'b01100010111010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100010111010000) && ({row_reg, col_reg}<17'b01100010111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01100010111101000) && ({row_reg, col_reg}<17'b01100011000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100011000001000) && ({row_reg, col_reg}<17'b01100011000100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100011000100000) && ({row_reg, col_reg}<17'b01100011000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100011000110000) && ({row_reg, col_reg}<17'b01100011011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100011011000000) && ({row_reg, col_reg}<17'b01100011011010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100011011010000) && ({row_reg, col_reg}<17'b01100011011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01100011011101000) && ({row_reg, col_reg}<17'b01100011100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100011100001000) && ({row_reg, col_reg}<17'b01100011100100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100011100100000) && ({row_reg, col_reg}<17'b01100011100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100011100110000) && ({row_reg, col_reg}<17'b01100011111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100011111000000) && ({row_reg, col_reg}<17'b01100011111010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100011111010000) && ({row_reg, col_reg}<17'b01100011111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01100011111101000) && ({row_reg, col_reg}<17'b01100100000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100100000001000) && ({row_reg, col_reg}<17'b01100100000100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100100000100000) && ({row_reg, col_reg}<17'b01100100000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100100000110000) && ({row_reg, col_reg}<17'b01100100011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100100011000000) && ({row_reg, col_reg}<17'b01100100011010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100100011010000) && ({row_reg, col_reg}<17'b01100100011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01100100011101000) && ({row_reg, col_reg}<17'b01100100100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100100100001000) && ({row_reg, col_reg}<17'b01100100100100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100100100100000) && ({row_reg, col_reg}<17'b01100100100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100100100110000) && ({row_reg, col_reg}<17'b01100100111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100100111000000) && ({row_reg, col_reg}<17'b01100100111010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100100111010000) && ({row_reg, col_reg}<17'b01100100111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01100100111101000) && ({row_reg, col_reg}<17'b01100101000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100101000001000) && ({row_reg, col_reg}<17'b01100101000100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100101000100000) && ({row_reg, col_reg}<17'b01100101000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100101000110000) && ({row_reg, col_reg}<17'b01100101011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100101011000000) && ({row_reg, col_reg}<17'b01100101011010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100101011010000) && ({row_reg, col_reg}<17'b01100101011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01100101011101000) && ({row_reg, col_reg}<17'b01100101100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100101100001000) && ({row_reg, col_reg}<17'b01100101100100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100101100100000) && ({row_reg, col_reg}<17'b01100101100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100101100110000) && ({row_reg, col_reg}<17'b01100101111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100101111000000) && ({row_reg, col_reg}<17'b01100101111010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100101111010000) && ({row_reg, col_reg}<17'b01100101111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01100101111101000) && ({row_reg, col_reg}<17'b01100110000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100110000001000) && ({row_reg, col_reg}<17'b01100110000100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100110000100000) && ({row_reg, col_reg}<17'b01100110000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100110000110000) && ({row_reg, col_reg}<17'b01100110011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100110011000000) && ({row_reg, col_reg}<17'b01100110011010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100110011010000) && ({row_reg, col_reg}<17'b01100110011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01100110011101000) && ({row_reg, col_reg}<17'b01100110100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100110100001000) && ({row_reg, col_reg}<17'b01100110100100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100110100100000) && ({row_reg, col_reg}<17'b01100110100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100110100110000) && ({row_reg, col_reg}<17'b01100110111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100110111000000) && ({row_reg, col_reg}<17'b01100110111010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100110111010000) && ({row_reg, col_reg}<17'b01100110111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01100110111101000) && ({row_reg, col_reg}<17'b01100111000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100111000001000) && ({row_reg, col_reg}<17'b01100111000100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100111000100000) && ({row_reg, col_reg}<17'b01100111000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100111000110000) && ({row_reg, col_reg}<17'b01100111011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100111011000000) && ({row_reg, col_reg}<17'b01100111011010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100111011010000) && ({row_reg, col_reg}<17'b01100111011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01100111011101000) && ({row_reg, col_reg}<17'b01100111100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100111100001000) && ({row_reg, col_reg}<17'b01100111100100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100111100100000) && ({row_reg, col_reg}<17'b01100111100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100111100110000) && ({row_reg, col_reg}<17'b01100111111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01100111111000000) && ({row_reg, col_reg}<17'b01100111111010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01100111111010000) && ({row_reg, col_reg}<17'b01100111111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01100111111101000) && ({row_reg, col_reg}<17'b01101000000011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101000000011000) && ({row_reg, col_reg}<17'b01101000000100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101000000100000) && ({row_reg, col_reg}<17'b01101000000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101000000110000) && ({row_reg, col_reg}<17'b01101000001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101000001000000) && ({row_reg, col_reg}<17'b01101000001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101000001010000) && ({row_reg, col_reg}<17'b01101000001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101000001011000) && ({row_reg, col_reg}<17'b01101000010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101000010011000) && ({row_reg, col_reg}<17'b01101000010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101000010101000) && ({row_reg, col_reg}<17'b01101000010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101000010110000) && ({row_reg, col_reg}<17'b01101000011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101000011000000) && ({row_reg, col_reg}<17'b01101000011010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101000011010000) && ({row_reg, col_reg}<17'b01101000011011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01101000011011000) && ({row_reg, col_reg}<17'b01101000100011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101000100011000) && ({row_reg, col_reg}<17'b01101000100100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101000100100000) && ({row_reg, col_reg}<17'b01101000100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101000100110000) && ({row_reg, col_reg}<17'b01101000101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101000101000000) && ({row_reg, col_reg}<17'b01101000101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101000101010000) && ({row_reg, col_reg}<17'b01101000101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101000101011000) && ({row_reg, col_reg}<17'b01101000110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101000110011000) && ({row_reg, col_reg}<17'b01101000110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101000110101000) && ({row_reg, col_reg}<17'b01101000110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101000110110000) && ({row_reg, col_reg}<17'b01101000111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101000111000000) && ({row_reg, col_reg}<17'b01101000111010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101000111010000) && ({row_reg, col_reg}<17'b01101000111011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01101000111011000) && ({row_reg, col_reg}<17'b01101001000011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101001000011000) && ({row_reg, col_reg}<17'b01101001000100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101001000100000) && ({row_reg, col_reg}<17'b01101001000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101001000110000) && ({row_reg, col_reg}<17'b01101001001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101001001000000) && ({row_reg, col_reg}<17'b01101001001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101001001010000) && ({row_reg, col_reg}<17'b01101001001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101001001011000) && ({row_reg, col_reg}<17'b01101001010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101001010011000) && ({row_reg, col_reg}<17'b01101001010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101001010101000) && ({row_reg, col_reg}<17'b01101001010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101001010110000) && ({row_reg, col_reg}<17'b01101001011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101001011000000) && ({row_reg, col_reg}<17'b01101001011010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101001011010000) && ({row_reg, col_reg}<17'b01101001011011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01101001011011000) && ({row_reg, col_reg}<17'b01101001100011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101001100011000) && ({row_reg, col_reg}<17'b01101001100100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101001100100000) && ({row_reg, col_reg}<17'b01101001100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101001100110000) && ({row_reg, col_reg}<17'b01101001101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101001101000000) && ({row_reg, col_reg}<17'b01101001101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101001101010000) && ({row_reg, col_reg}<17'b01101001101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101001101011000) && ({row_reg, col_reg}<17'b01101001110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101001110011000) && ({row_reg, col_reg}<17'b01101001110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101001110101000) && ({row_reg, col_reg}<17'b01101001110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101001110110000) && ({row_reg, col_reg}<17'b01101001111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101001111000000) && ({row_reg, col_reg}<17'b01101001111010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101001111010000) && ({row_reg, col_reg}<17'b01101001111011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01101001111011000) && ({row_reg, col_reg}<17'b01101010000011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101010000011000) && ({row_reg, col_reg}<17'b01101010000100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101010000100000) && ({row_reg, col_reg}<17'b01101010000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101010000110000) && ({row_reg, col_reg}<17'b01101010001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101010001000000) && ({row_reg, col_reg}<17'b01101010001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101010001010000) && ({row_reg, col_reg}<17'b01101010001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101010001011000) && ({row_reg, col_reg}<17'b01101010010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101010010011000) && ({row_reg, col_reg}<17'b01101010010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101010010101000) && ({row_reg, col_reg}<17'b01101010010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101010010110000) && ({row_reg, col_reg}<17'b01101010011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101010011000000) && ({row_reg, col_reg}<17'b01101010011010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101010011010000) && ({row_reg, col_reg}<17'b01101010011011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01101010011011000) && ({row_reg, col_reg}<17'b01101010100011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101010100011000) && ({row_reg, col_reg}<17'b01101010100100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101010100100000) && ({row_reg, col_reg}<17'b01101010100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101010100110000) && ({row_reg, col_reg}<17'b01101010101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101010101000000) && ({row_reg, col_reg}<17'b01101010101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101010101010000) && ({row_reg, col_reg}<17'b01101010101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101010101011000) && ({row_reg, col_reg}<17'b01101010110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101010110011000) && ({row_reg, col_reg}<17'b01101010110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101010110101000) && ({row_reg, col_reg}<17'b01101010110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101010110110000) && ({row_reg, col_reg}<17'b01101010111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101010111000000) && ({row_reg, col_reg}<17'b01101010111010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101010111010000) && ({row_reg, col_reg}<17'b01101010111011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01101010111011000) && ({row_reg, col_reg}<17'b01101011000011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101011000011000) && ({row_reg, col_reg}<17'b01101011000100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101011000100000) && ({row_reg, col_reg}<17'b01101011000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101011000110000) && ({row_reg, col_reg}<17'b01101011001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101011001000000) && ({row_reg, col_reg}<17'b01101011001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101011001010000) && ({row_reg, col_reg}<17'b01101011001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101011001011000) && ({row_reg, col_reg}<17'b01101011010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101011010011000) && ({row_reg, col_reg}<17'b01101011010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101011010101000) && ({row_reg, col_reg}<17'b01101011010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101011010110000) && ({row_reg, col_reg}<17'b01101011011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101011011000000) && ({row_reg, col_reg}<17'b01101011011010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101011011010000) && ({row_reg, col_reg}<17'b01101011011011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01101011011011000) && ({row_reg, col_reg}<17'b01101011100011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101011100011000) && ({row_reg, col_reg}<17'b01101011100100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101011100100000) && ({row_reg, col_reg}<17'b01101011100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101011100110000) && ({row_reg, col_reg}<17'b01101011101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101011101000000) && ({row_reg, col_reg}<17'b01101011101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101011101010000) && ({row_reg, col_reg}<17'b01101011101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101011101011000) && ({row_reg, col_reg}<17'b01101011110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101011110011000) && ({row_reg, col_reg}<17'b01101011110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101011110101000) && ({row_reg, col_reg}<17'b01101011110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101011110110000) && ({row_reg, col_reg}<17'b01101011111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101011111000000) && ({row_reg, col_reg}<17'b01101011111010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101011111010000) && ({row_reg, col_reg}<17'b01101011111011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01101011111011000) && ({row_reg, col_reg}<17'b01101100000011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101100000011000) && ({row_reg, col_reg}<17'b01101100000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101100000101000) && ({row_reg, col_reg}<17'b01101100000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101100000110000) && ({row_reg, col_reg}<17'b01101100001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101100001000000) && ({row_reg, col_reg}<17'b01101100001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101100001010000) && ({row_reg, col_reg}<17'b01101100001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101100001011000) && ({row_reg, col_reg}<17'b01101100010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101100010011000) && ({row_reg, col_reg}<17'b01101100010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101100010101000) && ({row_reg, col_reg}<17'b01101100010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101100010110000) && ({row_reg, col_reg}<17'b01101100011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101100011000000) && ({row_reg, col_reg}<17'b01101100011010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101100011010000) && ({row_reg, col_reg}<17'b01101100011011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01101100011011000) && ({row_reg, col_reg}<17'b01101100100011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101100100011000) && ({row_reg, col_reg}<17'b01101100100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101100100101000) && ({row_reg, col_reg}<17'b01101100100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101100100110000) && ({row_reg, col_reg}<17'b01101100101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101100101000000) && ({row_reg, col_reg}<17'b01101100101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101100101010000) && ({row_reg, col_reg}<17'b01101100101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101100101011000) && ({row_reg, col_reg}<17'b01101100110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101100110011000) && ({row_reg, col_reg}<17'b01101100110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101100110101000) && ({row_reg, col_reg}<17'b01101100110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101100110110000) && ({row_reg, col_reg}<17'b01101100111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101100111000000) && ({row_reg, col_reg}<17'b01101100111010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101100111010000) && ({row_reg, col_reg}<17'b01101100111011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01101100111011000) && ({row_reg, col_reg}<17'b01101101000011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101101000011000) && ({row_reg, col_reg}<17'b01101101000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101101000101000) && ({row_reg, col_reg}<17'b01101101000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101101000110000) && ({row_reg, col_reg}<17'b01101101001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101101001000000) && ({row_reg, col_reg}<17'b01101101001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101101001010000) && ({row_reg, col_reg}<17'b01101101001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101101001011000) && ({row_reg, col_reg}<17'b01101101010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101101010011000) && ({row_reg, col_reg}<17'b01101101010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101101010101000) && ({row_reg, col_reg}<17'b01101101010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101101010110000) && ({row_reg, col_reg}<17'b01101101011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101101011000000) && ({row_reg, col_reg}<17'b01101101011010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101101011010000) && ({row_reg, col_reg}<17'b01101101011011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01101101011011000) && ({row_reg, col_reg}<17'b01101101100011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101101100011000) && ({row_reg, col_reg}<17'b01101101100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101101100101000) && ({row_reg, col_reg}<17'b01101101100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101101100110000) && ({row_reg, col_reg}<17'b01101101101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101101101000000) && ({row_reg, col_reg}<17'b01101101101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101101101010000) && ({row_reg, col_reg}<17'b01101101101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101101101011000) && ({row_reg, col_reg}<17'b01101101110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101101110011000) && ({row_reg, col_reg}<17'b01101101110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101101110101000) && ({row_reg, col_reg}<17'b01101101110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101101110110000) && ({row_reg, col_reg}<17'b01101101111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101101111000000) && ({row_reg, col_reg}<17'b01101101111010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101101111010000) && ({row_reg, col_reg}<17'b01101101111011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01101101111011000) && ({row_reg, col_reg}<17'b01101110000011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101110000011000) && ({row_reg, col_reg}<17'b01101110000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101110000101000) && ({row_reg, col_reg}<17'b01101110000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101110000110000) && ({row_reg, col_reg}<17'b01101110001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101110001000000) && ({row_reg, col_reg}<17'b01101110001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101110001010000) && ({row_reg, col_reg}<17'b01101110001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101110001011000) && ({row_reg, col_reg}<17'b01101110010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101110010011000) && ({row_reg, col_reg}<17'b01101110010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101110010101000) && ({row_reg, col_reg}<17'b01101110010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101110010110000) && ({row_reg, col_reg}<17'b01101110011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101110011000000) && ({row_reg, col_reg}<17'b01101110011010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101110011010000) && ({row_reg, col_reg}<17'b01101110011011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01101110011011000) && ({row_reg, col_reg}<17'b01101110100011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101110100011000) && ({row_reg, col_reg}<17'b01101110100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101110100101000) && ({row_reg, col_reg}<17'b01101110100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101110100110000) && ({row_reg, col_reg}<17'b01101110101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101110101000000) && ({row_reg, col_reg}<17'b01101110101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101110101010000) && ({row_reg, col_reg}<17'b01101110101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101110101011000) && ({row_reg, col_reg}<17'b01101110110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101110110011000) && ({row_reg, col_reg}<17'b01101110110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101110110101000) && ({row_reg, col_reg}<17'b01101110110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101110110110000) && ({row_reg, col_reg}<17'b01101110111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101110111000000) && ({row_reg, col_reg}<17'b01101110111010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101110111010000) && ({row_reg, col_reg}<17'b01101110111011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01101110111011000) && ({row_reg, col_reg}<17'b01101111000011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101111000011000) && ({row_reg, col_reg}<17'b01101111000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101111000101000) && ({row_reg, col_reg}<17'b01101111000110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101111000110000) && ({row_reg, col_reg}<17'b01101111001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101111001000000) && ({row_reg, col_reg}<17'b01101111001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101111001010000) && ({row_reg, col_reg}<17'b01101111001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101111001011000) && ({row_reg, col_reg}<17'b01101111010011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101111010011000) && ({row_reg, col_reg}<17'b01101111010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101111010101000) && ({row_reg, col_reg}<17'b01101111010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101111010110000) && ({row_reg, col_reg}<17'b01101111011000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101111011000000) && ({row_reg, col_reg}<17'b01101111011010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101111011010000) && ({row_reg, col_reg}<17'b01101111011011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01101111011011000) && ({row_reg, col_reg}<17'b01101111100011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101111100011000) && ({row_reg, col_reg}<17'b01101111100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101111100101000) && ({row_reg, col_reg}<17'b01101111100110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101111100110000) && ({row_reg, col_reg}<17'b01101111101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101111101000000) && ({row_reg, col_reg}<17'b01101111101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101111101010000) && ({row_reg, col_reg}<17'b01101111101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101111101011000) && ({row_reg, col_reg}<17'b01101111110011000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101111110011000) && ({row_reg, col_reg}<17'b01101111110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101111110101000) && ({row_reg, col_reg}<17'b01101111110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101111110110000) && ({row_reg, col_reg}<17'b01101111111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01101111111000000) && ({row_reg, col_reg}<17'b01101111111010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01101111111010000) && ({row_reg, col_reg}<17'b01101111111011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01101111111011000) && ({row_reg, col_reg}<17'b01110000000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110000000001000) && ({row_reg, col_reg}<17'b01110000001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110000001000000) && ({row_reg, col_reg}<17'b01110000001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110000001010000) && ({row_reg, col_reg}<17'b01110000001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110000001110000) && ({row_reg, col_reg}<17'b01110000010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110000010000000) && ({row_reg, col_reg}<17'b01110000010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110000010101000) && ({row_reg, col_reg}<17'b01110000010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110000010110000) && ({row_reg, col_reg}<17'b01110000011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01110000011101000) && ({row_reg, col_reg}<17'b01110000100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110000100001000) && ({row_reg, col_reg}<17'b01110000101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110000101000000) && ({row_reg, col_reg}<17'b01110000101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110000101010000) && ({row_reg, col_reg}<17'b01110000101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110000101110000) && ({row_reg, col_reg}<17'b01110000110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110000110000000) && ({row_reg, col_reg}<17'b01110000110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110000110101000) && ({row_reg, col_reg}<17'b01110000110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110000110110000) && ({row_reg, col_reg}<17'b01110000111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01110000111101000) && ({row_reg, col_reg}<17'b01110001000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110001000001000) && ({row_reg, col_reg}<17'b01110001001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110001001000000) && ({row_reg, col_reg}<17'b01110001001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110001001010000) && ({row_reg, col_reg}<17'b01110001001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110001001110000) && ({row_reg, col_reg}<17'b01110001010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110001010000000) && ({row_reg, col_reg}<17'b01110001010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110001010101000) && ({row_reg, col_reg}<17'b01110001010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110001010110000) && ({row_reg, col_reg}<17'b01110001011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01110001011101000) && ({row_reg, col_reg}<17'b01110001100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110001100001000) && ({row_reg, col_reg}<17'b01110001101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110001101000000) && ({row_reg, col_reg}<17'b01110001101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110001101010000) && ({row_reg, col_reg}<17'b01110001101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110001101110000) && ({row_reg, col_reg}<17'b01110001110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110001110000000) && ({row_reg, col_reg}<17'b01110001110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110001110101000) && ({row_reg, col_reg}<17'b01110001110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110001110110000) && ({row_reg, col_reg}<17'b01110001111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01110001111101000) && ({row_reg, col_reg}<17'b01110010000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110010000001000) && ({row_reg, col_reg}<17'b01110010001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110010001000000) && ({row_reg, col_reg}<17'b01110010001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110010001010000) && ({row_reg, col_reg}<17'b01110010001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110010001110000) && ({row_reg, col_reg}<17'b01110010010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110010010000000) && ({row_reg, col_reg}<17'b01110010010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110010010101000) && ({row_reg, col_reg}<17'b01110010010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110010010110000) && ({row_reg, col_reg}<17'b01110010011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01110010011101000) && ({row_reg, col_reg}<17'b01110010100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110010100001000) && ({row_reg, col_reg}<17'b01110010101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110010101000000) && ({row_reg, col_reg}<17'b01110010101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110010101010000) && ({row_reg, col_reg}<17'b01110010101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110010101110000) && ({row_reg, col_reg}<17'b01110010110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110010110000000) && ({row_reg, col_reg}<17'b01110010110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110010110101000) && ({row_reg, col_reg}<17'b01110010110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110010110110000) && ({row_reg, col_reg}<17'b01110010111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01110010111101000) && ({row_reg, col_reg}<17'b01110011000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110011000001000) && ({row_reg, col_reg}<17'b01110011001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110011001000000) && ({row_reg, col_reg}<17'b01110011001010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110011001010000) && ({row_reg, col_reg}<17'b01110011001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110011001110000) && ({row_reg, col_reg}<17'b01110011010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110011010000000) && ({row_reg, col_reg}<17'b01110011010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110011010101000) && ({row_reg, col_reg}<17'b01110011010110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110011010110000) && ({row_reg, col_reg}<17'b01110011011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01110011011101000) && ({row_reg, col_reg}<17'b01110011100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110011100001000) && ({row_reg, col_reg}<17'b01110011101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110011101000000) && ({row_reg, col_reg}<17'b01110011101010000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110011101010000) && ({row_reg, col_reg}<17'b01110011101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110011101110000) && ({row_reg, col_reg}<17'b01110011110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110011110000000) && ({row_reg, col_reg}<17'b01110011110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110011110101000) && ({row_reg, col_reg}<17'b01110011110110000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110011110110000) && ({row_reg, col_reg}<17'b01110011111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01110011111101000) && ({row_reg, col_reg}<17'b01110100000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110100000001000) && ({row_reg, col_reg}<17'b01110100000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110100000010000) && ({row_reg, col_reg}<17'b01110100001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110100001101000) && ({row_reg, col_reg}<17'b01110100001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110100001110000) && ({row_reg, col_reg}<17'b01110100010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110100010000000) && ({row_reg, col_reg}<17'b01110100010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110100010001000) && ({row_reg, col_reg}<17'b01110100011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110100011100000) && ({row_reg, col_reg}<17'b01110100011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01110100011101000) && ({row_reg, col_reg}<17'b01110100100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110100100001000) && ({row_reg, col_reg}<17'b01110100100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110100100010000) && ({row_reg, col_reg}<17'b01110100101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110100101101000) && ({row_reg, col_reg}<17'b01110100101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110100101110000) && ({row_reg, col_reg}<17'b01110100110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110100110000000) && ({row_reg, col_reg}<17'b01110100110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110100110001000) && ({row_reg, col_reg}<17'b01110100111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110100111100000) && ({row_reg, col_reg}<17'b01110100111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01110100111101000) && ({row_reg, col_reg}<17'b01110101000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110101000001000) && ({row_reg, col_reg}<17'b01110101000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110101000010000) && ({row_reg, col_reg}<17'b01110101001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110101001101000) && ({row_reg, col_reg}<17'b01110101001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110101001110000) && ({row_reg, col_reg}<17'b01110101010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110101010000000) && ({row_reg, col_reg}<17'b01110101010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110101010001000) && ({row_reg, col_reg}<17'b01110101011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110101011100000) && ({row_reg, col_reg}<17'b01110101011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01110101011101000) && ({row_reg, col_reg}<17'b01110101100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110101100001000) && ({row_reg, col_reg}<17'b01110101100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110101100010000) && ({row_reg, col_reg}<17'b01110101101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110101101101000) && ({row_reg, col_reg}<17'b01110101101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110101101110000) && ({row_reg, col_reg}<17'b01110101110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110101110000000) && ({row_reg, col_reg}<17'b01110101110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110101110001000) && ({row_reg, col_reg}<17'b01110101111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110101111100000) && ({row_reg, col_reg}<17'b01110101111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01110101111101000) && ({row_reg, col_reg}<17'b01110110000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110110000001000) && ({row_reg, col_reg}<17'b01110110000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110110000010000) && ({row_reg, col_reg}<17'b01110110001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110110001101000) && ({row_reg, col_reg}<17'b01110110001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110110001110000) && ({row_reg, col_reg}<17'b01110110010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110110010000000) && ({row_reg, col_reg}<17'b01110110010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110110010001000) && ({row_reg, col_reg}<17'b01110110011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110110011100000) && ({row_reg, col_reg}<17'b01110110011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01110110011101000) && ({row_reg, col_reg}<17'b01110110100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110110100001000) && ({row_reg, col_reg}<17'b01110110100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110110100010000) && ({row_reg, col_reg}<17'b01110110101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110110101101000) && ({row_reg, col_reg}<17'b01110110101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110110101110000) && ({row_reg, col_reg}<17'b01110110110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110110110000000) && ({row_reg, col_reg}<17'b01110110110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110110110001000) && ({row_reg, col_reg}<17'b01110110111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110110111100000) && ({row_reg, col_reg}<17'b01110110111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01110110111101000) && ({row_reg, col_reg}<17'b01110111000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110111000001000) && ({row_reg, col_reg}<17'b01110111000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110111000010000) && ({row_reg, col_reg}<17'b01110111001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110111001101000) && ({row_reg, col_reg}<17'b01110111001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110111001110000) && ({row_reg, col_reg}<17'b01110111010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110111010000000) && ({row_reg, col_reg}<17'b01110111010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110111010001000) && ({row_reg, col_reg}<17'b01110111011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110111011100000) && ({row_reg, col_reg}<17'b01110111011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01110111011101000) && ({row_reg, col_reg}<17'b01110111100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110111100001000) && ({row_reg, col_reg}<17'b01110111100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110111100010000) && ({row_reg, col_reg}<17'b01110111101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110111101101000) && ({row_reg, col_reg}<17'b01110111101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110111101110000) && ({row_reg, col_reg}<17'b01110111110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110111110000000) && ({row_reg, col_reg}<17'b01110111110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01110111110001000) && ({row_reg, col_reg}<17'b01110111111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01110111111100000) && ({row_reg, col_reg}<17'b01110111111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01110111111101000) && ({row_reg, col_reg}<17'b01111000000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111000000001000) && ({row_reg, col_reg}<17'b01111000000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01111000000010000) && ({row_reg, col_reg}<17'b01111000001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111000001101000) && ({row_reg, col_reg}<17'b01111000001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01111000001110000) && ({row_reg, col_reg}<17'b01111000010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111000010000000) && ({row_reg, col_reg}<17'b01111000010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01111000010001000) && ({row_reg, col_reg}<17'b01111000011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111000011100000) && ({row_reg, col_reg}<17'b01111000011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01111000011101000) && ({row_reg, col_reg}<17'b01111000100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111000100001000) && ({row_reg, col_reg}<17'b01111000100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01111000100010000) && ({row_reg, col_reg}<17'b01111000101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111000101101000) && ({row_reg, col_reg}<17'b01111000101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01111000101110000) && ({row_reg, col_reg}<17'b01111000110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111000110000000) && ({row_reg, col_reg}<17'b01111000110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01111000110001000) && ({row_reg, col_reg}<17'b01111000111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111000111100000) && ({row_reg, col_reg}<17'b01111000111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01111000111101000) && ({row_reg, col_reg}<17'b01111001000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111001000001000) && ({row_reg, col_reg}<17'b01111001000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01111001000010000) && ({row_reg, col_reg}<17'b01111001001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111001001101000) && ({row_reg, col_reg}<17'b01111001001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01111001001110000) && ({row_reg, col_reg}<17'b01111001010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111001010000000) && ({row_reg, col_reg}<17'b01111001010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01111001010001000) && ({row_reg, col_reg}<17'b01111001011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111001011100000) && ({row_reg, col_reg}<17'b01111001011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01111001011101000) && ({row_reg, col_reg}<17'b01111001100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111001100001000) && ({row_reg, col_reg}<17'b01111001100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01111001100010000) && ({row_reg, col_reg}<17'b01111001101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111001101101000) && ({row_reg, col_reg}<17'b01111001101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01111001101110000) && ({row_reg, col_reg}<17'b01111001110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111001110000000) && ({row_reg, col_reg}<17'b01111001110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01111001110001000) && ({row_reg, col_reg}<17'b01111001111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111001111100000) && ({row_reg, col_reg}<17'b01111001111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01111001111101000) && ({row_reg, col_reg}<17'b01111010000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111010000001000) && ({row_reg, col_reg}<17'b01111010000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01111010000010000) && ({row_reg, col_reg}<17'b01111010001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111010001101000) && ({row_reg, col_reg}<17'b01111010001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01111010001110000) && ({row_reg, col_reg}<17'b01111010010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111010010000000) && ({row_reg, col_reg}<17'b01111010010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01111010010001000) && ({row_reg, col_reg}<17'b01111010011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111010011100000) && ({row_reg, col_reg}<17'b01111010011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01111010011101000) && ({row_reg, col_reg}<17'b01111010100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111010100001000) && ({row_reg, col_reg}<17'b01111010100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01111010100010000) && ({row_reg, col_reg}<17'b01111010101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111010101101000) && ({row_reg, col_reg}<17'b01111010101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01111010101110000) && ({row_reg, col_reg}<17'b01111010110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111010110000000) && ({row_reg, col_reg}<17'b01111010110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01111010110001000) && ({row_reg, col_reg}<17'b01111010111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111010111100000) && ({row_reg, col_reg}<17'b01111010111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01111010111101000) && ({row_reg, col_reg}<17'b01111011000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111011000001000) && ({row_reg, col_reg}<17'b01111011000010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01111011000010000) && ({row_reg, col_reg}<17'b01111011001101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111011001101000) && ({row_reg, col_reg}<17'b01111011001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01111011001110000) && ({row_reg, col_reg}<17'b01111011010000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111011010000000) && ({row_reg, col_reg}<17'b01111011010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01111011010001000) && ({row_reg, col_reg}<17'b01111011011100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111011011100000) && ({row_reg, col_reg}<17'b01111011011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01111011011101000) && ({row_reg, col_reg}<17'b01111011100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111011100001000) && ({row_reg, col_reg}<17'b01111011100010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01111011100010000) && ({row_reg, col_reg}<17'b01111011101101000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111011101101000) && ({row_reg, col_reg}<17'b01111011101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01111011101110000) && ({row_reg, col_reg}<17'b01111011110000000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111011110000000) && ({row_reg, col_reg}<17'b01111011110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=17'b01111011110001000) && ({row_reg, col_reg}<17'b01111011111100000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111011111100000) && ({row_reg, col_reg}<17'b01111011111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01111011111101000) && ({row_reg, col_reg}<17'b01111100000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111100000001000) && ({row_reg, col_reg}<17'b01111100011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01111100011101000) && ({row_reg, col_reg}<17'b01111100100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111100100001000) && ({row_reg, col_reg}<17'b01111100111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01111100111101000) && ({row_reg, col_reg}<17'b01111101000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111101000001000) && ({row_reg, col_reg}<17'b01111101011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01111101011101000) && ({row_reg, col_reg}<17'b01111101100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111101100001000) && ({row_reg, col_reg}<17'b01111101111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01111101111101000) && ({row_reg, col_reg}<17'b01111110000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111110000001000) && ({row_reg, col_reg}<17'b01111110011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01111110011101000) && ({row_reg, col_reg}<17'b01111110100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111110100001000) && ({row_reg, col_reg}<17'b01111110111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01111110111101000) && ({row_reg, col_reg}<17'b01111111000001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111111000001000) && ({row_reg, col_reg}<17'b01111111011101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=17'b01111111011101000) && ({row_reg, col_reg}<17'b01111111100001000)) color_data = 12'b100000001000;
		if(({row_reg, col_reg}>=17'b01111111100001000) && ({row_reg, col_reg}<17'b01111111111101000)) color_data = 12'b000000000000;









		if(({row_reg, col_reg}>=17'b01111111111101000) && ({row_reg, col_reg}<=17'b10000011111101111)) color_data = 12'b100000001000;
	end
endmodule