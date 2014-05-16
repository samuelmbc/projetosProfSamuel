#line 1 "C:/Users/Samuel/Desktop/Projetos 8051ED2/PiscaLed/PiscaLed.c"
void main() {
 for(;;){
 int i;
 for(i=0;i<=10;i++){
 P0_0_bit = 0;
 Delay_ms(500);
 P0_0_bit = 1;
 Delay_ms(500);
 }
 for(i=0;i<=10;i++){
 P0 = 0;
 Delay_ms(500);
 P0 = 254;
 Delay_ms(500);
 }
 for(i=0;i<=10;i++){
 P0 = 0b00000000;
 Delay_ms(500);
 P0 = 0b00011010;
 Delay_ms(500);
 }

 for(i=0;i<=10;i++){
 P0 = 0x00;
 Delay_ms(500);
 P0 = 0xff;
 Delay_ms(500);
 }
 P0 = 255;
 }
}
