;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 
; Programmer: Anjaney Chirag Mahajan
; Class: ECE 109
; Section: 405
;
;       						ascii.asm
;
; Submitted: 03/28/2017
;
;
; This LC-3 assembly language program will print the binary ASCII code 
; for a single character typed by the user.
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
			.ORIG	x3000				;	

			AND	R0,	R0,	#0				;	Initialize R0, R2, R3 and R4
			AND	R2,	R2,	#0
			AND	R3,	R3,	#0
			AND	R4,	R4,	#0
			
			ADD R2, R2, #1				; 	Add Binary value 00000001 to R2
			STI R2, MEM1				;	Store R2 -> MEM1
			
			ADD R2, R2, R2				; 	Add Binary value 00000010 to R2
			STI R2, MEM2				;	Store R2 -> MEM2
			
			ADD R2, R2, R2				; 	Add Binary value 00000100 to R2
			STI R2, MEM3				;	Store R2 -> MEM3		
			
			ADD R2, R2, R2				; 	Add Binary value 00001000 to R2
			STI R2, MEM4				;	Store R2 -> MEM4	
			
			ADD R2, R2, R2				; 	Add Binary value 00010000 to R2
			STI R2, MEM5				;	Store R2 -> MEM5	
			
			ADD R2, R2, R2				; 	Add Binary value 00100000 to R2
			STI R2, MEM6				;	Store R2 -> MEM6		
			
			ADD R2, R2, R2				; 	Add Binary value 01000000 to R2
			STI R2, MEM7				;	Store R2 -> MEM7	
			
			ADD R2, R2, R2				; 	Add Binary value 10000000 to R2
			STI R2, MEM8				;	Store R2 -> MEM8
			
			
			LEA	R0, Prompt	
			PUTS			;	Output "> "

			GETC			;	User Inputs Character
			OUT				;	Output Character
					
			STI	R0, MEM9	;	Store Character in MEM9
			
			LEA R0, Output1	;	Output "\nThe ASCII code for '"
			PUTS

			AND	R0,	R0,	#0	;	Initialize R0
			LDI R0, MEM9
			OUT 			;	Output Character

			AND	R0,	R0,	#0	;	Initialize R0				
			LEA R0, Output2	;	Output "' is "
			PUTS

Bit8		AND	R0,	R0,	#0	;	Initialize R0	;	Test for 8th Bit
			AND	R3,	R3,	#0	;	Initialize R3
			AND	R4,	R4,	#0	;	Initialize R4
			LDI R0, MEM9	;	Copy MEM9 -> R0			
			LDI R3, MEM8	;	Copy MEM8 -> R3
			AND R4, R0, R3	; 	Isolate 8th Bit
			BRp Bit8_Ptve	;	Test to check if R4 is Positive
			ADD R4, R4, #0	;
			BRz Bit8_Zero	; 	Test to check if R4 IS Zero

Bit7		AND	R0,	R0,	#0	;	Initialize R0
			AND	R3,	R3,	#0	;	Initialize R3
			AND	R4,	R4,	#0	;	Initialize R4
			LDI R0, MEM9	;	Copy MEM9 -> R0				
			LDI R3, MEM7	;	Copy MEM7 -> R3
			AND R4, R0, R3	; 	Isolate 7th Bit
			BRp Bit7_Ptve	;	Test to check if R4 is Positive
			ADD R4, R4, #0	;
			BRz Bit7_Zero	; 	Test to check if R4 IS Zero

Bit6		AND	R0,	R0,	#0	;	Initialize R0
			AND	R3,	R3,	#0	;	Initialize R3
			AND	R4,	R4,	#0	;	Initialize R4
			LDI R0, MEM9	;	Copy MEM9 -> R0				
			LDI R3, MEM6	;	Copy MEM6 -> R3
			AND R4, R0, R3	; 	Isolate 6th Bit
			BRp Bit6_Ptve	;	Test to check if R4 is Positive
			ADD R4, R4, #0	;
			BRz Bit6_Zero	; 	Test to check if R4 IS Zero

Bit5		AND	R0,	R0,	#0	;	Initialize R0
			AND	R3,	R3,	#0	;	Initialize R3
			AND	R4,	R4,	#0	;	Initialize R4
			LDI R0, MEM9	;	Copy MEM9 -> R0				
			LDI R3, MEM5	;	Copy MEM5 -> R3
			AND R4, R0, R3	; 	Isolate 5th Bit
			BRp Bit5_Ptve	;	Test to check if R4 is Positive
			ADD R4, R4, #0	;
			BRz Bit5_Zero	; 	Test to check if R4 IS Zero

Bit4		AND	R0,	R0,	#0	;	Initialize R0
			AND	R3,	R3,	#0	;	Initialize R3
			AND	R4,	R4,	#0	;	Initialize R4
			LDI R0, MEM9	;	Copy MEM9 -> R0				
			LDI R3, MEM4	;	Copy MEM4 -> R3
			AND R4, R0, R3	; 	Isolate 4th Bit
			BRp Bit4_Ptve	;	Test to check if R4 is Positive
			ADD R4, R4, #0	;
			BRz Bit4_Zero	; 	Test to check if R4 IS Zero

Bit3		AND	R0,	R0,	#0	;	Initialize R0
			AND	R3,	R3,	#0	;	Initialize R3
			AND	R4,	R4,	#0	;	Initialize R4
			LDI R0, MEM9	;	Copy MEM9 -> R0				
			LDI R3, MEM3	;	Copy MEM3 -> R3
			AND R4, R0, R3	; 	Isolate 3rd Bit
			BRp Bit3_Ptve	;	Test to check if R4 is Positive
			ADD R4, R4, #0	;
			BRz Bit3_Zero	; 	Test to check if R4 IS Zero

Bit2		AND	R0,	R0,	#0	;	Initialize R0
			AND	R3,	R3,	#0	;	Initialize R3
			AND	R4,	R4,	#0	;	Initialize R4
			LDI R0, MEM9	;	Copy MEM9 -> R0				
			LDI R3, MEM2	;	Copy MEM2 -> R3
			AND R4, R0, R3	; 	Isolate 2nd Bit
			BRp Bit2_Ptve	;	Test to check if R4 is Positive
			ADD R4, R4, #0	;
			BRz Bit2_Zero	; 	Test to check if R4 IS Zero

Bit1		AND	R0,	R0,	#0	;	Initialize R0
			AND	R3,	R3,	#0	;	Initialize R3
			AND	R4,	R4,	#0	;	Initialize R4
			LDI R0, MEM9	;	Copy MEM9 -> R0				
			LDI R3, MEM1	;	Copy MEM1 -> R3
			AND R4, R0, R3	; 	Isolate 1st Bit
			BRp Bit1_Ptve	;	Test to check if R4 is Positive
			ADD R4, R4, #0	;
			BRz Bit1_Zero	; 	Test to check if R4 IS Zero


Bit8_Zero	LD R0, Output_0	; 	Output "0"
			OUT				
			BRnzp Bit7		; 	Go To Bit7

						
Bit8_Ptve	LD R0, Output_1	; 	Output "1"
			OUT
			BRnzp Bit7		; 	Go To Bit7 

Bit7_Zero	LD R0, Output_0	; 	Output "0"
			OUT
			BRnzp Bit6		; 	Go To Bit6

						
Bit7_Ptve	LD R0, Output_1	; 	Output "1"
			OUT
			BRnzp Bit6		; 	Go To Bit6

Bit6_Zero	LD R0, Output_0	; 	Output "0"
			OUT
			BRnzp Bit5		; 	Go To Bit5

						
Bit6_Ptve	LD R0, Output_1	; 	Output "1"
			OUT
			BRnzp Bit5		; 	Go To Bit5	

Bit5_Zero	LD R0, Output_0	; 	Output "0"
			OUT
			BRnzp Bit4		; 	Go To Bit4

						
Bit5_Ptve	LD R0, Output_1	; 	Output "1"
			OUT
			BRnzp Bit4		; 	Go To Bit4	

Bit4_Zero	LD R0, Output_0	; 	Output "0"
			OUT
			BRnzp Bit3		; 	Go To Bit3

						
Bit4_Ptve	LD R0, Output_1	; 	Output "1"
			OUT
			BRnzp Bit3		; 	Go To Bit3	

Bit3_Zero	LD R0, Output_0	; 	Output "0"
			OUT
			BRnzp Bit2		; 	Go To Bit2

						
Bit3_Ptve	LD R0, Output_1	; 	Output "1"
			OUT
			BRnzp Bit2		; 	Go To Bit2		

Bit2_Zero	LD R0, Output_0	; 	Output "0"
			OUT
			BRnzp Bit1		; 	Go To Bit1

						
Bit2_Ptve	LD R0, Output_1	; 	Output "1"
			OUT
			BRnzp Bit1		; 	Go To Bit1

Bit1_Zero	LD R0, Output_0	; 	Output "0"
			OUT
			HALT			; 	Terminate Program

						
Bit1_Ptve	LD R0, Output_1
			OUT
			HALT			;	Termnate Program

Prompt		.STRINGZ	"> "
Output1		.STRINGZ	"\nThe ASCII code for '"
Output2		.STRINGZ	"' is "
Output_0	.FILL	x30 
Output_1	.FILL 	x31

			
MEM1	.FILL   x4000		;	Memory location stores binary value 00000001
MEM2	.FILL   x4001		;	Memory location stores binary value 00000010
MEM3	.FILL   x4002		;	Memory location stores binary value 00000100
MEM4	.FILL   x4003		;	Memory location stores binary value 00001000
MEM5	.FILL   x4004		;	Memory location stores binary value 00010000
MEM6	.FILL   x4005		;	Memory location stores binary value 00100000
MEM7	.FILL   x4006		;	Memory location stores binary value 01000000
MEM8	.FILL   x4007		;	Memory location stores binary value 10000000
MEM9	.FILL	X4008		;	Memory location stores the user character
;
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
