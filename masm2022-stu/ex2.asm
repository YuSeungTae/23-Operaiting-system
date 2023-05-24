code segment
    assume cs:code, ds:code
    org 100h    ; 프로그램과 데이터의 시작번지를 100h

    start:
        mov ax,cs
        mov ds,AX

        mov bx,2

        mov dx,table[bx]
        mov ah,9h
        int 21H

    stop:
        mov ax,4C00H
        int 21H
    
    m1 db 'massage1','$'
    m2 db ' message2','$'
    m3 db '  message3','$'
    m4 db '   message4','$'
    m5 db '    message5','$'
    table dw offset m1, offset m2, offset m3, offset m4, offset m5

code ends
end start
