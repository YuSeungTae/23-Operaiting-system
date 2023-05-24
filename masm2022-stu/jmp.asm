code segment
    assume cs:code

    next: 

        ; 입력받기
        mov ah,1
        int 21H

        ; 20H -> space bar
        cmp al,20h
        je exit


        cmp al,'a'
        jb print

        cmp al,'z'
        ja print

        sub al,'a'-'A'

    print:
        mov ah,2
        mov dl,al
        int 21H
        jmp next

    exit:
        mov ah,4ch
        int 21H
    code ends
end