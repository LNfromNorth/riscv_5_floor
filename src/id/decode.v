module decode(
    input [31:0] inst,
    output [4:0] rs1,
    output [4:0] rs2,
    output [4:0] rd,
    output [4:0] ctl,
    output [3:0] msg,
    output reg [31:0] imm,
    output reg error_inst
);

/* ctl | auipc | lui | load | save | use imm | */
/* msg funct7[5], funct3 */

`define OP_LUI          7'b0110111
`define OP_AUIPC        7'b0010111  
`define OP_JAL          7'b1101111  
`define OP_JALR         7'b1100111  
`define OP_B            7'b1100011  
`define OP_LOAD         7'b0000011  
`define OP_SAVE         7'b0100011  
`define OP_ALUI         7'b0010011
`define OP_ALU          7'b0110011
`define OP_CTL          7'b0001111
`define OP_E            7'b1110011

wire [6:0] opcode = inst[6:0];
assign rs2 = inst[24:20];
assign rs1 = inst[19:15];
assign rd  = inst[11:7];
wire [2:0] funct3 = inst[14:12];
wire [6:0] funct7 = inst[31:25];

wire [31:0] imm_i = {{20{inst[31]}}, inst[31:20]};
wire [31:0] imm_s = {{20{inst[31]}}, inst[31:25], inst[11:7]};
wire [31:0] imm_b = {{20{inst[31]}}, inst[31], inst[7], inst[30:25], inst[11:8]};
wire [31:0] imm_u = {inst[31:12], {12{1'b0}}};
wire [31:0] imm_j = {{12{inst[31]}}, inst[31], inst[19:12], inst[20], inst[30:21]};

assign msg = (opcode == 7'b0010011) ? {{1'b0}, funct3[2:0]} : {{funct7[5]}, funct3[2:0]};
assign ctl[0] = ((opcode == 7'b1110011) | (opcode == 7'b0001111) | (opcode == 7'b0110011)) ? 0 : 1;
assign ctl[1] = (opcode == 7'b0100011) ? 1 : 0;
assign ctl[2] = (opcode == 7'b0000011) ? 1 : 0;
assign ctl[3] = (opcode == 7'b0110111) ? 1 : 0;
assign ctl[4] = (opcode == 7'b0010111) ? 1 : 0;

// out put the imm
always @(*) begin
    case(opcode)
        7'b0110111: begin           // lui      
            imm <= imm_u;
        end
        7'b0010111: begin           // auipc
            imm <= imm_u;
        end
        7'b1101111: begin           // jal
            imm <= imm_j;
        end
        7'b1100111: begin           // jalr
            imm <= imm_i;
        end
        7'b1100011: begin           // brunch
            imm <= imm_b;
        end
        7'b0000011: begin           // load
            imm <= imm_i;
        end
        7'b0100011: begin           // save
            imm <= imm_s;
        end
        7'b0010011: begin           // alu imm
            imm <= imm_i;
        end
        7'b0110011: begin           // alu 
            imm <= 32'd0;
        end
        7'b0001111: begin           // ctl cmd
            imm <= 32'd0;
        end
        7'b1110011: begin           // ebreak ecall
            imm <= 32'd0;
        end
        default: begin
            imm <= 32'd0;
            error_inst <= 17'b0110111;
        end
    endcase
end

endmodule