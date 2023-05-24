; (문제 2)
;     키보드에서 대 소문자 문자들을 계속 입력받으며 '소문자 x' 가 입력될때까지 그 갯수를 카운팅 하여 출력하는 PC 어셈블리 프로그램을 작성하시오.
;     예를들어    nocreditx 이라고 입력하면, 8 을 출력하면 됨. (x는 카운트 하지 않음)
;     입력은 아주 협조적이어서, 대소문자 이외에는 아무것도 입력하지 않는다고 가정하면 됨. (대소문자가 아닌 것에 대한 어떤 예외 처리도 필요없다는 것)
;     x 가 입력 종료 문자가 되는 것임.

code segment
    assume cs:code,ds:code
    mov ax,code
    mov ds,ax

    mov bx,0
    mov cx,0
    mov si,10
loop1:
    mov ah,1
    int 21H

    cmp al,'x'
    je a

    cmp al,'X'
    je a

    cmp al,'a'
    je incbx
    cmp al,'A'
    je incbx
    cmp al,'e'
    je incbx
    cmp al,'E'
    je incbx
    cmp al,'i'
    je incbx
    cmp al,'I'
    je incbx
    cmp al,'o'
    je incbx
    cmp al,'O'
    je incbx
    cmp al,'u'
    je incbx
    cmp al,'U'
    je incbx

    jmp loop1

incbx:
    inc bx
    jmp loop1
    
a:
    mov ax,bx
    mov dx,0
    div si
    push dx

    inc cx

    cmp ax,0
    jne a

b:
    pop dx
    add dl,'0'
    mov ah,2
    int 21H

    loop b





    mov ah,4ch
    int 21h


    nl db 0dh,0ah,'$'

code ends
end