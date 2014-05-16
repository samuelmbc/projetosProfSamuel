#line 1 "C:/Users/Samuel/Desktop/Projetos 8051ED2/BotaoPrimeiroContato/botaoefucai.c"
void loopFuncao();

void main() {
 for(;;){
 if(P1_0_bit==0){
 P0_4_bit=0;
 Delay_ms(500);
 }
 if(!P1_1_bit){

 P0=255;
 Delay_ms(250);
 }
 if(P1_2_bit==0){
 loopFuncao();
 }
 }
}

void loopFuncao(){
 for(;;){
 P0 = 0;
 Delay_ms(500);
 P0 = 254;
 Delay_ms(500);
 if(P1_3_bit==0){
 P0 = 255;
 return;
 }
 }
}
