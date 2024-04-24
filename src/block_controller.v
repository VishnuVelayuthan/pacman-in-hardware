`timescale 1ns / 1ps

module block_controller(
	input clk, //this clock must be a slow enough clock to view the changing positions of the objects
	input mastClk,
	input bright,
	input rst,
	input up, input down, input left, input right,
	input [9:0] hCount, vCount,
	output reg [11:0] rgb,
	output reg [11:0] background,	
   );

	wire block_fill;
	wire maze_fill;
	wire pellet_fill;

	//legal left and right moves
   

	reg moveleft;
	wire [11:0] maze_color;
	//these two values dictate the center of the block, incrementing and decrementing them leads the block to move in certain directions
	reg [9:0] pm_xpos, pm_ypos;
    reg [3:0] pm_direction;
	wire [11:0] pm_color;
	wire pm_fill;

	wire leg_l;
	wire leg_r;
	wire leg_u;
	wire leg_d;

	parameter RED   = 12'b1111_0000_0000;
	

	localparam starting_hC = 150;	
	localparam starting_vC = 34;

	localparam ending_hC = 630;
	localparam ending_vC = 514;

	//maze_with_color_rom dd_maze(.clk(mastClk),.row(vCount),.col(hCount),.color_data(mazeColor));
	
	maze_view dd_maze_view(.p_row(vCount - starting_vC), .p_col(hCount - starting_hC), .color_data(maze_color));

	//pass in xpos and ypos to legal checker
	//legal checker asks for up, down, left and right, and checks 4bit binary legal moves
    
    pacman_controller pm_cont(
        .clk(clk), .rst(rst), 
        .l_button(left), .r_button(right), .u_button(up), .d_button(down),
        .pm_xpos(pm_xpos), .pm_ypos(pm_ypos), .pm_direction(pm_direction)
    );

    pacman_view pm_view(
        .clk(clk), .rst(rst),
        .vC(vCount), .hC(hCount), 
        .pm_xpos(pm_xpos), .pm_ypos(pm_ypos), .pm_direction(pm_direction),
        .pac_fill(pm_fill), .color_data(pm_color)
    );
    
	always@ (*) begin
    	if(~bright )	//force black if not inside the display area
			rgb = 12'b0000_0000_0000;
			//edge case: if black, fill rgb with background.
			//if color is inbetween yellow and black (first three bits are not 111
			//then also paint background
		else if (pm_fill && pm_color !=12'b000000000000 && pm_color[11:9]==3'b111) 
			rgb = pm_color; 
		else if	(maze_fill)
			rgb=maze_color;
		else
		  rgb=background;
	end

		//pacman fill is 30 pixels
    
	//mazefill is 264 height by 240 width
	assign maze_fill = (hCount>=starting_hC && hCount<=ending_hC &&vCount>=starting_vC && vCount<=ending_vC);
	
	//the background color reflects the most recent button press
	always@(posedge clk, posedge rst) begin
		if(rst)
			background <= 12'b1111_1111_1111;
		else 
			if(right)
				background <= 12'b1111_1111_0000;
			else if(left)
				background <= 12'b0000_1111_1111;
			else if(down)
				background <= 12'b0000_1111_0000;
			else if(up)
				background <= 12'b0000_0000_1111;
	end

	
	
endmodule

