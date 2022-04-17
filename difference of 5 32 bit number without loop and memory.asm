    ;Difference of 5 32 bit numbers without using loop and memory
    AREA aa,CODE,READONLY
	entry
	ldr r0,=0x0000000A    ;First number
	ldr r1,=0x00000001    ;Second number
	ldr r2,=0x00000004    ;Third number
	ldr r3,=0x00000001    ;Fourth number
	ldr r4,=0x00000003    ;Fifth number
	mov r5,r0          ;R5 stores the total sum of 5 32 bit numbers
	sub r5,r5,r1
	sub r5,r5,r2
	sub r5,r5,r3
	sub r5,r5,r4
stop b stop
    end