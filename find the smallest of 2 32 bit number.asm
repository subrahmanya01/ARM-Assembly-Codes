	;Find the smallest of 2 32 bit number
	AREA aa,CODE,READONLY
	 entry
	 ldr r0,=0x00000005     ;First number
	 ldr r1,=0x00000006     ;second number
	 cmp r0,r1
	 movle r2,r0
	 cmp r1,r0
	 movle r2,r1            ;Final result will be stores in r2
stop b stop
	 end