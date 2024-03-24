module alu(
    input [4:0] ctl,
    input [3:0] msg,
    input [31:0] rs1_v,
    input [31:0] rs2_v,
    output reg [31:0] result_v,
    output reg overflow
);

wire [3:0] op;
wire [32:0] add_v = rs1_v + rs2_v;
wire [32:0] sub_v = rs1_v + ~rs2_v + 32'd1;
wire [32:0] rs1_v_e = {1'b0, rs1_v};
wire [32:0] rs2_v_e = {1'b0, rs2_v};
wire [32:0] sub_v_e = rs1_v_e + ~rs2_v_e + 32'd1;

assign op = (|ctl[3:1]) ? 4'd0 : msg;

always @(*) begin
    overflow = 1'b0;
    case(op)
        4'b0000: {overflow, result_v[31:0]} = add_v;               // add
        4'b1000: {overflow, result_v[31:0]} = sub_v;               // sub
        4'b0010: begin                                              // slt
            if(sub_v[31] == 0)
                result_v = 32'd0;
            else
                result_v = 32'd1;
        end
        4'b0011: begin                                              // sltu
            if(sub_v_e[32] == 0)
                result_v = 32'd0;
            else 
                result_v = 32'd1;
        end
        4'b0100: result_v = rs1_v ^ rs2_v;                         // xor
        4'b0110: result_v = rs1_v | rs2_v;                         // or
        4'b0111: result_v = rs1_v & rs2_v;                         // and
        4'b0001: result_v = rs1_v << rs2_v[4:0];                   // sll
        4'b0101: result_v = rs1_v >> rs2_v[4:0];                   // srl
        4'b1101: result_v = rs1_v >>> rs2_v[4:0];                  // sra
        default: result_v = rs1_v;
    endcase
end

endmodule
