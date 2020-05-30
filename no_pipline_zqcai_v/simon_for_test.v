module simon_for_test;
    reg[31:0] plaintext;
    reg[63:0] keytext;
    reg clk;
	wire[31:0] ciphertext;

    initial
    begin
        keytext = 64'h1918111009080100;
        #125 plaintext = 32'h41424344;
        #100 plaintext = 32'h345a6b7c;
        #100 plaintext = 32'h78569043;
        #500;
        $finish;
    end

    initial
    begin
        clk = 1'b0;
        forever
            #50 clk = ~clk;
    end

    simon_for uut(
        .plaintext(plaintext),
        .keytext(keytext),
        .clk(clk),
        .ciphertext(ciphertext)
        );

endmodule