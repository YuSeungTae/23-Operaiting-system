; (문제 1) 
;    키보드에서 입력받은 A~Z 의 문자에 따라 (단, 대소문자를 구분하지 않음),
;    각각 숫자 1~26이 화면에 출력되는 PC 어셈블리 프로그램을 작성하시오.
;    단, 이 프로그램은 무한 반복되게 해야 함.
;    예를들어, 소문자 Z 나 대문자 Z를 입력하면 화면에 26 이 나타나면 됨.
code segment
    assume cs:code, ds:code
    mov ax,code
    mov ds,ax

    mov si,10


loop1:
    ; 입력받기
    mov cx,0        ; 이 새끼 필수!!!!
    mov ah,1
    int 21h
    
    cmp al,'a'
    jae lower

    cmp al,'A'
    jae upper

    jmp end2

lower:
    cmp al,'z'
    ja end2

    sub al,'a'-1
    jmp print10
    


upper:
    cmp al,'Z'
    ja end2

    sub al,'A'-1
    jmp print10




print10:
    mov ah,0
    mov dx,0

    div si
    push dx

    inc cx

    cmp ax,0
    jne print10

print10_2:
    pop dx
    add dl,'0'

    mov ah,2
    int 21h

    loop print10_2

    call nextline
    
    jmp loop1


nextline:
    push ax
    push dx

    mov dx,offset nl
    mov ah,9
    int 21H
    
    pop dx
    pop ax
    ret
    
    



end2:
    mov ah,4ch
    int 21h



    nl db 0dh,0ah,'$'

code ends
end