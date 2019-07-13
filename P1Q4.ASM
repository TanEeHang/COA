.MODEL SMALL
.STACK 64
.DATA
CHAR_A DB 61H
CHAR_B DB 6BH
CHAR_C DB 10H


.CODE
MAIN PROC
        MOV AX,@DATA
        MOV DS,AX


       	;---------START CODING HERE

       	MOV AH,02H 
        	MOV DL,CHAR_A
	INT 21H

	
	;---------DIPLAY COMMA
	
	MOV DL,","	 
       	INT 21H
	
	
	;---------DISPLAY K
	MOV AH,02H 
        	MOV DL,CHAR_B
	INT 21H

	;---------DISPLAY >	
	MOV DL,CHAR_C 
       	INT 21H

	;---------DISPLAY K
	MOV AH,02H 
        	MOV DL,CHAR_B
	INT 21H

	;---------DIPLAY COMMA
	MOV DL,","	 
       	INT 21H
	

	MOV AH,02H 
        	MOV DL,CHAR_A
	INT 21H

	


        ;---------TERMINATE PROGRAM
        MOV AX,4C00H
        INT 21H
MAIN ENDP
END MAIN
