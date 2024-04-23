`timescale 1ns / 1ps

module tb_block_controller();

    // Inputs
    reg clk;
    reg mastClk;
    reg bright;
    reg rst;
    reg up;
    reg down;
    reg left;
    reg right;
    reg [9:0] hCount;
    reg [9:0] vCount;

    // Outputs
    wire [11:0] rgb;
    wire [11:0] background;
    wire leg_l;
    wire leg_r;
    wire leg_u;
    wire leg_d;

    // Instantiate block_controller module
    block_controller dut (
        .clk(clk),
        .mastClk(mastClk),
        .bright(bright),
        .rst(rst),
        .up(up),
        .down(down),
        .left(left),
        .right(right),
        .hCount(hCount),
        .vCount(vCount),
        .rgb(rgb),
        .background(background),
        .leg_l(leg_l),
        .leg_r(leg_r),
        .leg_u(leg_u),
        .leg_d(leg_d)
    );

    // Clock generation
    always #5 clk = ~clk; // Toggle clk every 5 time units

    // Testbench stimulus
    initial begin
        // Initialize inputs
        clk = 0;
        mastClk = 0;
        bright = 0;
        rst = 1; // Reset initially
        up = 0;
        down = 0;
        left = 0;
        right = 0;
        hCount = 0;
        vCount = 0;

        // Wait for a few clock cycles after reset
        #10 rst = 0;
    // Test scenario 4: Move right
        right = 1;
        #2500;
        right = 0;
        // Test scenario 2: Move down
        down = 1;
        #300;
        down = 0;
        
        // Test scenario 3: Move left
        left = 1;
        #2500;
        left = 0;
        // Test scenario 1: Move up
        /*up = 1;
        #1000;
        up = 0;*/
        #10 rst = 0;
    // Test scenario 4: Move right
        left = 1;
        #2500;
        left = 0;
        // Test scenario 2: Move down
        down = 1;
        #300;
        down = 0;
        
        // Test scenario 3: Move left
        left = 1;
        #2500;
        left = 0;


        

        // End simulation
        #10 $finish;
    end

    // Monitor for displaying output signals
    always @(posedge clk) begin
        $display("Time = %0t, leg_l = %b, leg_r = %b, leg_u = %b, leg_d = %b", $time, leg_l, leg_r, leg_u, leg_d);
    end

endmodule
