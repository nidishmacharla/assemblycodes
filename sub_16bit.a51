/*sub 16-bit and store in internal ram*/
    num1 EQU 0x1234; equ to represent the number,register,address
	num2 EQU 0x6789;num2=0x6789 and num1=0x1234 both are decleared as global declered
	cseg at 0
	mov a,#num1; now a=0x34 only lower nibbles
	mov r0,#num2; now r0=0x89 only lower nibbles
	subb a,0x00; now a=0xab store it n internal ram
	mov 0x30,a; now 0x30=0xab(answer)
	clr a; now clear a=0
	mov a,#num1>>8; to get higher nibbles right shift now a=0x12
	mov r1,#num2>>8; now r1=0x67
	subb a,0x01; now a=0xaa store in internal ram
	mov 0x31,a; now 0x31=0xaa(answer)
	end ;codesize=17
			
		