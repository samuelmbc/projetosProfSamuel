#line 1 "C:/Users/Samuel/Desktop/Projetos 8051ED2/TemporizadorCont/temporizador2.c"
void main() {

 TR0_bit=0;
 TF0_bit=0;
 TR1_bit=0;
 TF1_bit=0;
#line 9 "C:/Users/Samuel/Desktop/Projetos 8051ED2/TemporizadorCont/temporizador2.c"
 TMOD = 0b01100110;
 TL0 = (256-5);
 TH0 = (256-5);
 TL1 = (256-10);
 TH1 = (256-10);
 TR0_bit = 1;
 TR1_bit = 1;

 while(1){
 while(!TF0_bit);
 TF0_bit = 0;
 P0 = 0b01010101;

 while(!TF1_bit);
 TF1_bit = 0;
 P0 = 0b01010101;

 Delay_ms (1000);
 P1_4_bit = 1;
 }
}
