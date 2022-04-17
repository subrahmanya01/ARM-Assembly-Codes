  ;Write a ALP to substarct 2 32-bit numbers
	AREA aa,CODE,READONLY
    entry
	ldr r0,=0x12345678
	ldr r1,=0x00000002
	sub r2,r0,r1
stop b stop
    end