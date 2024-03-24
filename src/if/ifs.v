module ifs(
    input clk,
    input rst,
    output [31:0] pc,
    output [31:0] inst
);

pc pc_u(
    .clk(clk),
    .rst(rst),
    .pc_out(pc)
);

rom rom_u(
    .clk(clk),
    .addr(pc),
    .data(inst)
);

endmodule
