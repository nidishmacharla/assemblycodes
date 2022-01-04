/* adding three 8-bit data and storing in internal ram*/
cseg at 0
	mov r0,#19; now r0=19 value
	mov r1,#98; now r1=98 value
    mov r2,#190;now r2=190 value
	mov a,r0; a=19
	addc a,r1;that is a=19 and r1=98 so a=98+19=117 now a=117 
	mov 0x20.0,c; carry is stored in 0x20.0 as bit addresable area
	add a,r2;a=117+190=307 now a=307
	mov 0x21,a;a=307 value moved to location of 0x21
	clr a;clearing acclumator
	addc a,0x20; in 0x20 location  19 value with carry added
	mov 0x20,a; a value is stored in 0x20 location as internal ram 
	end ; codesize=18