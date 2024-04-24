module input_controller (
    input left_button,
    input right_button,
    input up_button,
    input down_button,
    input leg_l,
    input leg_r,
    input leg_u,
    input leg_d,
    output reg [3:0] curr_direction
); 
    reg [3:0] internal_curr_direction;
    
    always@* begin 
        if (left_button && leg_l) 
            internal_curr_direction = 4'b1000;
        else if (right_button && leg_r)
            internal_curr_direction = 4'b0100;
        else if (up_button && leg_u)
            internal_curr_direction = 4'b0010;
        else if (down_button && leg_d)
            internal_curr_direction = 4'b0001;
    end 

    assign curr_direction = internal_curr_direction;
endmodule 

