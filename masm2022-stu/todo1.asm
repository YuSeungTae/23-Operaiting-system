; 문자 하나 입력받아서 대/소문자 구분하고 바꿔 출력하기

code segment
    assume cs:code, ds:code

    mov ax,code
    mov ds,ax

    
    mov ah,8  ; al에 저장
    int 21H

    cmp al,'a'
    jae toupper

    cmp al,'Z'
    jbe tolower


toupper:

    sub al,'a'-'A'
    mov dl,al

    mov ah,2
    int 21h

    mov ah,4ch
    int 21H


tolower:

    add al,'a'-'A'
    mov dl,al

    mov ah,2
    int 21h

    mov ah,4ch
    int 21H

    


code ends
end