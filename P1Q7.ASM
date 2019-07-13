.MODEL SMALL
.STACK 100H
.DATA

q db ?
r db ?

.CODE
MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
	;--------START CODING HERE
	
	;--------DIVISION
	MOV AX,8
	MOV BL,5
	
	DIV BL
	
	;--------DISPLAY
	MOV q,AL
	MOV r, AH

	MOV DL,q  ;-----DISPLAY Quotient
	ADD DL,48
	MOV AH,02
	INT 21H

	;---------DIPLAY COMMA
	
	 MOV DL,","	 
       	 INT 21H
	
	MOV DL,r  ;-----DISPLAY Remainder
	ADD DL,48
	MOV AH,02
	INT 21H

	

	

        	;---------TERMINATE PROGRAM
        MOV AH,4CH
        INT 21H
MAIN ENDP
END MAIN
