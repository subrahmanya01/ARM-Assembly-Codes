;Write ALP to substract 2 64 bit number
	AREA aa,CODE,READONLY
    entry
	ldr r0,=0xF2345678;Lower byte of 1st number
	ldr r1,=0x20000001;Higher byte of 1st number
	ldr r2,=0x00000012;Lower byte of 2nd number
	ldr r3,=0x00000022;Higher byte of 2nd number
	subs r4,r1,r0     ;r4 stores the lower byte of answer
	sbc r5,r2,r3      ;r5 stores the higher byte of answer
stop b stop
    end