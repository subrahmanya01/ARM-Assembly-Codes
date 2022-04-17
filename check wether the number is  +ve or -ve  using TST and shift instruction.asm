	;check wether the number is +ve or -ve using TST and shift instruction
	;using tst instruction
	AREA aa,CODE,READONLY
	entry
	ldr r0,=0x00000004  ;stores the number to be checked wether +ve or -ve
	mov r2,#0x00       ;Stores 1 if the number stored in r0 is +ve otherwise it will store 0
	tst r0,#0x80000000
	moveq r2,#0x01
	
	;using shift instruction
	ldr r3,=0x80000005   ;stores the number to be checked wether +ve or -ve
	mov r4,#0x00          ;Stores 1 if the number stored in r3 is +ve otherwise it will store 0
	mov r5,r3,lsr #31
	teq r5,#0x00000001
	movne r4,#0x01
	
stop b stop
	end