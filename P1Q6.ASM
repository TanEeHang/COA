.MODEL SMALL
.STACK 64
.DATA
INPUT1 DB ?
PROMPT1 DB "PLEASE ENTER A DIGIT (4-9): $"
RESULT DB ?

.CODE
MAIN PROC
     MOV AX,@DATA
     MOV DS,AX


     ;----------START HERE
     MOV AH,09H
     LEA DX,PROMPT1
     INT 21H

     ;----------GET INPUT
     MOV AH,01H
     INT 21H
     MOV INPUT1,AL

     ;----------ASCII ADJUSTMENT
     SUB INPUT1,30H

     ;----------CALCULATION
     XOR AX,AX   ;--------CLEAR REGISTER
     MOV AL,INPUT1
     MUL INPUT1


     MOV RESULT,AL


     ;----------ENTER NEW LINE
     MOV AH,02H
     MOV DL,0AH
     INT 21H
     MOV DL,0DH
     INT 21H

     ;----------DISPLAY NUMBER
     ADD INPUT1,30H
     MOV DL,INPUT1
     INT 21H


     ;----------DISPLAY SYMBOL
     MOV DL,"x"
     INT 21H

     ;----------DISPLAY NUMBER
     MOV DL,INPUT1
     INT 21H


     ;----------DISPLAY :	
     MOV DL, ":"
     INT 21H

     ;----------ASCII ADJUSTMENT
     MOV AL, RESULT
     AAM
     ADD AH,30H
     ADD AL,30H

     MOV BX,AX


     ;----------DISPLAY FIRST NUMBER RESULT
     MOV AH,02H
     MOV DL,BH
     INT 21H

     ;----------DISPLAY SECOND NUMBER RESULT
     MOV AH,02H
     MOV DL,BL
     INT 21H


     ;----------END HERE
     MOV AX,4C00H
     INT 21H

MAIN ENDP
END MAIN
