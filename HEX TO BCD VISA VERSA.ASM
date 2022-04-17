        ;HEX to bcd visa versa 
		AREA aa,CODE,READONLY
		entry
		;hex to bcd
		ldr r0,=0x00000024
		cmp r0,#0x09
		movle r1,r0
		addgt r1,r0,#0x12
		
		;bcd hex
		ldr r2,=0x00000024
		cmp r2,#0x09
		movle r3,r2
		subgt r3,r2,#0x12
		
		end