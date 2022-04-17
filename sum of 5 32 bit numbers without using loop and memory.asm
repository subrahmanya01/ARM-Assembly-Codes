    ;Sum of 5 32 bit numbers without using loop and memory
    AREA aa,CODE,READONLY
	entry
	ldr r0,=0x00000002    ;First number
	ldr r1,=0x00000003    ;Second number
	ldr r2,=0x00000004    ;Third number
	ldr r3,=0x00000005    ;Fourth number
	ldr r4,=0x00000006    ;Fifth number
	mov r5,#0x00          ;R5 stores the total sum of 5 32 bit numbers
	add r5,r5,r0
	add r5,r5,r1
	add r5,r5,r2
	add r5,r5,r3
	add r5,r5,r4
stop b stop
    end