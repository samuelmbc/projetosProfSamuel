void main() {
     //unsigned char a;                           //variavel
     code unsigned char setseg[]= {0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
     //code designa para ROM
     int a;
     //precisamos habiliar o p3
     P3_2_bit=1;  //desligado
     P3_3_bit=1;  //desligado
     P0=0xFF; //zerado
     
              for(;;){
                  P3_2_bit = 0; //ligando
                  P3_3_bit = 1; //deseligado
                  P0=0xFF; //zerado
                  
                  for(a=0; a<10;a++){
                      P0=setseg[a];
                      Delay_ms(500);
                  }
                  P3_2_bit = 1; //Desligado
                  P3_3_bit = 0; //ligando
                  P0=0xFF; //zerado

                  for(a=9;a>=0;a--){
                      P0=setseg[a];
                      Delay_ms(500);
                  }
              }
}
