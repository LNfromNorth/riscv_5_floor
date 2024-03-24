module ex(
    input clk,
    input rst,
    input [4:0] rs1,
    input [4:0] rs2,
    input [4:0] rd,
    input [31:0] rs1_v,
    input [31:0] rs2_v,
    input [3:0] msg,
    input [4:0] ctl,
    output [31:0] result_v,
    output overflow
);


alu alu_u(
    .ctl(ctl),
    .msg(msg),
    .rs1_v(rs1_v),
    .rs2_v(rs2_v),
    .result_v(result_v),
    .overflow(overflow)
);

endmodule