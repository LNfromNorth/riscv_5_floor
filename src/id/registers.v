module registers(
    input clk,
    input rst,
    input wen,
    input [4:0] rs1,
    input [4:0] rs2,
    input [4:0] rd,
    input  [31:0] rd_v,
    output [31:0] rs1_v,
    output [31:0] rs2_v
);

integer i = 0;
reg [31:0] reg_files[31:0];

initial begin
    for(i = 0; i < 32; i = i + 1)
        reg_files[i] <= 32'b0;
end

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        for(i = 0; i < 32; i = i + 1)
            reg_files[i] <= 32'b0; 
    end
end

always @(posedge clk) begin
    if(wen)
        reg_files[rd] <= rd_v;
end

assign rs1_v = reg_files[rs1];
assign rs2_v = reg_files[rs2];

endmodule
