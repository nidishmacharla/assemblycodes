/* to swap lower nibble of b register with lower nibble r0*/
cseg at 0
	mov r0,#0x12; r0=0x12 immediate value
	mov b,#0x78; b is sfr
	mov a,b;b value is moved into a now a=0x78
	mov r1,#0x00;0x00 means address of r0 now r1=0x12
	xchd a,@r1; xchd is a assembler directive which exchange only lower nibble now a=0x72,r1=0x18
	mov b,a;now b changed to b=0x72 and r1 changed as r1=0x18 lower nibble is shifted
	end ;codesize=12
