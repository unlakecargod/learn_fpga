`include "counter.v"
`include "led_driver.v"

module Top (
    input           clk,
    input           rstn,
    output [1:0]    led
);
    wire valid;

    Counter counter_inst0 (.clk(clk), .rst_n(rstn), .valid(valid));

    led_driver driver_inst0 (.clk(clk), .rst_n(rstn), .valid(valid), .led(led));

    
    
endmodule

