module id(
    input clk,
    input rst,
    input [31:0] inst,
    input [31:0] pc,
    output [4:0] rs1_out,
    output [4:0] rs2_out,
    output [4:0] rd_out,
    output [31:0] rs1_v_out,
    output [31:0] rs2_v_out,
    output [3:0] msg_out,
    output [4:0] ctl_out
);

wire [31:0] imm;
wire [4:0] ctl;
wire [3:0] msg;
wire [4:0] rs1;
wire [4:0] rs2;
wire [4:0] rd;
wire [31:0] rs1_v;
wire [31:0] rs2_v;
wire [31:0] rd_v;
wire error_inst;

/* deffient when call lui or auipc */
assign rd_out = rd;
assign rs1_out = rs1;
assign rs2_out = rs2;
assign rs1_v_out = (ctl[3] == 1) ? 32'd0 : ((ctl[4] == 1) ? pc : rs1_v);
assign rs2_v_out = (ctl[0] == 1) ? imm : rs2_v;
assign msg_out = msg;
assign ctl_out = ctl;

decode decode_u(
    .inst(inst),
    .rs1(rs1),
    .rs2(rs2),
    .rd(rd),
    .ctl(ctl),
    .msg(msg),
    .imm(imm),
    .error_inst(error_inst)
);

registers regs_u(
    .clk(clk),
    .wen(1'b0),
    .rs1(rs1),
    .rs2(rs2),
    .rd(rd),
    .rd_v(rd_v),
    .rs1_v(rs1_v),
    .rs2_v(rs2_v)
);


endmodule
