module core(
    input clk,
    input rst
);

wire [31:0] pc;
wire [31:0] inst;
wire [31:0] pc_out;
wire [31:0] inst_out;

ifs if_u(
    .clk(clk),
    .rst(rst),
    .pc(pc),
    .inst(inst)
);

if_id if_id_u(
    .clk(clk),
    .rst(rst),
    .pc(pc),
    .inst(inst),
    .pc_out(pc_out),
    .inst_out(inst_out)
);

id id_u(
    .clk(clk),
    .rst(rst),
    .pc(pc_out),
    .inst(inst_out)
);



endmodule