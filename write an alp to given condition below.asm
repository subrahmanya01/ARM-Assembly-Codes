    ;write an alp to given condition below.asm
	AREA AA,code,readonly
	entry 
	LDR R1 ,=0x00000002    ;First number
	LDR R0 ,=0x00000001    ;Second number
	LDR R4 ,=0x00000007 
	CMP R0,R1 
	ADDGT R2,R0,R1,LSL #2   ;r0 greater than the r1 then r0 stores the result
	MULLE R3,R1,R4          
	ADDLE R2,R0,R3         ;lesser or equal tor1 then r2 stores the computed result
stop b stop
	END