module calculate_move_pos(
    input wire [9:0] xpos,
    input wire [9:0] ypos,
    input wire [3:0] direction,
    output reg [7:0] row,
    output reg [7:0] col,
    input wire [3:0] pm_direction,
    input [3:0] current_direction
);
    localparam sf = 10'd60;
    localparam total_cols=10'd8;
    localparam s_y=10'd34;
    localparam s_x=10'd150;
    localparam p_w=10'd15;
    localparam p_h=10'd15;

    reg [8:0] l_row;
    reg [8:0] l_col;


    always@* begin 
        if (direction == 4'b0000) begin 
            l_row = ypos / sf;
            l_col = xpos / sf;
        end
        // left
        else if (direction == 4'b1000) begin 
            l_row=(ypos-s_y)/sf;
            l_col=(xpos-s_x + p_w )/sf;
        end
        // right
        else if (current_direction[1]) begin
            l_row=(ypos-s_y)/sf;
            l_col=(xpos-s_x - p_w)/sf;
        end
        // up 
        else if (current_direction[2]) begin
            l_row=(ypos-s_y + p_h)/sf;
            l_col=(xpos-s_x)/sf;
        end
        // down
        else if (current_direction[1]) begin
            l_row=(ypos-s_y - p_h)/sf;
            l_col=(xpos-s_x)/sf;
        end
    end

    always@ *begin
        row = l_row;
        col = l_col;
    end

endmodule
