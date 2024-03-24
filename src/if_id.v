module if_id(
    input clk,
    input rst,
    input [31:0] pc,
    input [31:0] inst,
    output reg [31:0] pc_out,
    output reg [31:0] inst_out
);

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        pc_out <= 32'd0;
        inst_out <= 32'd0;
    end else begin
        pc_out <= pc;
        inst_out <= inst;
    end
end

endmodule
