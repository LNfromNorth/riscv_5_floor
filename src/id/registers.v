module registers(
    input clk,
    input wen,
    // read
    input [4:0] rs1,
    input [4:0] rs2,
    output [31:0] rs1_v,
    output [31:0] rs2_v,
    // write
    input [4:0] rd,
    input  [31:0] rd_v
);

reg [31:0] reg_files[0:31];

integer i;
initial begin
    for(i = 0; i < 32; i = i + 1) begin
        reg_files[i] = 32'd0;
    end
end

always @(posedge clk) begin
    if(wen & (rd != 0))
        reg_files[rd] <= rd_v;
end

assign rs1_v = reg_files[rs1];
assign rs2_v = reg_files[rs2];

endmodule
