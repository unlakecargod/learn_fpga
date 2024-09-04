module counter (
        input   clk,
        input   rst_n,
        output  valid
    );
    
    parameter CNT_MAX = 999;

    reg [$clog2(CNT_MAX) - 1:0] cnt;

    always @(posedge clk, negedge rst_n) begin
        if (!rst_n) begin
            cnt <= 0;
        end
        else begin
            cnt <= cnt < CNT_MAX ? cnt + 1 : 0;
        end
    end

    assign valid = cnt == CNT_MAX - 1;
        
endmodule