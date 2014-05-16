void funcex0 (void);         //Declarando que será usada uma função interupção
void funcex1 (void);         //Declarando que será usada uma função interupção
int i;
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
              P0=0b10001111;    //poderia usar o 0x0f
              Delay_ms(100);
              P0=0b11110000;
              Delay_ms(1000);
     }
}

void funcex0 (void)  org IVT_ADDR_EX0{
     P0=0b0101010101;
}
void funcex1 (void) org IVT_ADDR_EX1{
     P0=0b00110011;
     for(i=0; i<10; i++){
        P1_4_bit = 0;
        Delay_ms(100);
        P1_4_bit = 1;
        Delay_ms(100);
     }
}
