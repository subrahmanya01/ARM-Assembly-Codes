    ;Factorial of the given number    
		AREA aa,CODE,READONLY
		 entry
		 ldr r0,=0x00000005          ;Loading the number
		 mov r1,r0
label  
		 subs r1,r1,#0x01            ;Decrementing  a number by 1
		 mul r2,r0,r1                ;multiplying previous result by decremented number
		 mov  r0,r2
		 teq r1,#0x01
		 bne label
	 
stop    b stop                      ;At final result will be stored in r0
	     end