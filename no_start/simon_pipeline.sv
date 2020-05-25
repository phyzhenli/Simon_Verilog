module simon_pipeline(
  input [31:0] plaintext,
  input clk,rst,
  input [63:0] keytext,

  output reg [31:0] ciphertext
 );

reg [31:0][15:0] key; //modify key not output

simon_key key_generate(
  .clk(clk),
  .rst(rst),
  .keytext(keytext),
  .key(key)
);


reg [15:0] in_low1; reg [15:0] in_high1; reg [15:0] out_low1; reg [15:0] out_high1;
reg [15:0] in_low2; reg [15:0] in_high2; reg [15:0] out_low2; reg [15:0] out_high2;
reg [15:0] in_low3; reg [15:0] in_high3; reg [15:0] out_low3; reg [15:0] out_high3;
reg [15:0] in_low4; reg [15:0] in_high4; reg [15:0] out_low4; reg [15:0] out_high4;
reg [15:0] in_low5; reg [15:0] in_high5; reg [15:0] out_low5; reg [15:0] out_high5;
reg [15:0] in_low6; reg [15:0] in_high6; reg [15:0] out_low6; reg [15:0] out_high6;
reg [15:0] in_low7; reg [15:0] in_high7; reg [15:0] out_low7; reg [15:0] out_high7;
reg [15:0] in_low8; reg [15:0] in_high8; reg [15:0] out_low8; reg [15:0] out_high8;
reg [15:0] in_low9; reg [15:0] in_high9; reg [15:0] out_low9; reg [15:0] out_high9;
reg [15:0] in_low10; reg [15:0] in_high10; reg [15:0] out_low10; reg [15:0] out_high10;
reg [15:0] in_low11; reg [15:0] in_high11; reg [15:0] out_low11; reg [15:0] out_high11;
reg [15:0] in_low12; reg [15:0] in_high12; reg [15:0] out_low12; reg [15:0] out_high12;
reg [15:0] in_low13; reg [15:0] in_high13; reg [15:0] out_low13; reg [15:0] out_high13;
reg [15:0] in_low14; reg [15:0] in_high14; reg [15:0] out_low14; reg [15:0] out_high14;
reg [15:0] in_low15; reg [15:0] in_high15; reg [15:0] out_low15; reg [15:0] out_high15;
reg [15:0] in_low16; reg [15:0] in_high16; reg [15:0] out_low16; reg [15:0] out_high16;
reg [15:0] in_low17; reg [15:0] in_high17; reg [15:0] out_low17; reg [15:0] out_high17;
reg [15:0] in_low18; reg [15:0] in_high18; reg [15:0] out_low18; reg [15:0] out_high18;
reg [15:0] in_low19; reg [15:0] in_high19; reg [15:0] out_low19; reg [15:0] out_high19;
reg [15:0] in_low20; reg [15:0] in_high20; reg [15:0] out_low20; reg [15:0] out_high20;
reg [15:0] in_low21; reg [15:0] in_high21; reg [15:0] out_low21; reg [15:0] out_high21;
reg [15:0] in_low22; reg [15:0] in_high22; reg [15:0] out_low22; reg [15:0] out_high22;
reg [15:0] in_low23; reg [15:0] in_high23; reg [15:0] out_low23; reg [15:0] out_high23;
reg [15:0] in_low24; reg [15:0] in_high24; reg [15:0] out_low24; reg [15:0] out_high24;
reg [15:0] in_low25; reg [15:0] in_high25; reg [15:0] out_low25; reg [15:0] out_high25;
reg [15:0] in_low26; reg [15:0] in_high26; reg [15:0] out_low26; reg [15:0] out_high26;
reg [15:0] in_low27; reg [15:0] in_high27; reg [15:0] out_low27; reg [15:0] out_high27;
reg [15:0] in_low28; reg [15:0] in_high28; reg [15:0] out_low28; reg [15:0] out_high28;
reg [15:0] in_low29; reg [15:0] in_high29; reg [15:0] out_low29; reg [15:0] out_high29;
reg [15:0] in_low30; reg [15:0] in_high30; reg [15:0] out_low30; reg [15:0] out_high30;
reg [15:0] in_low31; reg [15:0] in_high31; reg [15:0] out_low31; reg [15:0] out_high31;
reg [15:0] in_low32; reg [15:0] in_high32; reg [15:0] out_low32; reg [15:0] out_high32;

always @ (posedge clk)

begin

  if (!rst)
    begin

      in_low1  <= 0;
      in_high1 <= 0;
    
    end

  else
      begin
            in_high1 <= plaintext[31:16];
            in_low1 <= plaintext[15:0];
            in_low2  <= out_low1;    in_low3  <= out_low2;
            in_high2 <= out_high1;   in_high3 <= out_high2;
            in_low4  <= out_low3;    in_low5  <= out_low4;
            in_high4 <= out_high3;   in_high5 <= out_high4;
            in_low6  <= out_low5;    in_low7  <= out_low6;
            in_high6 <= out_high5;   in_high7 <= out_high6;
            in_low8  <= out_low7;    in_low9  <= out_low8;
            in_high8 <= out_high7;   in_high9 <= out_high8;
            in_low10  <= out_low9;    in_low11  <= out_low10;
            in_high10 <= out_high9;   in_high11 <= out_high10;
            in_low12  <= out_low11;    in_low13  <= out_low12;
            in_high12 <= out_high11;   in_high13 <= out_high12;
            in_low14  <= out_low13;    in_low15  <= out_low14;
            in_high14 <= out_high13;   in_high15 <= out_high14;
            in_low16  <= out_low15;    in_low17  <= out_low16;
            in_high16 <= out_high15;   in_high17 <= out_high16;
            in_low18  <= out_low17;    in_low19  <= out_low18;
            in_high18 <= out_high17;   in_high19 <= out_high18;
            in_low20  <= out_low19;    in_low21  <= out_low20;
            in_high20 <= out_high19;   in_high21 <= out_high20;
            in_low22  <= out_low21;    in_low23  <= out_low22;
            in_high22 <= out_high21;   in_high23 <= out_high22;
            in_low24  <= out_low23;    in_low25  <= out_low24;
            in_high24 <= out_high23;   in_high25 <= out_high24;
            in_low26  <= out_low25;    in_low27  <= out_low26;
            in_high26 <= out_high25;   in_high27 <= out_high26;
            in_low28  <= out_low27;    in_low29  <= out_low28;
            in_high28 <= out_high27;   in_high29 <= out_high28;
            in_low30  <= out_low29;    in_low31  <= out_low30;
            in_high30 <= out_high29;   in_high31 <= out_high30;
            in_low32  <= out_low31;    ciphertext[15:0]<= out_high32;
            in_high32 <= out_high31;   ciphertext[31:16] <= out_low32;
      end
end  

single_block E1(        
  .in_low(in_low1),
  .in_high(in_high1),
  .out_low(out_low1),
  .out_high(out_high1),
  .in_key(key[0])
);
single_block E2(        
  .in_low(in_low2),
  .in_high(in_high2),
  .out_low(out_low2),
  .out_high(out_high2),
  .in_key(key[1])
);
single_block E3(
  .in_low(in_low3),
  .in_high(in_high3),
  .out_low(out_low3),
  .out_high(out_high3),
  .in_key(key[2])
);
single_block E4(
  .in_low(in_low4),
  .in_high(in_high4),
  .out_low(out_low4),
  .out_high(out_high4),
  .in_key(key[3])
);
single_block E5(
  .in_low(in_low5),
  .in_high(in_high5),
  .out_low(out_low5),
  .out_high(out_high5),
  .in_key(key[4])
);
single_block E6(
  .in_low(in_low6),
  .in_high(in_high6),
  .out_low(out_low6),
  .out_high(out_high6),
  .in_key(key[5])
);
single_block E7(
  .in_low(in_low7),
  .in_high(in_high7),
  .out_low(out_low7),
  .out_high(out_high7),
  .in_key(key[6])
);
single_block E8(
  .in_low(in_low8),
  .in_high(in_high8),
  .out_low(out_low8),
  .out_high(out_high8),
  .in_key(key[7])
);
single_block E9(
  .in_low(in_low9),
  .in_high(in_high9),
  .out_low(out_low9),
  .out_high(out_high9),
  .in_key(key[8])
);
single_block E10(
  .in_low(in_low10),
  .in_high(in_high10),
  .out_low(out_low10),
  .out_high(out_high10),
  .in_key(key[9])
);
single_block E11(
  .in_low(in_low11),
  .in_high(in_high11),
  .out_low(out_low11),
  .out_high(out_high11),
  .in_key(key[10])
);
single_block E12(
  .in_low(in_low12),
  .in_high(in_high12),
  .out_low(out_low12),
  .out_high(out_high12),
  .in_key(key[11])
);
single_block E13(
  .in_low(in_low13),
  .in_high(in_high13),
  .out_low(out_low13),
  .out_high(out_high13),
  .in_key(key[12])
);
single_block E14(
  .in_low(in_low14),
  .in_high(in_high14),
  .out_low(out_low14),
  .out_high(out_high14),
  .in_key(key[13])
);
single_block E15(
  .in_low(in_low15),
  .in_high(in_high15),
  .out_low(out_low15),
  .out_high(out_high15),
  .in_key(key[14])
);
single_block E16(
  .in_low(in_low16),
  .in_high(in_high16),
  .out_low(out_low16),
  .out_high(out_high16),
  .in_key(key[15])
);
single_block E17(
  .in_low(in_low17),
  .in_high(in_high17),
  .out_low(out_low17),
  .out_high(out_high17),
  .in_key(key[16])
);
single_block E18(
  .in_low(in_low18),
  .in_high(in_high18),
  .out_low(out_low18),
  .out_high(out_high18),
  .in_key(key[17])
);
single_block E19(
  .in_low(in_low19),
  .in_high(in_high19),
  .out_low(out_low19),
  .out_high(out_high19),
  .in_key(key[18])
);
single_block E20(
  .in_low(in_low20),
  .in_high(in_high20),
  .out_low(out_low20),
  .out_high(out_high20),
  .in_key(key[19])
);
single_block E21(
  .in_low(in_low21),
  .in_high(in_high21),
  .out_low(out_low21),
  .out_high(out_high21),
  .in_key(key[20])
);
single_block E22(
  .in_low(in_low22),
  .in_high(in_high22),
  .out_low(out_low22),
  .out_high(out_high22),
  .in_key(key[21])
);
single_block E23(
  .in_low(in_low23),
  .in_high(in_high23),
  .out_low(out_low23),
  .out_high(out_high23),
  .in_key(key[22])
);
single_block E24(
  .in_low(in_low24),
  .in_high(in_high24),
  .out_low(out_low24),
  .out_high(out_high24),
  .in_key(key[23])
);
single_block E25(
  .in_low(in_low25),
  .in_high(in_high25),
  .out_low(out_low25),
  .out_high(out_high25),
  .in_key(key[24])
);
single_block E26(
  .in_low(in_low26),
  .in_high(in_high26),
  .out_low(out_low26),
  .out_high(out_high26),
  .in_key(key[25])
);
single_block E27(
  .in_low(in_low27),
  .in_high(in_high27),
  .out_low(out_low27),
  .out_high(out_high27),
  .in_key(key[26])
);
single_block E28(
  .in_low(in_low28),
  .in_high(in_high28),
  .out_low(out_low28),
  .out_high(out_high28),
  .in_key(key[27])
);
single_block E29(
  .in_low(in_low29),
  .in_high(in_high29),
  .out_low(out_low29),
  .out_high(out_high29),
  .in_key(key[28])
);
single_block E30(
  .in_low(in_low30),
  .in_high(in_high30),
  .out_low(out_low30),
  .out_high(out_high30),
  .in_key(key[29])
);
single_block E31(
  .in_low(in_low31),
  .in_high(in_high31),
  .out_low(out_low31),
  .out_high(out_high31),
  .in_key(key[30])
);
single_block E32(
  .in_low(in_low32),
  .in_high(in_high32),
  .out_low(out_low32),
  .out_high(out_high32),
  .in_key(key[31])
);

endmodule