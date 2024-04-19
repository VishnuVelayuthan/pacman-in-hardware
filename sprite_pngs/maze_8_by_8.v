module maze_view
(
    input wire clk,
    input wire [9:0] p_row, // top left 0,0
    input wire [9:0] p_col,
    output reg [11:0] color_data
);

	(* rom_style = "block" *)

    localparam sf = 10'd20;
    localparam total_cols=10'd8;
	//signal declaration
	reg [9:0] i_row;
	reg [9:0] i_col;

    //reg [63:0] bin_val={0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,1,0,0,1,0,0,0,0,1,1,1,1,1,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0};
    reg [0:63] bin_val = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0,  1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0,  1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0,  1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0,  1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0,  1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0,  1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0,  1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};
    always@* begin

        i_row = p_row / sf;
        i_col = p_col / sf;
        if(i_row>10'd7)
            i_row=10'd7;
        if(i_col>10'd7)
            i_col=10'd7;
        
        if (bin_val[i_row * total_cols + i_col])
            color_data = 12'b000000000000;
        else
            color_data = 12'b100010101111; 

    end

endmodule