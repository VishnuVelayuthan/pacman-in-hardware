module maze_view
(
    input wire clk,
    input wire [2:0] p_row, // top left 0,0
    input wire [2:0] p_col,
    output reg [5:0] color_data
)

	(* rom_style = "block" *)

    localparam sf = 20;
    localparam total_cols=8;
	//signal declaration
	reg [2:0] i_row;
	reg [2:0] i_col;

    reg [63:0] bin_val={0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,1,0,0,1,0,0,0,0,1,1,1,1,1,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0};
    
    always@* begin

        i_row = p_row / sf;
        i_col = p_col / sf;

        if (bin_val[i_row * total_cols + i_col]==1)
            color_data = 12'000000000000;
        else
            color_data = 12'100000001000; 

    end

endmodule