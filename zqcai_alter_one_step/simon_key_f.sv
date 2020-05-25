module simon_key_f(
    input[63:0] keytext,
    input clk, rst,
    output reg [31:0][15:0] key
);
    wire [15:0] c;
    wire [61:0] z;

    reg [15:0] temp0;
    reg [15:0] temp1;
    reg [15:0] temp2;
    reg [15:0] temp3;
    reg [15:0] temp4;
    reg [15:0] temp5;
    reg [15:0] temp_out;
    reg [5:0] counter;
    reg [5:0] key_counter;
    reg [5:0] z_c;
    assign c = 16'hfffc;
    assign z = 62'b01100111000011010100100010111110110011100001101010010001011111;

always @(posedge clk)
begin
    if(!rst)
        begin
            counter <= 6'd0;
        end
    else if(counter == 6'd0)
        begin
            temp0 <= keytext[63:48];
            temp1 <= keytext[47:32];
            temp2 <= keytext[31:16];
            temp3 <= keytext[15:0];
            key[0] <= keytext[63:48];
            key[1] <= keytext[47:32];
            key[2] <= keytext[31:16];
            key[3] <= keytext[15:0];
            counter <= counter+1;
        end
    else if(counter == 6'd28)  //5'd28 signed number
        begin
            key[key_counter] <= temp_out;
            temp0 <= temp0;
            temp1 <= temp1;
            temp2 <= temp2;
            temp3 <= temp3;
            counter <= counter;
        end
    else
        begin
            key[key_counter] <= temp_out;
            temp0 <= temp1;
            temp1 <= temp2;
            temp2 <= temp3;
            temp3 <= temp_out;
            counter <= counter+1;
        end
end

always @(*)
begin
    key_counter = counter+3;
    if(counter == 6'd0)
        z_c = counter;
    else
        z_c = counter-1;
    temp4 = {temp3[2:0],temp3[15:3]};
    temp4 = temp4 ^ temp1;
    temp5 = temp4 ^ {temp4[0],temp4[15:1]};
    temp_out = temp0 ^ temp5 ^ (c ^ z[z_c]);
end

endmodule