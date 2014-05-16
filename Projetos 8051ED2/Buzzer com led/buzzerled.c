void main()
{ int i;
   int f;
   for(;;) //laço infinito
     {
      if(!P1_0_bit) //teste tecla P1.0
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
      if(!P1_1_bit) //teste tecla P1.1
      {
       P1_4_bit = 1;
       P0_1_bit = 0;
      }
      if(!P1_2_bit) //teste tecla P1.2
      {
       P1_4_bit = 0;   //liga buzzer
       P0_1_bit = 1;  //deliga led 0
      }

      if(!P1_3_bit) //teste tecla P1.2
      {
       P1_4_bit = 1;   //liga buzzer
       P0_1_bit = 1;  //deliga led 0
      }

     }

}
