; $ 가 문자열의 마지막.
; 21h, 9 : 

code segment
    auusme cs:code, ds:data

    mov ax, ds
    mov ds, ax

    mov dx, offset prompt
    mov ah, 9
    int 21H

    mov ah, 1
    int 21h
    

code ENDS

data segment
    prompt db 'enter a lower  case letter: '$'
    msg db 00h.0Ah, 'in upper caes it is: '
    char db ?. '$'

data ends