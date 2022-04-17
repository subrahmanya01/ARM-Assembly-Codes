cr equ 0x0d
	AREA aa,CODE,READONLY
	entry
	ldr r0,=0x40000000
	ldr r1,=0x48
	strb r1,[r0]
	
array dcb "hello",cr
    end