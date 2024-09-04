module led_driver (
    input               clk,
    input               rst_n,
    input               valid,
    output reg [1:0]    led
);

    always @(posedge clk, negedge rst_n) begin
        if (!rst_n) begin
            led <= 2'd0;
        end
        else begin
            led <= valid ? led << 1'b1 : led;
        end
    end
    
endmodule