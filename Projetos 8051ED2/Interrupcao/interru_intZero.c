void funcex0 (void);         //Declarando que ser� usada uma fun��o interup��o
void funcex1 (void);         //Declarando que ser� usada uma fun��o interup��o
int i;
void main() {
     //configurando interup��o
     EA_bit = 1;                /*Registrador IE - Interrupt Enable Register -A8h o EA esta na posi��o IE.7
                                 *O bit especial EA � respons�vel para habilitar todas as interrup��es.
                                 *
                                 */

//++ Configurando interrup��o INT0 ++
     EX0_bit = 1;               /*Habilitando INT0
                                 *Localizado no Registrador IE - Interrupt Enable Register -A8h o EX0 esta na posi��o IE.0
                                 *Habilita/desabilita  interrup��o gerada pela INT0
                                 */
     IT0_bit = 1;               /*n�vel=1 Sensivel a borda (Funciona quando aperta)
                                 *n�vel=0 Sencivel a n�vel (Enquanto estiver precissionada)
                                 */
                                  
     PX0L_bit = 0;              /*Registrador IP - Interrupt Priority Register - B8h o PX0 esta na posi��o IP.0
                                 *O PX0
                                 *em 0 PRIORIDADE BAIXA
                                */


     EX1_bit = 1;               /*Habilitando INT1
                                 *Localizado no Registrador IE - Interrupt Enable Register -A8h o EX1 esta na posi��o IE.2
                                 *Habilita/desabilita  interrup��o gerada pela INT0
                                 */
     IT1_bit = 0;               //n�vel=1 reiniciar o c�digo, borda = 0 vai reiniciar o programa mas se segurar apertado fica onde esta
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
