module sigle_block(
    input [15:0] in_low,
    input [15:0] in_high,
    input [15:0] in_key,
    output reg [15:0] out_low,
    output reg [15:0] out_high
);

reg [15:0] temp1;
reg [15:0] temp2;
always @(*)
begin
    temp1 = {in_low[14:0],in_low[15]}&{in_low[7:0],in_low[15:8]};
    temp2 = temp1 ^ in_high ^ {in_low[13:0],in_low[15:14]};
    out_high = in_low;
    out_low = temp2 ^ in_key;
end

endmodule