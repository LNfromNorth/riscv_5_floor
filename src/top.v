module top(
    input clk,
    input rst
);

core core_u(
    .clk(clk),
    .rst(rst)
);

endmodule