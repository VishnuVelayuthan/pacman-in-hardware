`timescale 1ns / 1ps

module block_controller(
	input clk, //this clock must be a slow enough clock to view the changing positions of the objects
	input mastClk,
	input bright,
	input rst,
	input up, input down, input left, input right,
	input [9:0] hCount, vCount,
	output reg [11:0] rgb,
	output reg [11:0] background
   );
	wire block_fill;
	reg moveleft;
	wire [11:0] pacmanColor;
	wire [11:0] mazeColor;
	//these two values dictate the center of the block, incrementing and decrementing them leads the block to move in certain directions
	reg [9:0] xpos, ypos;
	
	parameter RED   = 12'b1111_0000_0000;
	wire maze_fill;
	
	pacman_resized_rom dd(.clk(mastClk),.row(moveleft ? vCount-ypos : vCount-ypos),.col(moveleft ? hCount-xpos:30-hCount+xpos),.color_data(pacmanColor));
	//should be pacman_resized_rom dd(.clk(mastClk),.row(moveleft ? vCount-ypos : vCount-ypos),.col(moveleft ? 30-hcount+xpos : hcount-xpos),.color_data(pacmanColor));
	maze_with_color_rom dd_maze(.clk(mastClk),.row(vCount),.col(hCount),.color_data(mazeColor));
	/*when outputting the rgb value in an always block like this, make sure to include the if(~bright) statement, as this ensures the monitor 
	will output some data to every pixel and not just the images you are trying to display*/
	always@ (*) begin
    	if(~bright )	//force black if not inside the display area
			rgb = 12'b0000_0000_0000;
			//edge case: if black, fill rgb with background.
			//if color is inbetween yellow and black (first three bits are not 111
			//then also paint background
		else if (block_fill && pacmanColor!=12'b000000000000&&pacmanColor[11:9]==3'b111) 
			rgb = pacmanColor; 
		else if	(maze_fill)
			rgb=mazeColor;
		else
		  rgb=background;
	end
		//the +-5 for the positions give the dimension of the block (i.e. it will be 10x10 pixels)
		//pacman fill is 30 pixels
	assign block_fill=vCount>=(ypos) && vCount<=(ypos+29) && hCount>=(xpos+1) && hCount<=(xpos+30);
	//mazefill is 264 height by 240 width
	assign maze_fill=(hCount>=200 && hCount<=440 &&vCount>=100 && vCount<=364);
	
	always@(posedge clk, posedge rst) 
	begin
		if(rst)
		begin 
			//rough values for center of screen
			moveleft<=0;
			xpos<=450;
			ypos<=250;
		end
		else if (clk) begin
		
		/* Note that the top left of the screen does NOT correlate to vCount=0 and hCount=0. The display_controller.v file has the 
			synchronizing pulses for both the horizontal sync and the vertical sync begin at vcount=0 and hcount=0. Recall that after 
			the length of the pulse, there is also a short period called the back porch before the display area begins. So effectively, 
			the top left corner corresponds to (hcount,vcount)~(144,35). Which means with a 640x480 resolution, the bottom right corner 
			corresponds to ~(783,515).  
		*/
			if(right) begin
			    moveleft<=0;
				xpos<=xpos+2; //change the amount you increment to make the speed faster 
				if(xpos==800) //these are rough values to attempt looping around, you can fine-tune them to make it more accurate- refer to the block comment above
					xpos<=150;
			end
			else if(left) begin
			    moveleft<=1;
				xpos<=xpos-2;
				if(xpos==150)
					xpos<=800;
			end
			else if(up) begin
				ypos<=ypos-2;
				if(ypos==34)
					ypos<=514;
			end
			else if(down) begin
				ypos<=ypos+2;
				if(ypos==514)
					ypos<=34;
			end
		end
	end
	
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
