void main() {
    // P1 = 0b1111111;
     //P0 = 0b1111111;
     char setseg[]= {0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
     P3_2_bit=1;  //desligado
     P3_3_bit=0;  //desligado

     for(;;)
     {      P1_1_bit = 0;
            while(P1_5_bit==0) //teste 0
            {  P0 = setseg[1];
               P3_2_bit=0;  //desligado
            }
            P3_2_bit=1;  //desligado
            while(P1_6_bit==0) //teste 2
            {   P0 = setseg[2];
                P3_2_bit=0;  //desligado
            }
            P3_2_bit=1;  //desligado
            while(P1_7_bit==0) //teste 3
            {   P0 = setseg[3];
               P3_2_bit=0;  //desligado
            }
            P3_2_bit=1;  //desligado


            P1_1_bit = 1;
            P1_2_bit = 0;
            while(!P1_5_bit) //teste 4
            {  P0 = setseg[4];
               P3_2_bit=0;  //desligado
            }
            P3_2_bit=1;  //desligado

            while(!P1_6_bit) //teste 5
            {   P0 = setseg[5];
               P3_2_bit=0;  //desligado
            }
            P3_2_bit=1;  //desligado

            while(!P1_7_bit) //teste 6
            {   P0 = setseg[6];
                P3_2_bit=0;  //desligado
            }
            P3_2_bit=1;  //desligado


            P1_2_bit = 1;
            P1_3_bit = 0;
            while(!P1_5_bit) //teste 7
            {  P0 = setseg[7];
               P3_2_bit=0;  //desligado
            }
            P3_2_bit=1;  //desligado

            while(!P1_6_bit) //teste 8
            {  P0 = setseg[8];
               P3_2_bit=0;  //desligado
            }
            P3_2_bit=1;  //desligado

            while(!P1_7_bit) //teste 9
            { P0 = setseg[9];
              P3_2_bit=0;  //desligado
            }
            P3_2_bit=1;  //desligado

            P1_3_bit = 1;
            P1_4_bit = 0;
            if(!P1_5_bit) //teste #
               P0 = setseg[1];
            while(!P1_6_bit) //teste 0
            {  P0 = setseg[0];
               P3_2_bit=0;  //desligado
            }
            P3_2_bit=1;  //desligado


            if(!P1_7_bit) //teste *
               P0 = setseg[1];
            P1_4_bit = 1;

            Delay_ms(100);

     }
}
    /* for(;;)
     {
          //  P1 = 0b1111111;
            //P0 = 0b1111111;

            P1_1_bit = 0;
            while(P1_5_bit==0) //teste 0
               {P0_0_bit = 0;}
            P0_0_bit = 1;
            while(P1_6_bit==0) //teste 2
               {P0_1_bit = 0;}
            P0_1_bit = 1;
            while(P1_7_bit==0) //teste 3
               {P0_2_bit = 0;}
            P0_2_bit = 1;

            P1_1_bit = 1;
            P1_2_bit = 0;
            while(!P1_5_bit) //teste 4
               {P0_3_bit = 0;}
            P0_3_bit = 1;
            while(!P1_6_bit) //teste 5
               {P0_4_bit = 0;}
            P0_4_bit = 1;
            while(!P1_7_bit) //teste 6
               {P0_5_bit = 0;}
            P0_5_bit = 1;

            P1_2_bit = 1;
            P1_3_bit = 0;
            while(!P1_5_bit) //teste 7
               {P0_6_bit = 0;}
            P0_6_bit = 1;
            while(!P1_6_bit) //teste 8
               {P0_7_bit = 0;}
            P0_7_bit = 1;
            while(!P1_7_bit) //teste 9
               {P0_0_bit = 0; P0_1_bit = 0;}
            P0_0_bit = 1; P0_1_bit = 1;
            
            P1_3_bit = 1;
            P1_4_bit = 0;
            while(!P1_5_bit) //teste #
               {P0_2_bit = 0; P0_3_bit = 0;}
            P0_2_bit = 1; P0_3_bit = 1;
            while(!P1_6_bit) //teste 0
               {P0_4_bit = 0; P0_5_bit = 0;}
            P0_4_bit = 1; P0_5_bit = 1;
            while(!P1_7_bit) //teste *
               {P0_6_bit = 0; P0_7_bit = 0;}
            P0_6_bit = 1; P0_7_bit = 1;

            P1_4_bit = 1;

            Delay_ms(100);
            
     }
}    */
