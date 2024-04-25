
// class for modifying the position of the pacman and his direction  
module pacman_controller (
    input clk,
    input rst,
    input l_button, input r_button, 
    input u_button, input d_button,
    output reg [9:0] pm_xpos, // pixel position 
    output reg [9:0] pm_ypos, // pixel position 
    output reg [3:0] pm_direction
);

    reg [3:0] legal_moves;
    reg [3:0] direction;

    reg [9:0] xpos;
    reg [9:0] ypos;

    reg [9:0] xpos_m;
    reg [9:0] ypos_m;

    localparam [7:0] p_speed = 10'd2;
    localparam [9:0] ini_xpos = 360;
    localparam [9:0] ini_ypos = 154;

    input_controller inp_c(
        .left_button(l_button), .right_button(r_button),
        .up_button(u_button), .down_button(d_button),
        .legal_moves(legal_moves), .curr_direction(direction)
    );

    position_modifier pos_m(
        .clk(clk), .rst(rst), 
        .legal_moves(legal_moves), .curr_direction(direction),
        .speed(p_speed),
        .xpos(xpos), .ypos(ypos),
        .xpos_mod(xpos_m), .ypos_mod(ypos_m)
    ); 

    initial begin 
        xpos <= ini_xpos;
        ypos <= ini_ypos;
    end

    always @ (posedge clk, posedge rst) begin 
        if (rst) begin 
            xpos <= ini_xpos;
            ypos <= ini_ypos;
        end

        xpos <= xpos_m;
        ypos <= ypos_m;
    end
    always@* begin
         pm_xpos = xpos;
        pm_ypos = ypos;
        pm_direction = direction;
    end
    
endmodule 
