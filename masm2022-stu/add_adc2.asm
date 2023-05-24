; var1 var2에 있는 32비트 값과
; vqr3 var4에 있는 32비트 값을 더해서 그 결과를
; var1과 var2에 저장하도록 응용하기.

code segment
    assume cs:code, ds:code

    mov ax,code
    mov ds,ax

    mov ax,var4
    add var2, ax

    mov dx,var2

    mov ax, var3
    adc var1, ax

    mov dx,var1

    

    MOV AX, 4C00H
    INT 21H 

    var1 dw 1223h
    var2 dw 8000h
    var3 dw 2000h
    var4 dw 8123h

code ends
end