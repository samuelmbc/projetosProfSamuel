void main()
{  for(;;) //laço infinito
   {
      if(P1_0_bit==0) //teste tecla P1.0
      {
        P0  = 0b00110011;
        //Delay_ms(1000);
      }else{
         if(!P1_1_bit) //teste tecla P1.0
         {
            P0  = 0b11110000;
            P1_4_bit = 0;
            //Delay_ms(1000);
         }else{
            P0  = 0b11111111;
            P1_4_bit = 1;
              //Delay_ms(1000);
         }
      }
   }
}
