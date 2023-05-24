; cmp memory끼리는 안됨.
; 결과에 다라 flag register가 변화함.

; test 
; bit단위로 and 연산
; 결과에 따라 flag register가 변화

; je : jump if equal

code segment
    assume cs:code

    next:
        mov ah,1
        int 21H

        cmp al,'0'
        je done

        mov dl,al
        inc dl
        mov ah,2
        int 21H

        jmp next

    done:
        mov ah,4ch
        int 21h

code ends
end
