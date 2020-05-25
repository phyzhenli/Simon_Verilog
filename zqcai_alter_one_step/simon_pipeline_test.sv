module simon_pipeline_test;
    reg[31:0] plaintext;
    reg[63:0] keytext;
    reg rst, clk;
    reg [31:0][15:0] key;
	reg [31:0] ciphertext;

initial
begin
    rst = 1'b1;
    #5 rst = 1'b0;
    #4 rst = 1'b1;
    keytext = 64'h1918111009080100;
	#4 plaintext = 32'h41424344;
    #4 plaintext = 32'h345a6b7c;
	#4 plaintext = 32'h78569043;
	#200;
    $finish;
end

initial
begin
    clk = 1'b0;
    forever
        #2 clk = ~clk;
end

simon_pipeline uut(
    .plaintext(plaintext),
    .keytext(keytext),
    .clk(clk),
    .rst(rst),
	.key(key),
    .ciphertext(ciphertext)
    );

endmodule