#line 1 "C:/Users/Samuel/Desktop/Projetos 8051ED2/TesteBotao/TestBotao1.c"
void main()
{ for(;;)
 {
 if(P1_0_bit==0)
 {
 P0 = 0b00110011;

 }else{
 if(!P1_1_bit)
 {
 P0 = 0b11110000;
 P1_4_bit = 0;

 }else{
 P0 = 0b11111111;
 P1_4_bit = 1;

 }
 }
 }
}
