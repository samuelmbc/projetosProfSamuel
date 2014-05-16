#line 1 "C:/Users/Samuel/Desktop/Projetos 8051ED2/PiscaLed2/PiscaLed2.c"
void main() {
 for(;;){
 if(P1_0_bit==0){
 P0_0_bit = 0;
 Delay_ms(100);
 while(P1_0_bit==1){
 }
 Delay_ms(100);
 }else{
 P0_0_bit = 1;
 }
 }
}
