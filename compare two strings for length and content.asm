      ;Compare two strings for length and content
cr  EQU 0x0d
	  AREA aa,CODE,READONLY
	  entry
	  mov r0,#00   ;stores the length of the first string
	  mov r1,#00   ;stores the length of the second string
	  ldr r4,=array1
	  bl find_length
	  mov r0,r3
	  mov r3,#00
	  ldr r4,=array2
	  bl find_length
	  mov r1,r3
	  
	  cmp r0,r1
	  bne final
	  
	  ldr r4,=array1
	  ldr r5,=array2
main  ldrb r2,[r4],#1
      ldrb r6,[r5],#1
	  cmp r2,r6
	  bne final
	  subs r0,r0,#1
	  bne main  
stop b stop
find_length
      ldrb r5,[r4],#1
	  cmp r5,#cr
	  moveq pc,lr
	  add r3,r3,#1
	  bal find_length


final 
   ldr r7,=0xFF               ;either length not equal or contemts are not equal then it stores r7

stop1 b stop1
array1 DCB "helloword",cr
array2 DCB "helloword",cr
   end