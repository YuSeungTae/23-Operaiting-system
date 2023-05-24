; 17(10)
; 11(16)
; 0001 0001(2)

; 16 -> 2 출력하기


code segment
    assume cs:code, ds:code
    mov ax,code
    mov ds,ax

    ;6ch = 108 = 0110 1100b
    mov al,6ch
    mov cx,8

L1:
    shl al,1    ; carry flag를 알아야 함.
    mov dl,'0'
    jnc L2      ; jnc = not carry
    mov dl,'1'

L2:
    push ax
    mov ah,2
    int 21h
    pop ax

    loop L1


    mov ah,4ch
    int 21h


code ends
    end




