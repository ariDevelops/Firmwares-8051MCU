/*
        BLINKA OS LEDS DO 8051
        TESTE
        
*/
// =================** Mapeamento de hardware ** ==============
#define  LED7  (1<<P0_7)

// ================ ** MAIN ** =====================
void main() {

     while(1) {
         P0 ^= LED7;
         delay_ms(500);
     }
}