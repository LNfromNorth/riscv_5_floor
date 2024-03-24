module id_ex(
    input clk,
    input rst,
    input [4:0] rs1,
    input [4:0] rs2,
    input [4:0] rd,
    input [31:0] rs1_v,
    input [31:0] rs2_v,
    input [3:0] msg,
    input [4:0] ctl,
    input [31:0] pc,
    output reg [4:0] rs1_out,
    output reg [4:0] rs2_out,
    output reg [4:0] rd_out,
    output reg [31:0] rs1_v_out,
    output reg [31:0] rs2_v_out,
    output reg [3:0] msg_out,
    output reg [4:0] ctl_out,
    output reg [31:0] pc_out
);


always @(posedge clk or negedge rst) begin
    if(!rst) begin
        rs1_out <= 4'd0;
        rs2_out <= 4'd0;
        rd_out  <= 4'd0;
        rs1_v_out <= 32'd0;
        rs2_v_out <= 32'd0;
        msg_out <= 4'd0;
        ctl_out <= 5'd0;
        pc_out <= 32'd0;
    end else begin
        rs1_out <= rs1;
        rs2_out <= rs2;
        rd_out  <= rd;
        rs1_v_out <= rs1_v;
        rs2_v_out <= rs2_v;
        msg_out <= msg;
        ctl_out <= ctl;
        pc_out <= pc;
    end
end


endmodule
