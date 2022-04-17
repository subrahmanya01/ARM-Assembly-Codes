	;search a given charecter in given string
cr EQU 0x0d
	AREA aa,CODE,READONLY
	entry
	ldr r0,=array
	ldr r4,="h"		;Stores the charecter wich is to be seacrched in given string
label 
    ldrb r1,[r0],#1
	cmp r1,#cr
	beq stop
	cmp r4,r1
	beq store
	bal label
	
stop b stop
store
     mov r5,#0xFF      ;Register r5 nstores the 0xFF if the searched charecter is found in the given string
array  DCB "hello word",cr   ;Given string
	end