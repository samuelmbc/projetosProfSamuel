#line 1 "C:/Users/Samuel/Desktop/Projetos 8051ED2/Buzzer com led/buzzerled.c"
void main()
{ int i;
 int f;
 for(;;)
 {
 if(!P1_0_bit)
 {
 for(i=0;i<100;i++){
 P1_4_bit = 0;
 P0_1_bit = 0;
 for(f=0;f<1000;f++){}
 P1_4_bit = 1;
 P0_1_bit = 1;
 for(f=0;f<1000;f++){}
 }
 }
 if(!P1_1_bit)
 {
 P1_4_bit = 1;
 P0_1_bit = 0;
 }
 if(!P1_2_bit)
 {
 P1_4_bit = 0;
 P0_1_bit = 1;
 }

 if(!P1_3_bit)
 {
 P1_4_bit = 1;
 P0_1_bit = 1;
 }

 }

}
