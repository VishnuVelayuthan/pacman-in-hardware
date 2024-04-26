module calculate_move_pos(
    input clk, 
    input wire [9:0] xpos,
    input wire [9:0] ypos,
    
    output reg [7:0] row,
    output reg [7:0] col,
    input wire [3:0] direction
);
    localparam sf = 8'd60;
    localparam total_cols=8'd8;
    localparam s_y=8'd34;
    localparam s_x=8'd150;
    localparam p_w=8'd15;
    localparam p_h=8'd15;

//    reg [7:0] l_row;
//    reg [7:0] l_col;


    always@ (posedge clk) begin 
        // left
        if (direction[0]) begin 
            row <=(ypos-s_y)/sf;
            col <=(xpos-s_x + p_w )/sf;
        end
        // right
        else if (direction[1]) begin
            row <=(ypos-s_y)/sf;
            col <=(xpos-s_x - p_w)/sf;
        end
        // up 
        else if (direction[2]) begin
            row <=(ypos-s_y + p_h)/sf;
            col <=(xpos-s_x)/sf;
        end
        // down
        else if (direction[3]) begin
            row <=(ypos-s_y - p_h)/sf;
            col <=(xpos-s_x)/sf;
        end
        else begin 
            row <= ypos / sf;
            col <= xpos / sf;
        end
    end

endmodule
