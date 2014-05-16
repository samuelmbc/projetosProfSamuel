#line 1 "C:/Users/Samuel/Desktop/Projetos 8051ED2/interrupcaoATPS/ATPSmeca.c"
void funcex0 (num);

int i, j, k, l, numero, num;
char setseg[]= {0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};

void main() {
#line 11 "C:/Users/Samuel/Desktop/Projetos 8051ED2/interrupcaoATPS/ATPSmeca.c"
 EA_bit = 1;
#line 17 "C:/Users/Samuel/Desktop/Projetos 8051ED2/interrupcaoATPS/ATPSmeca.c"
 EX0_bit = 1;
#line 20 "C:/Users/Samuel/Desktop/Projetos 8051ED2/interrupcaoATPS/ATPSmeca.c"
 IT0_bit = 1;
#line 25 "C:/Users/Samuel/Desktop/Projetos 8051ED2/interrupcaoATPS/ATPSmeca.c"
 PX0L_bit = 0;
#line 31 "C:/Users/Samuel/Desktop/Projetos 8051ED2/interrupcaoATPS/ATPSmeca.c"
 EX1_bit = 1;
 IT1_bit = 0;
 PX1L_bit = 1;

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

void funcex0 (num) org IVT_ADDR_EX0{
 P3_2_bit = 1;
 P3_3_bit = 1;
 P0=num;
 for(numero=0;numero<1000;numero++)
 Delay_ms(10);
}
