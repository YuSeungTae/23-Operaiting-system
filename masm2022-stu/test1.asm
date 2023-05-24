code segment
    assume cs:code
    ; mov ds, cs 가 없는 이유는 의도하지않은 이상, 세그먼트의 이동을 막기 위해
    
    next: 
        mov ah, 1
        int 21H ; 시스템 콜

        cmp al, 'x'
        je done     ; je -> if equal jmp

        cmp al, 'X'
        je done


        mov dl, AL  ; 입력 값은 AL에 저장됨.
        inc dl      ; inc dl -> dl++
        mov ah, 2
        int 21H
        jmp next    ; next label로 분기

    done:
        mov ah, 4CH
        int 21H         ; 이 때의 AL 값은 운영체제에게 하는 return 값.

code ENDS
    end