   ;Coversion to hex to ascii
   AREA aa,CODE,READONLY
   entry
   
   ;hex  to ASCII
   ldr r0,=0x00000075    ; input hex number
   
   cmp r0,#0x09
   addle r1,r0,#0x30
   addgt r1,r0,#0x40
   addgt r2,r0,#0x37
   
   ;ASCII to hex
   
   ldr r3,=0x0000000F    ; input ascii number
   
   cmp r3,#0x09
   suble r4,r3,#0x30
   subgt r4,r3,#0x40
   subgt r5,r3,#0x37
stop b stop
   end