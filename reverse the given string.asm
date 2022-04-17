	;reverse the given string
cr EQU 0x0d
	AREA aa,CODE,READONLY
	entry
	ldr r0,=array
	ldr r2,=0x40000000
	ldr r3,=array
golast
    ldrb r1,[r0],#1
	cmp r1,#cr
	bne golast
    
	ldrb r1,[r0],#-2
	
main
    ldrb r1,[r0],#-1
	strb r1,[r2],#1
	cmp r1,r3
	beq stop
	bal main
	
	
	
stop b stop
array DCB "HELLO",cr
	end	