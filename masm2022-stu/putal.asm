code segment
    assume cs:code, ds:code

    mov ax,code
    mov ds,ax

    mov al,3fh
    call putal

    mov ah,4ch
    int 21H

    putal:
        mov bl,10h
        mul bl
        mov level2,ah

        mov ah,0
        div bl
        mov level1,al
        mov dl, level2
        call puthex

        mov dl,level1
        call puthex
        ret
    
    puthex:
        cmp dl,0ah
        jae hex

        add dl,'0'
        jmp print

    hex:
        add dl,'a'-0ah
    print:
        mov ah,2
        int 21H
        ret

    level1 db ?
    level2 db ?
code ends
end