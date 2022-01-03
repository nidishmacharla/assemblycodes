/* program to  cnt number of clear bits in acclumator data*/
cseg at 0
	mov r0,#8;r0=8 immediate value
	mov a,#10;a=10 immediate value
	loop:   ;label 
	rrc a ;rotate right with carry of a value
	jc skip ; jc means jump on carry and skip
	inc r7 ; acts a cnt 
	skip:
	djnz r0,loop ; djnz means decrement and jump if not zero
	end; codesize=10
	
	
