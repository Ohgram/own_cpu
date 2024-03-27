module pc_reg(
    input rst,
    input clk,
    output reg [5:0] pc,
    output reg ce
);

    always @(posedge clk) begin
        if(rst)
            ce<=0;
        else
            ce<=1;
    end
    always@(posedge clk) begin
        if(rst)
            pc<=0;
        else
            pc<=pc+1'b1;
    end

endmodule