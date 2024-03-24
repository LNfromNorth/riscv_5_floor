module core(
    input clk,
    input rst
);

`define iverilog

// input 
wire [31:0] pc_if;
wire [31:0] inst;
// output
wire [31:0] pc_fd_out;
wire [31:0] inst_out;

ifs if_u(
    .clk(clk),
    .rst(rst),
    .pc(pc_if),
    .inst(inst)
);

if_id if_id_u(
    .clk(clk),
    .rst(rst),
    .pc(pc_if),
    .inst(inst),
    .pc_out(pc_fd_out),
    .inst_out(inst_out)
);

// input
wire [4:0] rs1_id;
wire [4:0] rs2_id;
wire [4:0] rd_id;
wire [31:0] rs1_v;
wire [31:0] rs2_v;
wire [3:0] msg_id;
wire [4:0] ctl_id;
wire [31:0] pc_id;
// output
wire [31:0] pc_dx_out;
wire [4:0] rs1_dx_out;
wire [4:0] rs2_dx_out;
wire [4:0] rd_dx_out;
wire [31:0] rs1_v_out;
wire [31:0] rs2_v_out;
wire [3:0] msg_dx_out;
wire [4:0] ctl_dx_out;


id id_u(
    .clk(clk),
    .rst(rst),
    .inst(inst_out),
    .pc(pc_dx_out),
    .rs1_out(rs1_id),
    .rs2_out(rs2_id),
    .rd_out(rd_id),
    .rs1_v_out(rs1_v),
    .rs2_v_out(rs2_v),
    .msg_out(msg_id),
    .ctl_out(ctl_id)
);

id_ex id_ex_u(
    .clk(clk),
    .rst(rst),
    .rs1(rs1_id),
    .rs2(rs2_id),
    .rd(rd_id),
    .rs1_v(rs1_v),
    .rs2_v(rs2_v),
    .msg(msg_id),
    .ctl(ctl_id),
    .pc(pc_fd_out),
    .rs1_out(rs1_dx_out),
    .rs2_out(rs2_dx_out),
    .rd_out(rd_dx_out),
    .rs1_v_out(rs1_v_out),
    .rs2_v_out(rs2_v_out),
    .msg_out(msg_dx_out),
    .ctl_out(ctl_dx_out),
    .pc_out(pc_dx_out)
);

// input
wire [4:0] rs1_xm_out;
wire [4:0] rs2_xm_out;
wire [4:0] rd_xm_out;
wire [3:0] msg_xm_out;
wire [4:0] ctl_xm_out;
wire [31:0] pc_xm_out;
wire [31:0] result_v;
// output

ex ex_u(
    .clk(clk),
    .rst(rst),
    .rs1(rs1_dx_out),
    .rs2(rs2_dx_out),
    .rd(rd_dx_out),
    .rs1_v(rs1_v_out),
    .rs2_v(rs2_v_out),
    .msg(msg_dx_out),
    .ctl(ctl_dx_out),
    .result_v(result_v)
);

ex_mem ex_mem_u(
    .clk(clk),
    .rst(rst),
    .pc(pc_dx_out),
    .rs1(rs1_dx_out),
    .rs2(rs2_dx_out),
    .rd(rd_dx_out),
    .msg(msg_dx_out),
    .ctl(ctl_dx_out),
    .pc_out(pc_xm_out),
    .result_out(result_v),
    .rs1_out(rs1_xm_out),
    .rs2_out(rs2_xm_out),
    .rd_out(rd_xm_out),
    .msg_out(msg_xm_out),
    .ctl_out(ctl_xm_out)
);


endmodule