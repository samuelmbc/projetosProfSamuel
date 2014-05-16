#line 1 "C:/Users/Samuel/Desktop/Projetos 8051ED2/Exercicio23_2014/exercicioIfElseFor.c"
void ligaBuzzer();
void desligaBuzzer();
void ligaRele();
void desligaRele();
void Leds(int valorLed, int condTempo);

void main() {
 int i;
 for(;;){
 if(P1_0_bit == 0){
 ligaBuzzer();
 }else{
 Leds(250,1);
 Leds(255,3);
 }
 Delay_ms(500);
 if(P1_1_bit == 0){
 ligaRele();
 Delay_ms(500);
 desligaRele();
 }else{
 Leds(213,2);
 Leds(255,3);
 }
 Delay_ms(500);
 if(P1_2_bit == 0){
 ligaRele();
 Delay_ms(500);
 ligaBuzzer();
 desligaRele();
 }else{
 Leds(94,2);
 Leds(255,3);
 }
 Delay_ms(500);
 if(P1_3_bit == 0){
 for(i=0;i<=10;i++){
 Leds(0,1);
 Leds(255,1);
 }
 }
 }
}


void ligaBuzzer(){
 P1_4_bit = 0;
 Delay_ms(100);
 desligaBuzzer();
}
void desligaBuzzer(){P1_4_bit = 1;}

void ligaRele(){P1_5_bit = 0; }
void desligaRele(){P1_5_bit = 1; }

void Leds(int valorLed, int condTempo){
 P0 = valorLed;
 if(condTempo == 0)
 Delay_ms(100);
 if(condTempo == 1)
 Delay_ms(500);
 if(condTempo == 2)
 Delay_ms(1000);
}
