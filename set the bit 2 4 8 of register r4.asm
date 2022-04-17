	;Set the bits 2,4,8 in the register r4
	AREA aa,CODE,READONLY
	entry
	ldr r4,=0x00011111  ;storing the number 
	ldr r0,=0x0000008A  
	orr r4,r4,r0        ;r4 stores the result after setting the 2,4,8th bit
	
stop b stop
	end