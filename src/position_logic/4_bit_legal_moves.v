module is_legal_4_moves (
    input wire clk,
    input wire [9:0] xpos, // top left 0,0
    input wire [9:0] ypos,
    input wire [3:0] current_direction,
    output reg [3:0] legal_moves
);
//first bit is left
//second right
//third up
//fourth down
//cannot do 2d packed array
    reg[0:255] legal_grid={4'b0000, 4'b0001, 4'b0001, 4'b0001, 4'b0001, 4'b0000, 4'b0000, 4'b0000, 4'b0100, 4'b0101, 4'b1100, 4'b1100, 4'b1001, 4'b1000, 4'b0000, 4'b0000, 4'b0100, 4'b0011, 4'b1011, 4'b0111, 4'b0011, 4'b1001, 4'b0001, 4'b0000, 4'b0100, 4'b0111, 4'b1100, 4'b1100, 4'b1110, 4'b1100, 4'b1001, 4'b1000, 4'b0100, 4'b0011, 4'b1010, 4'b0010, 4'b0010, 4'b0110, 4'b0011, 4'b1000, 4'b0100, 4'b0011, 4'b1001, 4'b0001, 4'b0001, 4'b0101, 4'b0011, 4'b1000, 4'b0100, 4'b0110, 4'b1100, 4'b1100, 4'b1100, 4'b1100, 4'b1010, 4'b1000, 4'b0000, 4'b0010, 4'b0010, 4'b0010, 4'b0010, 4'b0010, 4'b0010, 4'b0000};

    localparam sf = 8'd60;
    localparam total_cols=8'd8;

    //starting indices to subtract
    localparam s_x=8'd150;
    localparam s_y=8'd34;

    // subject to change 
    localparam p_w = 8'd20;
    localparam p_h = 8'd20;

   // output reg [3:0] legal_moves;

    //legal rows and columns that we will find in legal_grid
    wire [7:0] l_row;
    wire [7:0] l_col;

    reg[3:0] result;
   
    reg leg_l;
    reg leg_r;
    reg leg_u;
    reg leg_d;

    calculate_move_pos calc_ind(
        .clk(clk),
        .xpos(xpos), .ypos(ypos), .direction(current_direction),
        .row(l_row), .col(l_col)
    );
   
    //reg leg_l;
    always@(posedge clk) begin
        //lcol and lrow should be between 0 and 8, find in legalgrid
        //result=legal_grid[l_row*total_cols +l_col*4];
        leg_l<=legal_grid[l_row*total_cols*4 +l_col*4];
        leg_r<=legal_grid[l_row*total_cols*4 +l_col*4+1];
        leg_u<=legal_grid[l_row*total_cols*4 +l_col*4+2];
        leg_d<=legal_grid[l_row*total_cols*4 +l_col*4+3];
        
        legal_moves <= {leg_d, leg_u, leg_r, leg_l};
    end
    
    // Displaying results
    initial begin
        $display("l_col = %d", l_col);
        $display("l_row = %d", l_row);
        $display("result = %b", result);
    end
    
endmodule
