#line 1 "C:/Users/Samuel/Desktop/Projetos 8051ED2/displaySeg/sevencont.c"

void TempoEspera();
void ImprimeDisp(int Decimal, int Unidade);


int contador;
char setseg[]= {0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};


void main(){
 int DecimalValor, UnidadeValor;

 for(;;){
 P3_2_bit=1;
 P3_3_bit=1;
 for(DecimalValor=0; DecimalValor<10; DecimalValor++){
 for(UnidadeValor=0; UnidadeValor<10; UnidadeValor++){
 ImprimeDisp(DecimalValor, UnidadeValor);
 }
 }
 }
}

void TempoEspera(){
 Delay_ms(5);
}

void ImprimeDisp(int Decimal, int Unidade){
 for(contador=0; contador<10; contador++){
 P3_2_bit = 0;
 P3_3_bit = 1;
 P0=setseg[Decimal];
 TempoEspera();
 P3_2_bit = 1;
 P3_3_bit = 0;
 P0=setseg[Unidade];
 TempoEspera();
 }
}
