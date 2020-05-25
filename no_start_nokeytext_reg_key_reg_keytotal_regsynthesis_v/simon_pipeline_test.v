`timescale 1ms/1ms

module simon_pipeline_test;
    reg  rst, clk;
	reg  [31:0] plaintext;
	wire [31:0] ciphertext;

initial
begin
    clk = 'b0;
    rst = 'b1;
    #25;
    rst = 'b0;
    #10;
    rst = 'b1;
    #10
	plaintext = 32'h41424344;
    #2;
	plaintext = 32'h77686565;
	#2;
	plaintext = 32'h65656877;
	#200;
    $finish;
end

always #1 clk = ~clk;

    simon_pipeline U0(
    .clk(clk),
    .rst(rst),
	.plaintext(plaintext),
	.ciphertext(ciphertext)
    );
    
endmodule