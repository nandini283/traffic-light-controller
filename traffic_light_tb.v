`timescale 1ns/1ps

module traffic_light_tb;

reg clk, reset;
wire red, yellow, green;

traffic_light uut(
    .clk(clk),
    .reset(reset),
    .red(red),
    .yellow(yellow),
    .green(green)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;

    $dumpfile("traffic_light.vcd");
    $dumpvars(0, traffic_light_tb);

    #10 reset = 0;

    $monitor("Time=%0t RED=%b YELLOW=%b GREEN=%b",
             $time, red, yellow, green);

    #200 $finish;
end

endmodule
