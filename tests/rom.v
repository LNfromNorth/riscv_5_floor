module rom(
    input clk,
    input [31:0] addr,
    output reg [31:0] data
);

reg [31:0] rom[15:0];

initial begin
    $readmemh("./tests/rom", rom);
end

always @(posedge clk) begin
    data <= rom[addr[5:2]];
end

endmodule
