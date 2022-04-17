        ;Multiplication of 2 64 bit number
		AREA aa,CODE,READONLY
		entry
		ldr r0,=0x00000005 ;higher word of first number
		ldr r1,=0x00000000   ;lower word of first number
		ldr r2,=0x00000005   ;higher word of second number
		ldr r3,=0x00000000   ;lower word of second number
	
	    mul r3,r0,r3
		mla r3,r2,r1,r3
		umull r4,r5,r0,r2
		add r5,r3,r5          ;result will be stored in r4 and r5
		
stop    b stop
	    end