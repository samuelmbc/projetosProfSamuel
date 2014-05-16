#line 1 "C:/Users/Samuel/Desktop/Projetos 8051ED2/BotaoPrimeiroContato/Bortao.c"


void main() {
 for(;;){
 if(P1_0_bit==0){
 P0_4_bit=0;
 Delay_ms(500);
 P0=240;
 Delay_ms(500);
 P0= 0b00010001;
 Delay_ms(500);
 P0= 0xAA;
 Delay_ms(500);
 }
 if(!P1_1_bit){

 P0=255;
 Delay_ms(250);
 }
 }
}
