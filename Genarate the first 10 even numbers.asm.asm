	;Genarate the first 10 even numbers
	AREA aa,CODE,READONLY
	entry
	ldr r0,=0x00000000    ;First even number
	ldr r1,=0x0000000A    ;Counter
	ldr r2,=0x40000000    ;Starting adress of the array
	BL even
stop b stop
even
     str r0,[r2],#4
	 add r0,r0,#0x02
	 subs r1,r1,#0x01
	 bne even
	mov pc,lr

    end