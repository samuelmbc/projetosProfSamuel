void main() {
    //configuração de hardware  usando contador T0
    TR0_bit=0;
    TF0_bit=0;
    TR1_bit=0;
    TF1_bit=0;
    TMOD = 0b01100110; /* configurando o TMOD (Time Mode Register):
                        * Registrador que permite controlar as atividades de cada timers que temos.
                        */
    TL0 = (256-5);     //valor  inicial, quando for precionado 5 vezes ele ativa
    TH0 = (256-5);     //valor recarga
    TL1 = (256-10);     //valor  inicial, quando for precionado 5 vezes ele ativa
    TH1 = (256-10);     //valor recarga
    TR0_bit = 1;       //ligar o timer
    TR1_bit = 1;       //ligar o timer

       while(1){        //Loop infinito
          while(!TF0_bit);
          TF0_bit = 0;
          P0 = 0b01010101; //ou
          //P0 = -P0;
          while(!TF1_bit);
          TF1_bit = 0;
          P0 = 0b01010101; //ou
       //   P1_4_bit = 0; //liga o buzzer
          Delay_ms (1000);
          P1_4_bit = 1; //liga o buzzer
       }
}
