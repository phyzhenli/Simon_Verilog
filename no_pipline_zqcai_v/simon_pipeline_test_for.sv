module simon_pipeline_test_for;
    reg[31:0] plaintext;
    reg clk;
	reg [31:0] ciphertext;

    initial
    begin
        #125 plaintext = 32'h41424344;
        #100 plaintext = 32'h77686565;
        #100 plaintext = 32'h65656877;
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
        .clk(clk),
        .ciphertext(ciphertext)
        );

endmodule