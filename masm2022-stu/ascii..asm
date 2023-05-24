title Display

dosseg
.model small
.stack 100h
.CODE
main proc
    mov cx,26
    mov dl,65
    mov ah,2

A1: int 21H
    inc dl
    loop A1

    mov ax,4C00h
    int 21H
main endp
end main