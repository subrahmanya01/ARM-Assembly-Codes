	;Test for the equivalnce of 2 number using 3 methods 
	AREA aa,CODE,READONLY
	entry
	ldr r0,=0x00000002   ;First number
	ldr r1,=0x00000002   ;Second number
	;First method 
	teq r0,r1
	moveq r2,#0x01       ;r2 stores 1 if the number stored in r0 and in r1 are equal
	
	;Second method
	eor r3,r0,r1
	moveq r4,#0x01  	;r4 stores 1 if the number stored in r0 and in r1 are equal
	
	;Third method
	subs r5,r0,r1
	moveq r6,#0x01       ;r6 stores 1 if the number stored in r0 and in r1 are equal
stop b stop
	end