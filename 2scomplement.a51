/* 2's complememt on scrach pad area*/
cseg at 0
	mov 0x30,#0x12;0x30 is starting address of scrach pad and loaded with value of 0x12
	mov a,0x30;value 0x12 is moved to now a=0x12
	cpl a; cpl is assembler is used to complememt with one's complement happend here
	add a,#1; after one's complement adding 1 to get 2's complement
	mov 0x30,a
	end;codesize=10