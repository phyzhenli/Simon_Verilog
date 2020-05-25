`timescale 1ms/1ms

module simon_pipeline_test;
    reg[63 : 0] keytext;
    reg  rst, clk;
    reg start; 
	reg [31:0] plaintext;
	reg [31:0] ciphertext;

initial
begin
    clk = 'b0;
    rst = 'b1;
    start = 'b1;
    #25;
    rst = 'b0;
    #10;
    rst = 'b1;
    keytext = 64'h1918111009080100;
    #100
	plaintext = 32'he7d46019;
    #2;
	plaintext = 32'h24308306;
	#2;
	plaintext = 32'h43e0d501;
	#200;
    $finish;
end

always #1 clk = ~clk;

    simon_pipeline U0(
    .clk(clk),
    .rst(rst),
    .start(start),
    .keytext(keytext),
	.plaintext(plaintext),
	.ciphertext(ciphertext)
    );
    
endmodule