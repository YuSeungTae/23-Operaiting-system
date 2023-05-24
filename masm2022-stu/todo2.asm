; 10진수 출력

CODE SEGMENT
	ASSUME CS:CODE, DS:DATA

	MOV AX, DATA
	MOV DS, AX

    mov ax,var1
    mov cx,0

    mov si,10

loop1:
    mov dx,0    ; div할때 dx가 0이어야 나머지가 들어감?
    div si
    push dx
    inc cx

    cmp ax,0
    jne loop1


print:
    pop dx
    add dl,'0'

    mov ah,2
    int 21H

    loop print

    mov ah,4ch
    int 21h


CODE ENDS

DATA SEGMENT
	VAR1	DW	0FFFFH  ;문자로 시작하는건 앞에 0 붙이기...

DATA ENDS

END

