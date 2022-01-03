/* to swap r0 to r1 by using xch*/
cseg at 0
	mov r0,#0x12; r0=immediate value of 0x12
	mov r1,#0x78; r1=immediate value of 0x78
	mov a,r1;now a=0x78
	xch a,r0; xch is assembly directive to exchange values now a=0x12,r0=0x78 
	mov r1,a; now r1=0x12 values have changed r0=0x78
	end