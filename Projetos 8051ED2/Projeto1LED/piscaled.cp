#line 1 "C:/Users/Samuel/Desktop/Projetos 8051ED2/Projeto1LED/piscaled.c"
void main() {
 for(;;){
 P0_1_bit = 0;
 P0_7_bit = 0;
 Delay_ms(1000);
 P0_1_bit = 1;
 P0_7_bit = 1;
 Delay_ms(500);
 }
}
