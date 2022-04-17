	AREA aa,CODE,READONLY
	entry
	
    ;Binary to gray convertion
	ldr r0,=0x00000123
	add r1,r0,r0
	eor r2,r1,r0
	mov r3,r2,lsr #1
	
	;Gray to binary conversion
	ldr r4,=0x000001B2
	mov r5,r4, lsl #1
	add r6,r5,r5
	mov r7,r6,lsr #1
	
stop b stop
    end
	