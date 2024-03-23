module test();

    reg clk = 0;
    reg rst = 0;

    initial begin
        rst = 0;
        #100; 
        rst = 1;
        #100;
        $finish;
    end

    always begin
        #1 clk = ~clk;
    end

    core core_u(
        .clk(clk),
        .rst(rst)
    );

    initial begin 
        $dumpfile("build/wave.vcd");
        $dumpvars(0, test);
    end

endmodule