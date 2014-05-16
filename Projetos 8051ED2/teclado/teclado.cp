#line 1 "C:/Users/Samuel/Desktop/Projetos 8051ED2/teclado/teclado.c"
void main() {


 char setseg[]= {0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
 P3_2_bit=1;
 P3_3_bit=0;

 for(;;)
 { P1_1_bit = 0;
 while(P1_5_bit==0)
 { P0 = setseg[1];
 P3_2_bit=0;
 }
 P3_2_bit=1;
 while(P1_6_bit==0)
 { P0 = setseg[2];
 P3_2_bit=0;
 }
 P3_2_bit=1;
 while(P1_7_bit==0)
 { P0 = setseg[3];
 P3_2_bit=0;
 }
 P3_2_bit=1;


 P1_1_bit = 1;
 P1_2_bit = 0;
 while(!P1_5_bit)
 { P0 = setseg[4];
 P3_2_bit=0;
 }
 P3_2_bit=1;

 while(!P1_6_bit)
 { P0 = setseg[5];
 P3_2_bit=0;
 }
 P3_2_bit=1;

 while(!P1_7_bit)
 { P0 = setseg[6];
 P3_2_bit=0;
 }
 P3_2_bit=1;


 P1_2_bit = 1;
 P1_3_bit = 0;
 while(!P1_5_bit)
 { P0 = setseg[7];
 P3_2_bit=0;
 }
 P3_2_bit=1;

 while(!P1_6_bit)
 { P0 = setseg[8];
 P3_2_bit=0;
 }
 P3_2_bit=1;

 while(!P1_7_bit)
 { P0 = setseg[9];
 P3_2_bit=0;
 }
 P3_2_bit=1;

 P1_3_bit = 1;
 P1_4_bit = 0;
 if(!P1_5_bit)
 P0 = setseg[1];
 while(!P1_6_bit)
 { P0 = setseg[0];
 P3_2_bit=0;
 }
 P3_2_bit=1;


 if(!P1_7_bit)
 P0 = setseg[1];
 P1_4_bit = 1;

 Delay_ms(100);

 }
}
