code segment
    assume  cs: code
    mov ax, 1234h
    mov bx, 5678h   ; sp = 0

    push ax         ; sp = fffe
    push bx         ; sp = fffc
    pushf           ; sp = fffa

    mov ax, 2468h   
    mov bx, 2468h
    sub ax,bx

    popf            ; sp = fffc
    pop bx          ; sp = fffe
    pop ax          ; sp = 0

    mov ah, 4CH
    int 21H

code ENDS
    end