    ;Find the smallest of 5 32 bit number with loop and memory
	AREA aa,CODE,READONLY
	entry
	ldr r0,=0x40000000      ;starting adress of array
    mov r2,#0x05            ;Size of the array
	ldr r3,[r0]             ;stores the Final result(smallets of 5 numbers in array)
label
     ldr r4,[r0],#4
     cmp r4,r3
	 movle r3,r4
	 subs r2,r2,#0x01
	 bne label
stop b stop
    end