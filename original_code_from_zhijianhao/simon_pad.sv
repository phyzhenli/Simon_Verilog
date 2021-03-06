module simon_pad(
    input [31:0] pad_plaintext,
    input pad_clk,
    input pad_rst,
    input pad_start,
    input [63:0] pad_keytext,
    
    output reg [31:0] pad_ciphertext
);

wire [31:0] plaintext;
wire clk;
wire rst;
wire start;
wire [63:0] keytext;
  
wire [31:0] ciphertext;

simon_pipeline s1(
    .plaintext(plaintext),
    .clk(clk),
    .rst(rst),
    .start(start),
    .keytext(keytext),
    .ciphertext(ciphertext)
);

PI PAD_CLK(.PAD(pad_clk),.IE(1'b1),.C(clk));
PI PAD_RST(.PAD(pad_rst),.IE(1'b1),.C(rst));
PI PAD_START(.PAD(pad_start),.IE(1'b1),.C(start));

PI PAD_KEYTEXT_0(.PAD(pad_keytext[0]),.IE(1'b1),.C(keytext[0]));
PI PAD_KEYTEXT_1(.PAD(pad_keytext[1]),.IE(1'b1),.C(keytext[1]));
PI PAD_KEYTEXT_2(.PAD(pad_keytext[2]),.IE(1'b1),.C(keytext[2]));
PI PAD_KEYTEXT_3(.PAD(pad_keytext[3]),.IE(1'b1),.C(keytext[3]));
PI PAD_KEYTEXT_4(.PAD(pad_keytext[4]),.IE(1'b1),.C(keytext[4]));
PI PAD_KEYTEXT_5(.PAD(pad_keytext[5]),.IE(1'b1),.C(keytext[5]));
PI PAD_KEYTEXT_6(.PAD(pad_keytext[6]),.IE(1'b1),.C(keytext[6]));
PI PAD_KEYTEXT_7(.PAD(pad_keytext[7]),.IE(1'b1),.C(keytext[7]));
PI PAD_KEYTEXT_8(.PAD(pad_keytext[8]),.IE(1'b1),.C(keytext[8]));
PI PAD_KEYTEXT_9(.PAD(pad_keytext[9]),.IE(1'b1),.C(keytext[9]));
PI PAD_KEYTEXT_10(.PAD(pad_keytext[10]),.IE(1'b1),.C(keytext[10]));
PI PAD_KEYTEXT_11(.PAD(pad_keytext[11]),.IE(1'b1),.C(keytext[11]));
PI PAD_KEYTEXT_12(.PAD(pad_keytext[12]),.IE(1'b1),.C(keytext[12]));
PI PAD_KEYTEXT_13(.PAD(pad_keytext[13]),.IE(1'b1),.C(keytext[13]));
PI PAD_KEYTEXT_14(.PAD(pad_keytext[14]),.IE(1'b1),.C(keytext[14]));
PI PAD_KEYTEXT_15(.PAD(pad_keytext[15]),.IE(1'b1),.C(keytext[15]));
PI PAD_KEYTEXT_16(.PAD(pad_keytext[16]),.IE(1'b1),.C(keytext[16]));
PI PAD_KEYTEXT_17(.PAD(pad_keytext[17]),.IE(1'b1),.C(keytext[17]));
PI PAD_KEYTEXT_18(.PAD(pad_keytext[18]),.IE(1'b1),.C(keytext[18]));
PI PAD_KEYTEXT_19(.PAD(pad_keytext[19]),.IE(1'b1),.C(keytext[19]));
PI PAD_KEYTEXT_20(.PAD(pad_keytext[20]),.IE(1'b1),.C(keytext[20]));
PI PAD_KEYTEXT_21(.PAD(pad_keytext[21]),.IE(1'b1),.C(keytext[21]));
PI PAD_KEYTEXT_22(.PAD(pad_keytext[22]),.IE(1'b1),.C(keytext[22]));
PI PAD_KEYTEXT_23(.PAD(pad_keytext[23]),.IE(1'b1),.C(keytext[23]));
PI PAD_KEYTEXT_24(.PAD(pad_keytext[24]),.IE(1'b1),.C(keytext[24]));
PI PAD_KEYTEXT_25(.PAD(pad_keytext[25]),.IE(1'b1),.C(keytext[25]));
PI PAD_KEYTEXT_26(.PAD(pad_keytext[26]),.IE(1'b1),.C(keytext[26]));
PI PAD_KEYTEXT_27(.PAD(pad_keytext[27]),.IE(1'b1),.C(keytext[27]));
PI PAD_KEYTEXT_28(.PAD(pad_keytext[28]),.IE(1'b1),.C(keytext[28]));
PI PAD_KEYTEXT_29(.PAD(pad_keytext[29]),.IE(1'b1),.C(keytext[29]));
PI PAD_KEYTEXT_30(.PAD(pad_keytext[30]),.IE(1'b1),.C(keytext[30]));
PI PAD_KEYTEXT_31(.PAD(pad_keytext[31]),.IE(1'b1),.C(keytext[31]));
PI PAD_KEYTEXT_32(.PAD(pad_keytext[32]),.IE(1'b1),.C(keytext[32]));
PI PAD_KEYTEXT_33(.PAD(pad_keytext[33]),.IE(1'b1),.C(keytext[33]));
PI PAD_KEYTEXT_34(.PAD(pad_keytext[34]),.IE(1'b1),.C(keytext[34]));
PI PAD_KEYTEXT_35(.PAD(pad_keytext[35]),.IE(1'b1),.C(keytext[35]));
PI PAD_KEYTEXT_36(.PAD(pad_keytext[36]),.IE(1'b1),.C(keytext[36]));
PI PAD_KEYTEXT_37(.PAD(pad_keytext[37]),.IE(1'b1),.C(keytext[37]));
PI PAD_KEYTEXT_38(.PAD(pad_keytext[38]),.IE(1'b1),.C(keytext[38]));
PI PAD_KEYTEXT_39(.PAD(pad_keytext[39]),.IE(1'b1),.C(keytext[39]));
PI PAD_KEYTEXT_40(.PAD(pad_keytext[40]),.IE(1'b1),.C(keytext[40]));
PI PAD_KEYTEXT_41(.PAD(pad_keytext[41]),.IE(1'b1),.C(keytext[41]));
PI PAD_KEYTEXT_42(.PAD(pad_keytext[42]),.IE(1'b1),.C(keytext[42]));
PI PAD_KEYTEXT_43(.PAD(pad_keytext[43]),.IE(1'b1),.C(keytext[43]));
PI PAD_KEYTEXT_44(.PAD(pad_keytext[44]),.IE(1'b1),.C(keytext[44]));
PI PAD_KEYTEXT_45(.PAD(pad_keytext[45]),.IE(1'b1),.C(keytext[45]));
PI PAD_KEYTEXT_46(.PAD(pad_keytext[46]),.IE(1'b1),.C(keytext[46]));
PI PAD_KEYTEXT_47(.PAD(pad_keytext[47]),.IE(1'b1),.C(keytext[47]));
PI PAD_KEYTEXT_48(.PAD(pad_keytext[48]),.IE(1'b1),.C(keytext[48]));
PI PAD_KEYTEXT_49(.PAD(pad_keytext[49]),.IE(1'b1),.C(keytext[49]));
PI PAD_KEYTEXT_50(.PAD(pad_keytext[50]),.IE(1'b1),.C(keytext[50]));
PI PAD_KEYTEXT_51(.PAD(pad_keytext[51]),.IE(1'b1),.C(keytext[51]));
PI PAD_KEYTEXT_52(.PAD(pad_keytext[52]),.IE(1'b1),.C(keytext[52]));
PI PAD_KEYTEXT_53(.PAD(pad_keytext[53]),.IE(1'b1),.C(keytext[53]));
PI PAD_KEYTEXT_54(.PAD(pad_keytext[54]),.IE(1'b1),.C(keytext[54]));
PI PAD_KEYTEXT_55(.PAD(pad_keytext[55]),.IE(1'b1),.C(keytext[55]));
PI PAD_KEYTEXT_56(.PAD(pad_keytext[56]),.IE(1'b1),.C(keytext[56]));
PI PAD_KEYTEXT_57(.PAD(pad_keytext[57]),.IE(1'b1),.C(keytext[57]));
PI PAD_KEYTEXT_58(.PAD(pad_keytext[58]),.IE(1'b1),.C(keytext[58]));
PI PAD_KEYTEXT_59(.PAD(pad_keytext[59]),.IE(1'b1),.C(keytext[59]));
PI PAD_KEYTEXT_60(.PAD(pad_keytext[60]),.IE(1'b1),.C(keytext[60]));
PI PAD_KEYTEXT_61(.PAD(pad_keytext[61]),.IE(1'b1),.C(keytext[61]));
PI PAD_KEYTEXT_62(.PAD(pad_keytext[62]),.IE(1'b1),.C(keytext[62]));
PI PAD_KEYTEXT_63(.PAD(pad_keytext[63]),.IE(1'b1),.C(keytext[63]));

PI PAD_PLAINTEXT_0(.PAD(pad_plaintext[0]),.IE(1'b1),.C(plaintext[0]));
PI PAD_PLAINTEXT_1(.PAD(pad_plaintext[1]),.IE(1'b1),.C(plaintext[1]));
PI PAD_PLAINTEXT_2(.PAD(pad_plaintext[2]),.IE(1'b1),.C(plaintext[2]));
PI PAD_PLAINTEXT_3(.PAD(pad_plaintext[3]),.IE(1'b1),.C(plaintext[3]));
PI PAD_PLAINTEXT_4(.PAD(pad_plaintext[4]),.IE(1'b1),.C(plaintext[4]));
PI PAD_PLAINTEXT_5(.PAD(pad_plaintext[5]),.IE(1'b1),.C(plaintext[5]));
PI PAD_PLAINTEXT_6(.PAD(pad_plaintext[6]),.IE(1'b1),.C(plaintext[6]));
PI PAD_PLAINTEXT_7(.PAD(pad_plaintext[7]),.IE(1'b1),.C(plaintext[7]));
PI PAD_PLAINTEXT_8(.PAD(pad_plaintext[8]),.IE(1'b1),.C(plaintext[8]));
PI PAD_PLAINTEXT_9(.PAD(pad_plaintext[9]),.IE(1'b1),.C(plaintext[9]));
PI PAD_PLAINTEXT_10(.PAD(pad_plaintext[10]),.IE(1'b1),.C(plaintext[10]));
PI PAD_PLAINTEXT_11(.PAD(pad_plaintext[11]),.IE(1'b1),.C(plaintext[11]));
PI PAD_PLAINTEXT_12(.PAD(pad_plaintext[12]),.IE(1'b1),.C(plaintext[12]));
PI PAD_PLAINTEXT_13(.PAD(pad_plaintext[13]),.IE(1'b1),.C(plaintext[13]));
PI PAD_PLAINTEXT_14(.PAD(pad_plaintext[14]),.IE(1'b1),.C(plaintext[14]));
PI PAD_PLAINTEXT_15(.PAD(pad_plaintext[15]),.IE(1'b1),.C(plaintext[15]));
PI PAD_PLAINTEXT_16(.PAD(pad_plaintext[16]),.IE(1'b1),.C(plaintext[16]));
PI PAD_PLAINTEXT_17(.PAD(pad_plaintext[17]),.IE(1'b1),.C(plaintext[17]));
PI PAD_PLAINTEXT_18(.PAD(pad_plaintext[18]),.IE(1'b1),.C(plaintext[18]));
PI PAD_PLAINTEXT_19(.PAD(pad_plaintext[19]),.IE(1'b1),.C(plaintext[19]));
PI PAD_PLAINTEXT_20(.PAD(pad_plaintext[20]),.IE(1'b1),.C(plaintext[20]));
PI PAD_PLAINTEXT_21(.PAD(pad_plaintext[21]),.IE(1'b1),.C(plaintext[21]));
PI PAD_PLAINTEXT_22(.PAD(pad_plaintext[22]),.IE(1'b1),.C(plaintext[22]));
PI PAD_PLAINTEXT_23(.PAD(pad_plaintext[23]),.IE(1'b1),.C(plaintext[23]));
PI PAD_PLAINTEXT_24(.PAD(pad_plaintext[24]),.IE(1'b1),.C(plaintext[24]));
PI PAD_PLAINTEXT_25(.PAD(pad_plaintext[25]),.IE(1'b1),.C(plaintext[25]));
PI PAD_PLAINTEXT_26(.PAD(pad_plaintext[26]),.IE(1'b1),.C(plaintext[26]));
PI PAD_PLAINTEXT_27(.PAD(pad_plaintext[27]),.IE(1'b1),.C(plaintext[27]));
PI PAD_PLAINTEXT_28(.PAD(pad_plaintext[28]),.IE(1'b1),.C(plaintext[28]));
PI PAD_PLAINTEXT_29(.PAD(pad_plaintext[29]),.IE(1'b1),.C(plaintext[29]));
PI PAD_PLAINTEXT_30(.PAD(pad_plaintext[30]),.IE(1'b1),.C(plaintext[30]));
PI PAD_PLAINTEXT_31(.PAD(pad_plaintext[31]),.IE(1'b1),.C(plaintext[31]));

PO2 PAD_CIPHERTEXT_0(.PAD(pad_ciphertext[0]),.I(ciphertext[0]));
PO2 PAD_CIPHERTEXT_1(.PAD(pad_ciphertext[1]),.I(ciphertext[1]));
PO2 PAD_CIPHERTEXT_2(.PAD(pad_ciphertext[2]),.I(ciphertext[2]));
PO2 PAD_CIPHERTEXT_3(.PAD(pad_ciphertext[3]),.I(ciphertext[3]));
PO2 PAD_CIPHERTEXT_4(.PAD(pad_ciphertext[4]),.I(ciphertext[4]));
PO2 PAD_CIPHERTEXT_5(.PAD(pad_ciphertext[5]),.I(ciphertext[5]));
PO2 PAD_CIPHERTEXT_6(.PAD(pad_ciphertext[6]),.I(ciphertext[6]));
PO2 PAD_CIPHERTEXT_7(.PAD(pad_ciphertext[7]),.I(ciphertext[7]));
PO2 PAD_CIPHERTEXT_8(.PAD(pad_ciphertext[8]),.I(ciphertext[8]));
PO2 PAD_CIPHERTEXT_9(.PAD(pad_ciphertext[9]),.I(ciphertext[9]));
PO2 PAD_CIPHERTEXT_10(.PAD(pad_ciphertext[10]),.I(ciphertext[10]));
PO2 PAD_CIPHERTEXT_11(.PAD(pad_ciphertext[11]),.I(ciphertext[11]));
PO2 PAD_CIPHERTEXT_12(.PAD(pad_ciphertext[12]),.I(ciphertext[12]));
PO2 PAD_CIPHERTEXT_13(.PAD(pad_ciphertext[13]),.I(ciphertext[13]));
PO2 PAD_CIPHERTEXT_14(.PAD(pad_ciphertext[14]),.I(ciphertext[14]));
PO2 PAD_CIPHERTEXT_15(.PAD(pad_ciphertext[15]),.I(ciphertext[15]));
PO2 PAD_CIPHERTEXT_16(.PAD(pad_ciphertext[16]),.I(ciphertext[16]));
PO2 PAD_CIPHERTEXT_17(.PAD(pad_ciphertext[17]),.I(ciphertext[17]));
PO2 PAD_CIPHERTEXT_18(.PAD(pad_ciphertext[18]),.I(ciphertext[18]));
PO2 PAD_CIPHERTEXT_19(.PAD(pad_ciphertext[19]),.I(ciphertext[19]));
PO2 PAD_CIPHERTEXT_20(.PAD(pad_ciphertext[20]),.I(ciphertext[20]));
PO2 PAD_CIPHERTEXT_21(.PAD(pad_ciphertext[21]),.I(ciphertext[21]));
PO2 PAD_CIPHERTEXT_22(.PAD(pad_ciphertext[22]),.I(ciphertext[22]));
PO2 PAD_CIPHERTEXT_23(.PAD(pad_ciphertext[23]),.I(ciphertext[23]));
PO2 PAD_CIPHERTEXT_24(.PAD(pad_ciphertext[24]),.I(ciphertext[24]));
PO2 PAD_CIPHERTEXT_25(.PAD(pad_ciphertext[25]),.I(ciphertext[25]));
PO2 PAD_CIPHERTEXT_26(.PAD(pad_ciphertext[26]),.I(ciphertext[26]));
PO2 PAD_CIPHERTEXT_27(.PAD(pad_ciphertext[27]),.I(ciphertext[27]));
PO2 PAD_CIPHERTEXT_28(.PAD(pad_ciphertext[28]),.I(ciphertext[28]));
PO2 PAD_CIPHERTEXT_29(.PAD(pad_ciphertext[29]),.I(ciphertext[29]));
PO2 PAD_CIPHERTEXT_30(.PAD(pad_ciphertext[30]),.I(ciphertext[30]));
PO2 PAD_CIPHERTEXT_31(.PAD(pad_ciphertext[31]),.I(ciphertext[31]));

endmodule