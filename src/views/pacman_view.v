
module pacman_view (
    input clk, input rst,
    input wire vC, input wire hC,
    input wire [9:0] pm_xpos,
    input wire [9:0] pm_ypos,
    input wire [3:0] pm_direction,
    output reg pac_fill,
    output reg [11:0] color_data
);
    
    reg internal_pac_fill;
    wire [11:0] internal_color_data;

    localparam pm_height = 30;
    localparam pm_width = 30;
    
	pacman_12_bit_rom dd(.clk(mastClk),
        .row(pm_direction[0] ? vC-pm_ypos : vC-pm_ypos), // figure out orientation with relation of direction 
        .col(pm_direction[0] ? hC-pm_xpos: hC+pm_xpos),
        .color_data(internal_color_data));
    
    always @ (posedge clk) begin 
        internal_pac_fill <= (vC > (pm_ypos)) && (vC < (pm_ypos + pm_height)) 
            && (hC > (pm_xpos+1)) && (hC < (pm_xpos+ pm_width));

    end
    always@* begin
        pac_fill = internal_pac_fill;
        color_data = internal_color_data;
    end 

endmodule
