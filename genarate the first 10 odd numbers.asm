    ;Genarate first 10 odd numbers 
	AREA aa,CODE,READONLY
	entry
	ldr r0,=0x00000001    ;First odd number
	ldr r1,=0x0000000A    ;Counter
	ldr r2,=0x40000000    ;Starting adress of the array
	BL odd
stop b stop
odd
     str r0,[r2],#4
	 add r0,r0,#0x02
	 subs r1,r1,#0x01
	 bne odd
	 mov pc,lr

    end
	   