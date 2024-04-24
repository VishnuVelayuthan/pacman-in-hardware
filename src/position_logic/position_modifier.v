module position_modifier (
    input clk, 
    input rst, 
    input wire [9:0] xpos,
    input wire [9:0] ypos,
    input wire [3:0] legal_moves,
    input wire [3:0] curr_direction,
    input wire [7:0] speed,
    output reg [9:0] xpos_mod,
    output reg [9:0] ypos_mod
);
    
    always@(posedge clk, posedge rst) begin 
        // left 
        if (curr_direction[0] && legal_moves[0])
            xpos_mod <= xpos - speed;
        // right
        else if (curr_direction[1] && legal_moves[1])
            xpos_mod <= xpos + speed;
        // up 
        else if (curr_direction[2] && legal_moves[2])
            ypos_mod <= ypos - speed;
        // down 
        else if (curr_direction[3] && legal_moves[3])
            ypos_mod <= ypos + speed;
    end

endmodule

