#line 1 "C:/Users/Samuel/Desktop/Projetos 8051ED2/DisplaySeven2014/displaySeven.c"
void main(){
 int i;
 char vetDisplay[]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90,0x88,0x83,0xC6,0xA1,0x86,0x8E,0xBF};
 P3_2_bit=1;
 P3_3_bit=1;
 P0 = 0xFF;
 for(;;){
 P3_2_bit=0;
 P3_3_bit=0;
 for(i=0;i<10;i++){
 P0 = vetDisplay[i];
 Delay_ms(500);
 }
 P0 = 0xBF;
 Delay_ms(500);
 for(i=9;i>=0;i--){
 P0 = vetDisplay[i];
 Delay_ms(500);
 }
 }
}
