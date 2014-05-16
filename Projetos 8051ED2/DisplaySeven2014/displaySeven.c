void main(){
     int i;
     char vetDisplay[]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90,0x88,0x83,0xC6,0xA1,0x86,0x8E,0xBF};
     P3_2_bit=1;      //desligado   display 1 (escrito na Placa)
     P3_3_bit=1;      //desligado   display 2 (escrito na Placa)
     P0 = 0xFF;
     for(;;){
        P3_2_bit=0;      //desligado   display 1 (escrito na Placa)
        P3_3_bit=0;      //Ligado   display 2 (escrito na Placa)
        for(i=0;i<10;i++){
            P0 = vetDisplay[i];     //a cada incremento de i passa traz uma posição do verto.
            Delay_ms(500);
        }
        P0 = 0xBF;
        Delay_ms(500);
        for(i=9;i>=0;i--){
            P0 = vetDisplay[i];     //a cada incremento de i passa traz uma posição do verto.
            Delay_ms(500);
        }
     }
}










/*     for(;;){
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
     }*/


