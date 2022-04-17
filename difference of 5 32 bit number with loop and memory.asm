     ;Difference of 5 32 bit numbers with loop and memory
	 AREA aa,CODE,READONLY
	 entry
	 ldr r0,=0x40000000   ;storing the initial adress of the array to register r0
	 mov r2,#0x04   ;Counter
	 mov r3,#0x00   ;Stores the difference  of 5 32 bit numbers
	 ldr r3,[r0],#4
label 
	 ldr r4,[r0],#4
	 sub r3,r3,r4
	 subs r2,r2,#0x01
	 bne label
	    
stop b stop
	 end