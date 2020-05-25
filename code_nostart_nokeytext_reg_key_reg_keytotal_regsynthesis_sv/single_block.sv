module single_block(
  input [15:0] in_low,
  input [15:0] in_high,
  input [15:0] in_key,
  output reg [15:0] out_low,
  output reg [15:0] out_high
);

reg [15:0] temp1;
reg [15:0] temp2;

always @(in_low,in_high,in_key)

  begin
    temp1 = {in_high[14:0],in_high[15]}&{in_high[7:0],in_high[15:8]};
    temp2 = temp1 ^ in_low ^ {in_high[13:0],in_high[15:14]};
    out_low = in_high;
    out_high = temp2 ^ in_key;
  end

endmodule