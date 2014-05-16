void main() {
    //configuração de hardware
    TR0_bit=0;
    TF0_bit=0;

    TMOD = 0b00000110; /* configurando o TMOD (Time Mode Register):
                        * Registrador que permite controlar as atividades de cada timers que temos.
                        */
    TL0 = (256-5);     //valor  inicial, quando for precionado 5 vezes ele ativa
    TH0 = (256-5);     //valor recarga
    TR0_bit = 1;       //ligar o timer
    
       while(1){        //Loop infinito
          while(!TF0_bit);
          TF0_bit = 0;
          //P0 = 0b01010101; ou
          P0 = -P0;
       
       }
                        
}
