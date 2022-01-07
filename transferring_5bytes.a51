/*transferring 5bybtes of data code segment to internal ram*/
source segment code
	rseg source ; to allocate memory location
	src:db 0x12,0x45,0x78,0x34,0x67 ; data of array 
	cseg at 0
	mov dptr,#src; now dptr=base address of src
    mov r7,#5; r7=5 its acts as count of 5 data of array
    mov r0,#0x30; r0=0x30 immediate value
    loop: ; label
    clr a; a=0
    movc a,@a+dptr; here @a is 0 so 0+dptr that is 0+0x12 now a=0x12 stored 
    mov @r0,a; now this 0x12 is stored in r0 location that is in 0x30 we have 0x12 0x30 is internal ram as (scrachpad area)
	inc dptr; dptr incremented as next value in array
	inc r0;r0 is incremented as 0x31 next location in internal ram
	djnz r7,loop;decrement  count is getting decremented after value stored if r7 not 0 loop continous
	sjmp $;$ to continue the controller in same instruction
    end;codesize=		