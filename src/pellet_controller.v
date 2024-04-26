module pellet_controller (
    input wire [9:0] pm_xpos,
    input wire [9:0] pm_ypos,
    input wire [3:0] pm_direction,
    output reg [0:63] pellet_arr,
    output reg [7:0] score
);
    reg [0:63] i_pellet_arr; 
    wire [7:0] i_row;
    wire [7:0] i_col;
    reg [7:0] i_score = 7'b0000000;

    localparam [4:0] total_cols = 8;

    initial 
        i_pellet_arr = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0,  1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0,  1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0,  1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0,  1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0,  1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0,  1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0,  1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};

    calculate_move_pos calc_ind(
            .clk(clk),
        .xpos(pm_xpos), .ypos(pm_ypos), .direction(pm_direction),
        .row(i_row), .col(i_col)
    );
 
    always@* begin 
        if (i_pellet_arr[i_row * total_cols + i_col] == 1) begin 
            i_pellet_arr[i_row * total_cols + i_col] = 0;
            i_score = i_score + 1; 
        end
        score <= i_score;
        pellet_arr <= i_pellet_arr;
    end    

endmodule
