#line 1 "C:/Users/Samuel/Desktop/Projetos 8051ED2/Interrupcao/interru_intZero.c"
void funcex0 (void);
void funcex1 (void);
int i;
void main() {
#line 9 "C:/Users/Samuel/Desktop/Projetos 8051ED2/Interrupcao/interru_intZero.c"
 EA_bit = 1;
#line 15 "C:/Users/Samuel/Desktop/Projetos 8051ED2/Interrupcao/interru_intZero.c"
 EX0_bit = 1;
#line 18 "C:/Users/Samuel/Desktop/Projetos 8051ED2/Interrupcao/interru_intZero.c"
 IT0_bit = 1;
#line 23 "C:/Users/Samuel/Desktop/Projetos 8051ED2/Interrupcao/interru_intZero.c"
 PX0L_bit = 0;
#line 29 "C:/Users/Samuel/Desktop/Projetos 8051ED2/Interrupcao/interru_intZero.c"
 EX1_bit = 1;
 IT1_bit = 0;
 PX1L_bit = 1;

 for(;;){
 P0=0b10001111;
 Delay_ms(100);
 P0=0b11110000;
 Delay_ms(1000);
 }
}

void funcex0 (void) org IVT_ADDR_EX0{
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
