module ifs(
    input clk,
    input rst,
    output [31:0] pc,
    output [31:0] inst
);

wire [31:0] pc;
wire [31:0] inst;
assign inst = 32'h00508113;

pc pc_u(
    .clk(clk),
    .rst(rst),
    .pc_out(pc)
);

endmodule