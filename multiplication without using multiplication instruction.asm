	;Multiplication without using multiplication instruction (1)R0=5R1  (2) R7=15R3 (3) R2=24R0
	AREA aa,CODE,READONLY
	entry
	ldr r1,=0x00000003   
	ldr r3,=0x00000004
	
	;(1)R0=5R1
	mov r0,r1,lsl #2
	add r0,r0,r1
	
	;R7=15R3
	mov r7,r3,lsl #4
	sub r7,r7,r3
	
	;(3) R2=24R0
	mov r2,r0,lsl #4
	mov r4,r0,lsl #3
	add  r2,r2,r4
	
	
	
stop b stop
	 end