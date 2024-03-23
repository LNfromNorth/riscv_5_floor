module decode(
    input [31:0] inst,
    output [4:0] rs1,
    output [4:0] rs2,
    output [4:0] rd,
    output ctl,
    output reg [31:0] imm
);

`define OP_LUI          7'b0110111
`define OP_AUIPC        7'b0010111  
`define OP_JAL          7'b1101111  
`define OP_JALR         7'b1100111  
`define OP_B            7'b1100011  
`define OP_LOAD         7'b0000011  
`define OP_SAVE         7'b0100011  
`define OP_ALUI         7'b0010011
`define OP_ALU          7'b0110011

wire [6:0] opcode = inst[6:0];
wire [4:0] rs2 = inst[24:20];
wire [4:0] rs1 = inst[19:15];
wire [4:0] rd  = inst[11:7];
wire [2:0] funct3 = inst[14:12];
wire [6:0] funct7 = inst[31:25];

wire [31:0] imm_i = {{20{inst[31]}}, inst[31:20]};
wire [31:0] imm_s = {{20{inst[31]}}, inst[31:25], inst[11:7]};
wire [31:0] imm_b = {{20{inst[31]}}, inst[31], inst[7], inst[30:25], inst[11:8]};
wire [31:0] imm_u = {inst[31:12], {12{1'b0}}};
wire [31:0] imm_j = {{12{inst[31]}}, inst[31], inst[19:12], inst[20], inst[30:21]};

// out put the imm
always @(*) begin
    case(opcode)
        7'b0110111:        imm <= imm_u;
        7'b0010111:        imm <= imm_u;
        7'b1101111:        imm <= imm_j;
        7'b1100111:        imm <= imm_i;
        7'b1100011:        imm <= imm_b;
        7'b0000011:        imm <= imm_i;
        7'b0100011:        imm <= imm_s;
        7'b0010011:        imm <= imm_i;
        7'b0110011:        imm <= 32'd0;
        default:        imm <= 32'd0;
    endcase
end

endmodule