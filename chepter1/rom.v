module rom(
    input [5:0] addr,
    input ce,
    output  reg [31:0] inst
);
    reg[31:0]rom[63:0];
    initial $readmemh("rom.data",rom);
    always@(*)begin
        if(ce)
            inst<=rom[addr];
        else
            inst<=32'h00000000;
    end
endmodule