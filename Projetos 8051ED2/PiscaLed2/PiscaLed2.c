/*void main() {
     for(;;){
         if(P1_0_bit==0){
             P0_0_bit = 0;
             Delay_ms(100);
             while(P1_0_bit==1){
             }
             Delay_ms(100);
         }else{
             P0_0_bit = 1;
         }
     }
}*/

/*void main() {
    for(;;){
         do{
            P0_0_bit = 1;
         }while(P1_0_bit==1);

         Delay_ms(150);
         P0_0_bit = 0;
         while(P1_0_bit==1){}
         Delay_ms(150);
    }
 }*/
 
 /*void main() {
     int cond=0;
     for(;;){
         if(cond==0){
            P0_1_bit = 1;
            if(P1_0_bit==0){
               cond=1;
               Delay_ms(200);
            }
         }
         if(cond==1){
            P0_1_bit = 0;
            if(P1_0_bit==0){
               cond=0;
               Delay_ms(200);
            }
         }
     }
 }*/
 void main() {
    for(;;){
        P0_0_bit = 1;
        while(P1_0_bit==1){}
        while(P1_0_bit==0){}
        Delay_ms(150);
        P0_0_bit = 0;
        while(P1_0_bit==0){}
        while(P1_0_bit==1){}
        Delay_ms(150);
    }
 }
