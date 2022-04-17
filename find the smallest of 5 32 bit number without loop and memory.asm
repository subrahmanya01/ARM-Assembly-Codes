    ;Find the smallest of 5 32 bit numbers    
	AREA aa,CODE,READONLY
	 entry
	 ldr r0,=0x00000002   ;First number
	 ldr r1,=0x00000003   ;Second number
	 ldr r2,=0x00000001   ;Third Number
	 ldr r3,=0x00000006   ;Fourth number
	 ldr r4,=0x00000005   ;Fifth number
	 mov r5,r0            ;smallest number will be stored in r5
	 cmp r1,r5
	 movle r5,r1
	 cmp r2,r5
     movle r5,r2
	 cmp r3,r5
	 movle r5,r3
	 cmp r4,r5
	 movle r5,r4   
stop b stop
     end