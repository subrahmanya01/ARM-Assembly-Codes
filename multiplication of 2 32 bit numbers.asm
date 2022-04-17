    ;multiplication of 2 32 bit numbers
    AREA aa,CODE,READONLY
	entry
	ldr r0,=0x00000123  ;first operand
	ldr r1,=0x00000003  ; Second operand
	mul r2,r0,r1      ; r2 stores the result of multiplication
stop b stop
    end