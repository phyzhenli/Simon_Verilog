module simon_for(
    input[31:0] plaintext,
    input[63:0] keytext,
    input clk,
    output reg [31:0] ciphertext
);
    wire [511:0] key_total;
    reg [15:0] temp1;
    reg [15:0] temp2;
    reg [15:0] in_low;
    reg [15:0] in_high;
    wire [15:0] key [0:31];
    integer i;

    simon_key_for key_generate(
        .keytext(keytext),
        .clk(clk),
        .key_total(key_total)
    );

    assign key[0] = key_total[15:0];
    assign key[1] = key_total[31:16];
    assign key[2] = key_total[47:32];
    assign key[3] = key_total[63:48];
    assign key[4] = key_total[79:64];
    assign key[5] = key_total[95:80];
    assign key[6] = key_total[111:96];
    assign key[7] = key_total[127:112];
    assign key[8] = key_total[143:128];
    assign key[9] = key_total[159:144];
    assign key[10]= key_total[175:160];
    assign key[11]=key_total[191:176];
    assign key[12]=key_total[207:192];
    assign key[13]=key_total[223:208];
    assign key[14]=key_total[239:224];
    assign key[15]=key_total[255:240];
    assign key[16]=key_total[271:256];
    assign key[17]=key_total[287:272];
    assign key[18]=key_total[303:288];
    assign key[19]=key_total[319:304];
    assign key[20]=key_total[335:320];
    assign key[21]=key_total[351:336];
    assign key[22]=key_total[367:352];
    assign key[23]=key_total[383:368];
    assign key[24]=key_total[399:384];
    assign key[25]=key_total[415:400];
    assign key[26]=key_total[431:416];
    assign key[27]=key_total[447:432];
    assign key[28]=key_total[463:448];
    assign key[29]=key_total[479:464];
    assign key[30]=key_total[495:480];
    assign key[31]=key_total[511:496];

    always @(posedge clk)
    begin
        in_low = plaintext[15:0];
        in_high = plaintext[31:16];
        for(i=0;i<=31;i=i+1)
        begin
            temp1 = {in_high[14:0],in_high[15]}&{in_high[7:0],in_high[15:8]};
            temp2 = temp1 ^ in_low ^ {in_high[13:0],in_high[15:14]};
            in_low = in_high;
            in_high = temp2 ^ key[i];
        end
        ciphertext[15:0] = in_high;
        ciphertext[31:16] = in_low;
    end

endmodule