module input_controller (
    input clk,
    input left_button,
    input right_button,
    input up_button,
    input down_button,
    input wire [3:0] legal_moves,
    output reg [3:0] curr_direction
); 
    reg [3:0] internal_curr_direction;
    
    always@ (posedge clk) begin 
        if (left_button && legal_moves[0]) 
            internal_curr_direction <= 4'b0001;
        else if (right_button && legal_moves[1])
            internal_curr_direction <= 4'b0010;
        else if (up_button && legal_moves[2])
            internal_curr_direction <= 4'b0100;
        else if (down_button && legal_moves[3])
            internal_curr_direction <= 4'b1000;             
    end 

    initial begin 
        internal_curr_direction = 4'b0001;
    end

    always@ (posedge clk) begin
        curr_direction <= internal_curr_direction;
     end 

endmodule 

