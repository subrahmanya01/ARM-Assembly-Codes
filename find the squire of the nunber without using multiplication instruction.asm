	;find the squire of the nunber without using multiplication instruction
	AREA aa,CODE,READONLY
	entry
	mov r0,#08  ;Stores the input number 
	mov r1,r0
	add r2,#00   ;Stores the squire of the given number
main  
    add r2,r2,r0
	subs r1,r1,#1
	bne main
stop b stop
	end