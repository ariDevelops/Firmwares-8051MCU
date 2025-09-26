       ORG 0x00             ; Início do código
 
 INICIO:
         CLR P0.6             ; Desliga P0.6
         SETB P0.7            ; Liga P0.7
 LOOP:
         ACALL DELAY_1S       ; Espera 1 segundo
 
         CPL P0.6             ; Inverte P0.6
         CPL P0.7             ; Inverte P0.7
 
         SJMP LOOP            ; Repete para sempre
 
 ; --------------------------------------------------
 ; Rotina de Delay de 1 segundo para cristal de 12MHz
 ; --------------------------------------------------
 DELAY_1S:
         MOV R3, #20          ; Loop externo (20)
 DELAY_10MS:
         MOV R2, #250         ; Loop médio (250)
 DELAY_INNER:
         MOV R1, #250         ; Loop interno (250)
 DELAY_LOOP:
         DJNZ R1, DELAY_LOOP
         DJNZ R2, DELAY_INNER
         DJNZ R3, DELAY_10MS
         RET
 
         END