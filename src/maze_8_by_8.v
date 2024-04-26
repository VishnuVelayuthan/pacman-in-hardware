module maze_view
(
    input wire clk,
    input wire [9:0] p_row, // top left 0,0
    input wire [9:0] p_col,
    output reg [11:0] color_data,
    output reg fill
);

	(* rom_style = "block" *)

    localparam sf = 10'd60;
    localparam total_cols=10'd8;
    
    localparam sx = 10'd200; // from top of display
    localparam sy = 10'd50 // from top of display

    localparam ex = 10'd500; // from top of display
    localparam ey = 10'd350; // from top of display

	//signal declaration
	wire [7:0] i_row;
	wire [7:0] i_col;

    reg maze_fill;
	
	localparam [3:0] no_direction = 4'b0000;

    calculate_move_pos calc_ind(
        .clk(clk), .direction(no_direction),
        .xpos(p_col), .ypos(p_row), 
        .row(i_row), .col(i_col)
    );

    //reg [63:0] bin_val={0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,1,0,0,1,0,0,0,0,1,1,1,1,1,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0};
    reg [0:63] bin_val = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0,  1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0,  1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0,  1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0,  1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0,  1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0,  1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0,  1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};
    always@ (posedge clk) begin

        maze_fill = ( p_row > sy && p_row < ey && p_col > sx && p_col < ex );
        
        if (bin_val[i_row * total_cols + i_col]) 
            color_data = 12'b000000000000;
        else
            color_data = 12'b100010101111; 
       
    end

endmodule
