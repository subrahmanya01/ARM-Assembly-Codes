	  ;GCD of 2 32 bit numbers
	  AREA gcdcalc, CODE, READONLY
       ENTRY
       MOV	R0,#30 ; number 1
       MOV R1,#45 ; number 2   (finally it stores the gcd of 2 32 bit numbers)
gcd
while  CMP R0,R1
       BEQ endw
       BGT cond1
       B cond2
cond1  SUB R0,R0,R1
       B gcd
cond2  SUB R1,R1,R0
       B gcd
       B while
endw
stop   B stop
       END