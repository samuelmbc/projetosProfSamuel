//declaração de funções a serem utilizadas
void TempoEspera();  //declaração de que haverá uma função no código
void ImprimeDisp(int Decimal, int Unidade);

//declaração de variáveis globais
int contador;
char setseg[]= {0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};

//programa principal
void main(){
     int DecimalValor, UnidadeValor; // declaração de variaveis numeros inteiros
                                     //internos ao bloco main
     for(;;){
        P3_2_bit=1;  //desligado - Ligacao do Display Decada
        P3_3_bit=1;  //desligado Ligação Display Unidade
        for(DecimalValor=0; DecimalValor<10; DecimalValor++){ //contagem unidade
            for(UnidadeValor=0; UnidadeValor<10; UnidadeValor++){ //contagem unidade
                ImprimeDisp(DecimalValor, UnidadeValor);
            } //fim contagem unidade
        }  //fim contagem Decimal
     }
}

void TempoEspera(){
     Delay_ms(5);
}

void ImprimeDisp(int Decimal, int Unidade){
     for(contador=0; contador<10; contador++){ //25*(10+10) = 500 ms. ==> rodadas * espera 1 + espera 2
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

/*
void TempoEspera();

void main() {
     unsigned char a;                           //variavel
     code unsigned char setseg[]= {0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
     //code designa para ROM
            int a,b, c;
      char setseg[]= {0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
      
     //precisamos habiliar o p3
     P3_2_bit=1;  //desligado - Ligacao do Display Decada
     P3_3_bit=1;  //desligado Ligação Display Unidade
     P0=0xFF; //zerado

              for(;;){
                  P3_2_bit = 0;
                  P3_3_bit = 1;
                  TempoEspera();
                  P0=0xFF; //zerado
                  for(a=0; a<10;a++){
                      for(b=0; b<10;b++){
                          for(c=0; c<50;c++){
                              P3_2_bit = 0;
                              P3_3_bit = 1;
                              //P0=0xFF;
                              P0=setseg[a];
                              TempoEspera();
                              P3_2_bit = 1;
                              P3_3_bit = 0;
                             // P0=0xFF;
                              P0=setseg[b];
                              TempoEspera();
                          }
                      }
                  }

              }
}

void TempoEspera(){
     Delay_ms(5);
} */
