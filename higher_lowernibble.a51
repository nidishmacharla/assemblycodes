/*exchange higher nibble r6 with lower nibble r7 register(by using swap and xchd)*/
cseg at 0
	mov r6,#0x12; now r6=0x12
	mov r7,#0x78; now r7=0x78
	mov a,r6; now a=0x12
	swap a; swap (it changes lower nibbles to higher) now a=0x21
	mov r0,#0x07;r0=0x78
	xchd a,@r0; now a=0x28 and r0=0x71
	swap a; again swapping now a=0x82
	mov 0x06,a;now r6=0x82(answer)
	end ;codesize=12
	
