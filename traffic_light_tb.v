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

initial clk = 0;
always #5 clk = ~clk;

initial begin
    reset = 1;
    #10 reset = 0;

    $monitor("Time=%0t RED=%b YELLOW=%b GREEN=%b",
             $time, red, yellow, green);

    #200 $finish;
end

endmodule
