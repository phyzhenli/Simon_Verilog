module simon_key_f_for(
    input clk,
    output reg [31:0][15:0] key
);
    wire [15:0] c;
    wire [61:0] z;
    wire [63:0] keytext;
    reg [15:0] temp0;
    reg [15:0] temp1;
    reg [15:0] temp2;
    reg [15:0] temp3;
    reg [15:0] temp4;
    reg [15:0] temp5;
    reg [15:0] temp_out;
    integer i;

    assign c = 16'hfffc;
    assign z = 62'b01100111000011010100100010111110110011100001101010010001011111;
    assign keytext = 64'h1918111009080100;

    always @(*)
    begin
        temp0 = keytext[63:48];
        temp1 = keytext[47:32];
        temp2 = keytext[31:16];
        temp3 = keytext[15:0];
        key[0] = keytext[63:48];
        key[1] = keytext[47:32];
        key[2] = keytext[31:16];
        key[3] = keytext[15:0];
        for(i=1;i<=28;i=i+1)
        begin
            temp4 = {temp3[2:0],temp3[15:3]};
            temp4 = temp4 ^ temp1;
            temp5 = temp4 ^ {temp4[0],temp4[15:1]};
            temp_out = temp0 ^ temp5 ^ (c ^ z[i-1]);
            key[i+3] = temp_out;
            temp0 = temp1;
            temp1 = temp2;
            temp2 = temp3;
            temp3 = temp_out;
        end
    end

endmodule