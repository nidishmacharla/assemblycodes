/*swapping using arthemetic */
cseg at 0
	mov r0,#0x12;r0=0x12
	mov r1,#0x78;r1=0x78
	mov a,r0;now a=0x12
	add a,r1; adding a=0x12 and r1=0x78
	mov r0,a;now r0=0x5a
	subb a,0x01;subracting and borrow  afer addition a=0x5a sub with 0x12 value 
	mov r1,a;now after subrating a=0x42 is moved to r1=0x42
	mov a,r0;a=0x12
	subb a,0x01;subracting a=0x12 and 0x78 value
	mov r0,a ;a value moved to r0
	end;codesize=14