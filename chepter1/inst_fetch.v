module inst_fetch(
    input clk,
    input rst,
    output [31:0]inst_o
);
    wire ce;
    wire [5:0]addr;
    pc_reg pc_reg0(
        .rst(rst),
        .clk(clk),
        .pc(addr),
        .ce(ce)
    );
    rom rom0(
        .addr(addr),
        .ce(ce),
        .inst(inst_o)
    );
endmodule