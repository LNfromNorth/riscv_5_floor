module id(
    input clk,
    input rst,
    input [31:0] pc,
    input [31:0] inst
);

wire [31:0] imm;
wire [4:0] ctl;
wire [4:0] rs1;
wire [4:0] rs2;
wire [4:0] rd;
wire [31:0] rs1_v;
wire [31:0] rs2_v;
wire [31:0] rd_v;

decode decode_u(
    .inst(inst),
    .rs1(rs1),
    .rs2(rs2),
    .rd(rd),
    .ctl(ctl),
    .imm(imm)
);

registers regs_u(
    .clk(clk),
    .rst(rst),
    .wen(1'b1),
    .rs1(rs1),
    .rs2(rs2),
    .rd(rd),
    .rd_v(rd_v),
    .rs1_v(rs1_v),
    .rs2_v(rs2_v)
);



endmodule