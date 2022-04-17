	  ;LCM of 2 32 bit numbers
	   AREA gcdcal, CODE, READONLY
       ENTRY
       MOV	R0,#0x12 ; test values
       MOV R1,#0x0f ; test values
	   mul r3,r0,r1 ;dividend(a)
gcd
while  CMP R0,R1
       BEQ endw
       BGT cond1
       B cond2
cond1  SUB R0,R1
       B gcd
cond2  SUB R1,R0
       B gcd
       B while
endw
     mov r4,r0    ;devider(b)	 
	 mov r5,#0x00 ;r5 stores Quotiont (q)   (lcm of 2 numnbers)
	 mov r6, r3   ;r6 stores reminder (r)
devide  cmp r6,r4
        blt stop
		add r5,r5,#1
		sub r6,r6,r4
		bal devide
stop   B stop
       END