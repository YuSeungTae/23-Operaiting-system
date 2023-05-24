code segment
    assume cs:code, ds:code

    ; 상수 선언
    CR EQU 0DH  
    LF EQU 0AH

    mov ax,code
    mov ds,ax

    ; offset 변수명 : 변수의 시작 주소
    mov bx,offset buffer
    mov si, 2

    mov dl,[bx+si]
    mov ah,2
    int 21H

    mov dl,[bx+si+1]
    mov ah,2
    int 21H

    ;; CR = carige return, 맨 앞으로
    mov dl,CR
    mov ah,2
    int 21H

    ; LF = line feed, 새로운 라인
    mov dl,LF
    mov ah,2
    int 21H
    ;;

    mov dl,[bx+si+2]
    mov ah,2
    int 21H

    mov ah,4CH
    int 21h

    buffer db 'example.'

    code ends

end