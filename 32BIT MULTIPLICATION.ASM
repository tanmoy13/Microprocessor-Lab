MOV DX,0000H
MOV CX,0000H
MOV BX,0000H
MOV AX,0000H

MOV BP,32
MOV SI,[NUM1]
MOV DI,[NUM1+2]

LOOP1:
TEST SI,1
JZ FUNC
ADD CX,[NUM2]
ADC DX,[NUM2+2]

FUNC:
RCR DX,1
RCR CX,1
RCR BX,1
RCR AX,1
RCR DI,1
RCR SI,1 

DEC BP
JNZ LOOP1

JMP LAST

NUM1 DD 12345678H
NUM2 DD 87654321H 

LAST:

END



