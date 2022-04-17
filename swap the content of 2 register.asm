	;Write an ALP to swap the contents of two register in 3 ways
	AREA aa,CODE,READONLY
	entry
	ldr r0,=0x00011234
	ldr r1,=0x00002123
	;First way of swapping
	mov r2,r1
	mov r1,r0
	mov r0,r2
	;Second way of swapping
	ldr r0,=0x00011234
	ldr r1,=0x00002123
	add r0,r0,r1
	sub r1,r0,r1
	sub r0,r0,r1
	;Third way of swapping
	ldr r0,=0x00011234
	ldr r1,=0x00002123
	eor r0,r0,r1
	eor r1,r0,r1
	eor r0,r0,r1
	
stop b stop
    end