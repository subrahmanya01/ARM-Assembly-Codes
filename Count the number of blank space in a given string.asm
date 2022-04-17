	;Count the number of blank space in a given string
cr  EQU 0x0d
	AREA aa,CODE,READONLY
	entry
	ldr r0,=array
	mov r1,#0x00   ;stores the count of blank spaces in the string
	mov r3,#0x20

main
     ldrb r2,[r0],#1
	 cmp r2,#cr
	 beq stop
	 cmp r2,r3
	 addeq r1,r1,#1
	 bal main
stop b stop
array DCB "A A A A",cr
	end
		