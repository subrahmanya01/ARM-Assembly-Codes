     ;Division of 2 32 bit numbers   (a/b)  
	 AREA aa,CODE,READONLY
	  entry
	  ldr r0,=0x00000002   ;divider (b)
	  ldr r1,=0x0000000F   ;dividend (a)
	  mov r2,r1            ;reminder
	  mov r3,#00           ;quotiont
	  
loop  cmp r2,r0
      blt stop
	  add r3,r3,#1
	  sub r2,r2,r0
	  bal loop
	  
	  
stop  b stop
      end