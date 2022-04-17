      ;Develop a code to add two array elements (one to one) and store the result in 3rd array
	AREA aa,CODE,READONLY
	entry
	ldr r0,=0x40000000    ;First array starting adress
	ldr r1,=0x40000010    ;second array starting adress
	ldr r2,=0x40000020    ;starting adress of result array
	mov r7,#0x04          ;length of the array
	bl operation
stop b stop
operation
     ldr r3,[r0],#4
	 ldr r4,[r1],#4
	 add r5,r3,r4
	 str r5,[r2],#4
	 subs r7,r7,#1
	 bne operation
	 mov pc,lr
	
	end