module ex_mem(
    input clk,
    input rst,
    input [31:0] pc,
    input [31:0] result,
    input [4:0] rs1,
    input [4:0] rs2,
    input [4:0] rd,
    input [3:0] msg,
    input [4:0] ctl,
    output reg [31:0] pc_out,
    output reg [31:0] result_out,
    output reg [4:0] rs1_out,
    output reg [4:0] rs2_out,
    output reg [4:0] rd_out,
    output reg [3:0] msg_out,
    output reg [4:0] ctl_out
);

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        pc_out <= 32'd0;
        result_out <= 32'd0;
        rs1_out <= 5'd0;
        rs2_out <= 5'd0;
        rd_out  <= 5'd0;
        msg_out <= 4'd0;
        ctl_out <= 5'd0;
    end else begin
        pc_out <= pc;
        result_out <= result;
        rs1_out <= rs1;
        rs2_out <= rs2;
        rd_out  <= rd;
        msg_out <= msg;
        ctl_out <= ctl;
    end
end

endmodule