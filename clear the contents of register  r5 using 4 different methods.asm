	;Clear the contents of register  r5 using 4 different methods
	AREA aa,CODE,READONLY
	entry
	;first method 
	ldr r5,=0x12345678
	and r5,r5,#0x00000000
	
	;second method
	ldr r5,=0x12345678
	bic r5,r5,#0xffffffff
	
	;third method 
	ldr r5,=0x12345678
	sub r5,r5,r5
	
	;fourth method
	ldr r5,=0x12345678
	mov r5,r5,lsr #32
	
	
stop b stop
    end