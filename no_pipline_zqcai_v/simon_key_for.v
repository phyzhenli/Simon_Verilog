module simon_key_for(
    input[63:0] keytext,
    input clk,
    output [511:0] key_total
);
    reg [15:0] key [0:31];
    wire [15:0] c;
    wire [61:0] z;
    reg [15:0] temp0;
    reg [15:0] temp1;
    reg [15:0] temp2;
    reg [15:0] temp3;
    reg [15:0] temp4;
    reg [15:0] temp5;
    reg [15:0] temp_out;
    integer i;

    assign c  = 16'hfffc;
    assign z  = 62'b01100111000011010100100010111110110011100001101010010001011111;

    assign key_total[15:0]    = key[0];
    assign key_total[31:16]   = key[1];
    assign key_total[47:32]   = key[2];
    assign key_total[63:48]   = key[3];
    assign key_total[79:64]   = key[4];
    assign key_total[95:80]   = key[5];
    assign key_total[111:96]  = key[6];
    assign key_total[127:112] = key[7];
    assign key_total[143:128] = key[8];
    assign key_total[159:144] = key[9];
    assign key_total[175:160] = key[10];
    assign key_total[191:176] = key[11];
    assign key_total[207:192] = key[12];
    assign key_total[223:208] = key[13];
    assign key_total[239:224] = key[14];
    assign key_total[255:240] = key[15];
    assign key_total[271:256] = key[16];
    assign key_total[287:272] = key[17];
    assign key_total[303:288] = key[18];
    assign key_total[319:304] = key[19];
    assign key_total[335:320] = key[20];
    assign key_total[351:336] = key[21];
    assign key_total[367:352] = key[22];
    assign key_total[383:368] = key[23];
    assign key_total[399:384] = key[24];
    assign key_total[415:400] = key[25];
    assign key_total[431:416] = key[26];
    assign key_total[447:432] = key[27];
    assign key_total[463:448] = key[28];
    assign key_total[479:464] = key[29];
    assign key_total[495:480] = key[30];
    assign key_total[511:496] = key[31];

    always @(*)
    begin

        temp0  = keytext[63:48];
        temp1  = keytext[47:32];
        temp2  = keytext[31:16];
        temp3  = keytext[15:0];
        key[0]  = keytext[63:48];
        key[1]  = keytext[47:32];
        key[2]  = keytext[31:16];
        key[3]  = keytext[15:0];
        
        for(i = 4; i <= 31; i = i+1)
        begin
            temp4  = {temp3[2:0],temp3[15:3]};
            temp4  = temp4 ^ temp1;
            temp5  = temp4 ^ {temp4[0],temp4[15:1]};
            temp_out  = temp0 ^ temp5 ^ (c ^ z[i-4]);
            key[i]  = temp_out;
            temp0  = temp1;
            temp1  = temp2;
            temp2  = temp3;
            temp3  = temp_out;
        end
    end

endmodule