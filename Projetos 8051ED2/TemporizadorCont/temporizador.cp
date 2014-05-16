#line 1 "C:/Users/Samuel/Desktop/Projetos 8051ED2/TemporizadorCont/temporizador.c"
void main() {

 TR0_bit=0;
 TF0_bit=0;
#line 8 "C:/Users/Samuel/Desktop/Projetos 8051ED2/TemporizadorCont/temporizador.c"
 TMOD = 0b00000110;
 TL0 = (256-5);
 TH0 = (256-5);
 TR0_bit = 1;

 while(1){
 while(!TF0_bit);
 TF0_bit = 0;

 P0 = -P0;

 }

}
