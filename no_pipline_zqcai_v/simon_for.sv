module simon_for(
    input[31:0] plaintext,
    input clk,
    output reg [31:0] ciphertext
);
    wire [31:0][15:0] key;
    reg [15:0] temp1;
    reg [15:0] temp2;
    reg [15:0] in_low;
    reg [15:0] in_high;
    integer i;

    simon_key_f_for key_generate(
        .clk(clk),
        .key(key)
    );

    always @(posedge clk)
    begin
        in_low = plaintext[15:0];
        in_high = plaintext[31:16];
        for(i=0;i<=31;i=i+1)
        begin
            temp1 = {in_low[14:0],in_low[15]}&{in_low[7:0],in_low[15:8]};
            temp2 = temp1 ^ in_high ^ {in_low[13:0],in_low[15:14]};
            in_high = in_low;
            in_low = temp2 ^ key[i];
        end
        ciphertext[15:0] = in_high;
        ciphertext[31:16] = in_low;
    end

endmodule