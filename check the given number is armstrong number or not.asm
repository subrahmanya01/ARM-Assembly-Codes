	  ;Check given number is armstrong number or not
	  AREA aa,CODE,READONLY
	  entry
	  ldr r0,=0x00000173
	  ldr r1,=0x40000000
	  str r0,[r1]
	  mov r5,#00    
      mov r6,#0x04	  
	  bl main
	  
stop   b stop	  
main   ldrb r2,[r1],#1
       mov r3,r2
	   and r2,r2,#0x0000000F     ;masking of lower 4 bits of byte
	   mov r4,r2
	   mul r4,r2,r4
	   mul r4,r2,r4
	   
	   add r5,r5,r4
	   
	   mov r2,r3
	   and r2,r2,#0x000000F0     ;Masking of upper 4 bits of byte
	   mov r2,r2,lsr #4
	   mov r4,r2
	   mul r4,r2,r4
	   mul r4,r2,r4
	   
	   add r5,r5,r4
	   
	   subs r6,r6,#1
	   bne main
	   
	   cmp r5,r0
	   moveq r7,#0xFF     ;If the given number is armstrong number then r7 stores 0xFF
	   
	   mov pc,lr
	  

	   end