void funcex0 (num);         //Declarando que será usada uma função interupção
//void funcex1 (void);         //Declarando que será usada uma função interupção
int i, j, k, l, numero, num;
char setseg[]= {0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};

void main() {
     //configurando interupção
     EA_bit = 1;                /*Registrador IE - Interrupt Enable Register -A8h o EA esta na posição IE.7
                                 *O bit especial EA é responsável para habilitar todas as interrupções.
                                 *
                                 */

//++ Configurando interrupção INT0 ++
     EX0_bit = 1;               /*Habilitando INT0
                                 *Localizado no Registrador IE - Interrupt Enable Register -A8h o EX0 esta na posição IE.0
                                 *Habilita/desabilita  interrupção gerada pela INT0
                                 */
     IT0_bit = 1;               /*nível=1 Sensivel a borda (Funciona quando aperta)
                                 *nível=0 Sencivel a nível (Enquanto estiver precissionada)
                                 */

     PX0L_bit = 0;              /*Registrador IP - Interrupt Priority Register - B8h o PX0 esta na posição IP.0
                                 *O PX0
                                 *em 0 PRIORIDADE BAIXA
                                */


     EX1_bit = 1;               /*Habilitando INT1
                                 *Localizado no Registrador IE - Interrupt Enable Register -A8h o EX1 esta na posição IE.2
                                 *Habilita/desabilita  interrupção gerada pela INT0
                                 */
     IT1_bit = 0;               //nível=1 reiniciar o código, borda = 0 vai reiniciar o programa mas se segurar apertado fica onde esta
     PX1L_bit = 1;              //1 PRIORIDADE ALTA

     for(;;){
        for(j=0; j<10;j++){
          for(k=0; k<10;k++){
            for(l=0; l<50;l++){
               P3_2_bit = 0;
               P3_3_bit = 1;
               P0=setseg[j];
               Delay_ms(10);

               P3_2_bit = 1;
               P3_3_bit = 0;
               P0=setseg[k];
               Delay_ms(10);
               num=setseg[k];
            }
          }
        }
     }
}

void funcex0 (num)  org IVT_ADDR_EX0{
     P3_2_bit = 1;
     P3_3_bit = 1;
     P0=num;
     for(numero=0;numero<1000;numero++)
         Delay_ms(10);
}
/*void funcex1 (void) org IVT_ADDR_EX1{
     P0=0b00110011;
     for(i=0; i<10; i++){
        P1_4_bit = 0;
        Delay_ms(100);
        P1_4_bit = 1;
        Delay_ms(100);
     }
} */
