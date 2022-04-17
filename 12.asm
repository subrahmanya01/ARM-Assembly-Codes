	AREA aa,CODE,READONLY
	entry
	
	;METHOD 1 multiplication of r3=10r4
	ldr r4,=0x00000002
	mov r5,#0xA
loop add r3,r3,r4
     subs r5,r5,#1
	 bne loop
	 
	 ;Method 2 
	ldr r4,=0x00000002
	mov r5,#0xA
	 
	 
	 ;Method 3 using mul instruction
	ldr r4,=0x00000002
	mov r5,#0xA
	mul r3,r4,r5
	
	;MEthod 4 using shift instruction
    ldr r4,=0x00000002
	mov r5,#0xA
	mov  r6,r4,lsl #3
	mov r3,r4,lsl #1
	add r3,r3,r6
	 
	 
stop b stop
	end
		
;         |       time    |    size     |
;method 1 |    .00000517  |       24    |
;method 2 |				  |             |
;method 3 |  	.00000233 |       16    |
;method 4 |	    0.00000092|       24    |