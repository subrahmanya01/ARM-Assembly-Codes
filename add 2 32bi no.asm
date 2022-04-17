  ;Write a ALP to add 2 32-bit numbers
    AREA aa,CODE,READONLY
    entry
	ldr r0,=0x12345678
	ldr r1,=0x00000002
	add r2,r0,r1
stop b stop
	end