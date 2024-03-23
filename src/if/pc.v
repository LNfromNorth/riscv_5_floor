module pc(
    input clk,
    input rst,
    output [31:0] pc_out
);

    reg [31:0] pc = 32'h80000000;
    always @(posedge clk or negedge rst) begin
        if(!rst) begin
            pc <= 32'h80000000;
        end else begin
            pc <= pc + 4;
        end
    end

    assign pc_out = pc;

endmodule