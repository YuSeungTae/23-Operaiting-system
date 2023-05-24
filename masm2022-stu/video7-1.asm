main segment
    assume cs:main, ds:main

    mov ax,main
    mov ds,ax


    mov bx,offset L1
    mov cx,3
    
next:
    mov dl,[bx]
    mov ah,2
    int 21H

    inc bx
    loop next

    mov ah,4ch
    int 21h




L1 DB 'ABC'

main ends
    end