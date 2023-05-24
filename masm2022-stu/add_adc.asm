
code segment
    assume cs:code, ds:data

    mov ax,data
    mov ds,ax

    mov ax,1223h
    mov bx,8000h
    mov cx,2000h
    mov dx,8123h

    add bx,dx   ; carry flag가 1로 set
    adc ax,cx   ; carry flag와 함께 덧셈
    mov var1,ax
    mov var2,bx

    mov ah,4CH
    int 21H

code ends

data segment
    var1 dw ?
    var2 dw ?
data ends

end
