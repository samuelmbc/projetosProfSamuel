void main(){
     for(;;){
         if(!P1_2_bit){
              P0_0_bit=!P0_0_bit;
              Delay_ms(100);
              while(!P1_2_bit){Delay_ms(100);}
         }


     }

}
