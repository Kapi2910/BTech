;ROLL => 194201
;LARGEST ARRAY ELEMENT
MOV CL, 05H ;ARRAY SIZE, LAST 2 DIGITS ARE 01 
MOV SI, 0C900H
MOV DX, 00000H

ITER: MOV AL, [SI]
CMP DL, AL
JNC UPDATE
MOV DL, AL
UPDATE: INC SI
CLC
DEC CL
JNZ ITER 
HLT ;HALT



