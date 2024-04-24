module legal_4(
    input wire clk,
    input wire [9:0] xpos, // top left 0,0
    input wire [9:0] ypos,
    input l,r,u,d,
    output reg leg_l,
    output reg leg_r,
    output reg leg_u,
    output reg leg_d
);
//first bit is left
//second right
//third up
//fourth down
//cannot do 2d packed array
    reg[0:255] legal_grid={4'b0000, 4'b0001, 4'b0001, 4'b0001, 4'b0001, 4'b0000, 4'b0000, 4'b0000, 4'b0100, 4'b0101, 4'b1100, 4'b1100, 4'b1001, 4'b1000, 4'b0000, 4'b0000, 4'b0100, 4'b0011, 4'b1011, 4'b0111, 4'b0011, 4'b1001, 4'b0001, 4'b0000, 4'b0100, 4'b0111, 4'b1100, 4'b1100, 4'b1110, 4'b1100, 4'b1001, 4'b1000, 4'b0100, 4'b0011, 4'b1010, 4'b0010, 4'b0010, 4'b0110, 4'b0011, 4'b1000, 4'b0100, 4'b0011, 4'b1001, 4'b0001, 4'b0001, 4'b0101, 4'b0011, 4'b1000, 4'b0100, 4'b0110, 4'b1100, 4'b1100, 4'b1100, 4'b1100, 4'b1010, 4'b1000, 4'b0000, 4'b0010, 4'b0010, 4'b0010, 4'b0010, 4'b0010, 4'b0010, 4'b0000};
    localparam sf = 10'd60;
    localparam total_cols=10'd8;
    //starting indices to subtract
    localparam s_x=10'd150;
    localparam s_y=10'd34;
    //legal rows and columns that we will find in legal_grid
    reg[3:0] l_row;
    reg[3:0] l_col;

    reg[3:0] result;
   
   
    //reg leg_l;
    always@* begin
        if (pm_direct == Left) begin
            l_row=(ypos-s_y)/sf;
            l_col=(xpos-s_x + w )/sf;
        end
        esle if 
        //lcol and lrow should be between 0 and 8, find in legalgrid
        //result=legal_grid[l_row*total_cols +l_col*4];
        leg_l=legal_grid[l_row*total_cols*4 +l_col*4];
        leg_r=legal_grid[l_row*total_cols*4 +l_col*4+1];
        leg_u=legal_grid[l_row*total_cols*4 +l_col*4+2];
        leg_d=legal_grid[l_row*total_cols*4 +l_col*4+3];
        
    end
    
    // Displaying results
        initial begin
        $display("l_col = %d", l_col);
        $display("l_row = %d", l_row);
        $display("result = %b", result);
    end
    


    
endmodule