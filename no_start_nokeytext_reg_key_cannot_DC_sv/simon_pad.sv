module simon_pad(
    input pad_clk,
    input pad_rst,
    input [31:0] pad_plaintext,
    
    output reg [31:0] pad_ciphertext
);

wire [31:0] plaintext;
wire clk;
wire rst;
  
wire [31:0] ciphertext;

simon_pipeline s1(
    .plaintext(plaintext),
    .clk(clk),
    .rst(rst),
    .ciphertext(ciphertext)
);

PI PAD_CLK(.PAD(pad_clk),.IE(1'b1),.C(clk));
PI PAD_RST(.PAD(pad_rst),.IE(1'b1),.C(rst));

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