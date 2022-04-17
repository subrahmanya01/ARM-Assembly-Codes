	;Tranfer block of data from one memory to another memory
	AREA aa,CODE,READONLY
	entry
	ldr r0,=0x40000000    ;Base adress of the bloack adress of data to be transferred
	ldr r1,=0x40000008    ;the adress which stores the transfered data
	mov r3,#0x00
	ldr r2,[r0]
	str r3,[r0]
	str r2,[r1]
stop b stop
    end