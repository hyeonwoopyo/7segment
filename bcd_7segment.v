module BCD_7(bcd, segment);                                                                         //BCD_7 모듈

input [3:0] bcd;                                                                                            //입력으로 4비트의 BCD코드 입력

output reg [6:0] segment;                                                                              //출력으로 7비트 Segment 표시

always@(bcd)

begin

 case(bcd)

  4'd0 : segment = 7'b111_1110;                                                                     //BCD 0000일 때, 111_1110(High Logic Level)

  4'd1 : segment = 7'b011_0000;                                                                     //BCD 0001일 때, 011_0000

  4'd2 : segment = 7'b110_1101;                                                                     //BCD 0010일 때, 110_1101

  4'd3 : segment = 7'b111_1001;                                                                     //BCD 0011일 때, 111_1001

  4'd4 : segment = 7'b011_0011;                                                                     //BCD 0100일 때, 011_0011

  4'd5 : segment = 7'b101_1011;                                                                     //BCD 0101일 때, 101_1011

  4'd6 : segment = 7'b101_1111;                                                                     //BCD 0110일 때, 101_1111

  4'd7 : segment = 7'b111_0000;                                                                     //BCD 0111일 때, 111_0000

  4'd8 : segment = 7'b111_1111;                                                                     //BCD 1000일 때, 111_1111

  4'd9 : segment = 7'b111_1011;                                                                     //BCD 1001일 때, 111_1011

  

  default : segment = 7'b000_0000;                                                                  //Error방지를 위해 Default값 설정

 endcase

end

endmodule