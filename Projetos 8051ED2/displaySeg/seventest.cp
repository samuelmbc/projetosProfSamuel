#line 1 "C:/Users/Samuel/Desktop/Projetos 8051ED2/displaySeg/seventest.c"
void main() {

 code unsigned char setseg[]= {0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};

 int a;

 P3_2_bit=1;
 P3_3_bit=1;
 P0=0xFF;

 for(;;){
 P3_2_bit = 0;
 P3_3_bit = 1;
 P0=0xFF;

 for(a=0; a<10;a++){
 P0=setseg[a];
 Delay_ms(500);
 }
 P3_2_bit = 1;
 P3_3_bit = 0;
 P0=0xFF;

 for(a=9;a>=0;a--){
 P0=setseg[a];
 Delay_ms(500);
 }
 }
}
