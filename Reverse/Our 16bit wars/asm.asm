DATAS SEGMENT
    aInputFlag db 'Input Flag:$'
DATAS ENDS

STACKS SEGMENT
    ;�˴������ջ�δ���
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
START:
    MOV AX,DATAS
    MOV DS,AX
   	call main
    MOV AH,4CH
    INT 21H
    
main proc
	mov di, offset aInputFlag
	mov ah, 9
	int 21h
main endp
CODES ENDS
    END START
