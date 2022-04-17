    ;Find the number of ones and zeros in given 32 bit number
	AREA aa,CODE,READONLY
	entry
	ldr r0,=0x11111111     ;Stores the number
	mov r1,#32             ;loop counter
	mov r2,#0x00           ;stores the number of ones
	mov r3,#0x00           ;stores number of zeros
	mov r4,#0x1F
label
     movs r0,r0,rrx
	 addcs r2,r2,#1
	 subs r1,r1,#1
	 bne label
	 sub r3,r4,r2
stop b stop
    end