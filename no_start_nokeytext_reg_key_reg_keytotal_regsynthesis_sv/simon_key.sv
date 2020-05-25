module simon_key(
  input  rst, clk,
  output reg [511:0] key_total
);

	reg [15:0] key [0:31];
	
	
    wire [15:0] c;
    wire [61:0] z;
	wire [63:0] keytext;
	
	reg [5:0] counter;

	assign keytext = 64'h1918111009080100;

    reg [15:0] temp0;
    reg [15:0] temp1;
    reg [15:0] temp2;
    reg [15:0] temp3;
    reg [15:0] temp4;
	reg [15:0] temp5;
	reg [15:0] temp_out;
	reg [5:0]  z_c; 
	reg [5:0] key_counter;
    assign c = 16'hfffc;
	assign z = 62'b01100111000011010100100010111110110011100001101010010001011111;
	
always @( posedge clk )
begin

	key_total[15:0]   <= key[0];
	key_total[31:16]  <= key[1];
	key_total[47:32]  <= key[2];
	key_total[63:48]  <= key[3];
	key_total[79:64]  <= key[4];
	key_total[95:80]  <= key[5];
	key_total[111:96] <= key[6];
	key_total[127:112]<= key[7];
	key_total[143:128]<= key[8];
	key_total[159:144]<= key[9];
	key_total[175:160]<= key[10];
	key_total[191:176]<= key[11];
	key_total[207:192]<= key[12];
	key_total[223:208]<= key[13];
	key_total[239:224]<= key[14];
	key_total[255:240]<= key[15];
	key_total[271:256]<= key[16];
	key_total[287:272]<= key[17];
	key_total[303:288]<= key[18];
	key_total[319:304]<= key[19];
	key_total[335:320]<= key[20];
	key_total[351:336]<= key[21];
	key_total[367:352]<= key[22];
	key_total[383:368]<= key[23];
	key_total[399:384]<= key[24];
	key_total[415:400]<= key[25];
	key_total[431:416]<= key[26];
	key_total[447:432]<= key[27];
	key_total[463:448]<= key[28];
	key_total[479:464]<= key[29];
	key_total[495:480]<= key[30];
	key_total[511:496]<= key[31];

    if (!rst)  
      begin
	  	key[0] <= keytext[63:48];
		key[1] <= keytext[47:32];
		key[2] <= keytext[31:16];
		key[3] <= keytext[15:0];
	  	key_total[15:0]   <= key[0];
		key_total[31:16]  <= key[1];
		key_total[47:32]  <= key[2];
		key_total[63:48]  <= key[3];

        counter <= 'b0;
	    temp0 <= 'b0;
	    temp1 <= 'b0;
	    temp2 <= 'b0;
	    temp3 <= 'b0;
      end
    else if(counter == 28) 
	begin 
       key[key_counter] <= temp_out;
	   counter <= 'b0;
	
    end
    else if (counter == 0)
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
    else
    begin
    key[key_counter] <= temp_out;
	temp0 <= temp1;
	temp1 <= temp2;
	temp2 <= temp3;
	temp3 <= temp_out;

	counter <= counter +1;
	end
end

always@(*)
begin
    key_counter = counter+3;
    if (counter == 0)
	z_c = counter;
    else z_c = counter-1;  //modify
	temp4 = {temp3[2:0],temp3[15:3]};
	temp4 = temp4 ^ temp1;
	temp5 = temp4 ^ {temp4[0],temp4[15:1]};
	temp_out = temp0 ^ temp5 ^ (c ^ z[z_c]);
end
endmodule