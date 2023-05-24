title video7-2.asm
.model small
.stack 100h
.data
a dw 2
b dw 3
sum dw ?

.code

main proc
    mov ax,@data
    mov ds,ax

    mov ax,a
    add ax,b
    mov sum,ax



    mov ah,4ch
    int 21h

main endp
    end main