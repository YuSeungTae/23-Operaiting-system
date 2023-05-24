; (문제 1) 



;    다음의 순서대로 처리하는 PC 어셈블리 프로그램을 작성하시오.


;     (1) 키보드에서 십진수 5자리를 입력받는다. (예, 24896 , 무조건 5자리 숫자임)

;     (2) 이 숫자 5개를 모두 더한다. (예, 2+4+8+9+6 = 29)

;     (3) 이 숫자를 13보다 작거나 같아질때까지 13을 계속 뺀다. 혹은 13을 나눈 나머지를 구한다. ( 29-13-13 = 3, 혹은 29 % 13 = 3 )

;     (4) 이 숫자를 화면에 출력한다. (예, 3 )

;     (5) 위 (4)의 숫자 갯수만큼 화면에 'X' 를 출력한다. (예, XXX )

;     (6) 위 (1)번부터 과정을 무한 반복한다.


code segment 
    assume cs:code,ds:code
    mov ax,code
    mov ds,ax

start:
    mov ax,0
    mov dx,0
    mov si,offset nums
    mov cx,5

loop1:
    mov ah,1
    int 21h
    sub al,'0'
    mov [si],al
    inc si
    loop loop1


    mov al,0
    mov si,offset nums
    mov cx,5
loop2:
    add al,[si]
    inc si

    loop loop2

    mov sum,al

    cmp al,13
    jb loop4    

loop3:
    sub al,13
    cmp al,13
    jae loop3


loop4:
    mov dl,al
    mov ah,0

    mov cx,ax

    cmp dl,10
    jb print


    mov ah,2
    mov dl,'1'
    int 21H

    sub al,10
    mov dl,al
    mov ah,0    

print:

    add dl,'0'

    mov ah,2
    int 21h
    cmp dl,'0'
    je start

loop5:
    mov dl,'X'
    mov ah,2
    int 21h


    loop loop5




    jmp start

    mov ah,4ch
    int 21h

    ; 변수
    nums db ?,?,?,?,?
    sum db ?


code ends
end start