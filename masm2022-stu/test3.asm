code segment
    assume cs:code
    mov cl, 0           ; 초기화

    next:
        call putnum     ; subroutine 호출, 되돌아올 주소를 stack에 push
        inc cl          ; cl +=1
        cmp cl,26       ; cl이 10보다
        jb next         ; 작으면(below) next로 점프

        mov ah ,4CH     ; 10보다 크거나 같으면 종료
        int 21H

    putnum:             
        mov dl,cl   
        add dl, 'a'
        
        mov ah, 2
        int 21H
        RET             ; stack에서 pop한 값을 ip값으로

code ENDS
    end


; 교수님의 중상: 소문자 대문자 출력하는데 홀수(짝수)만 출력
