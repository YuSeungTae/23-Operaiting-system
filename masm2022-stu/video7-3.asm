; 5개의 숫자 입력받아서
; 최솟값 출력하기
code segment
    assume cs:code,ds:data

    mov ax,data
    mov ds,ax
    

    ; 5개의 숫자를 받음
    mov cx,5
    mov bx,offset nums

get:
    mov ah,1    ;echo 있는 입력
    int 21h

    mov [bx],al
    inc bx

    loop get

    mov ah,2
    call nextline


    ; 첫번째 값 min에 옮겨놓기
    mov bx,offset nums
    mov al, [bx]
    mov min, al

    ; 나머지 4개랑 min이랑 비교
    call findmin
    call findmin
    call findmin
    call findmin


    ; 첫번째 값 max에 옮겨놓기
    mov bx,offset nums
    mov al, [bx]
    mov max, al

    ; 나머지 4개랑 max이랑 비교
    call findmax
    call findmax
    call findmax
    call findmax


    mov dx,offset print_min
    mov ah,9    ; $나올때 까지 출력
    int 21H

    mov dl,min
    mov ah,2    ; 그냥 출력
    int 21h

    call nextline

    mov dx,offset print_max
    mov ah,9
    int 21H

    mov dl,max
    mov ah,2
    int 21h



    mov ah,4ch
    int 21h

findmin:
    inc bx
    mov al,min
    cmp al,[bx]
    ja change1
    
    ret

change1:

    mov al,[bx]
    mov min,al

    ret
    

findmax:
    inc bx
    mov al,max
    cmp al,[bx]
    jb change2

    ret

change2:

    mov al,[bx]
    mov max,al
    ret

nextline:
    mov dl,0dh
    int 21H

    mov dl,0ah
    int 21h

    ret
    

code ends

data segment
    nums db ?,?,?,?,?
    min db ?
    max db ?

    print_min db 'min: ','$'
    print_max db 'max: ','$'
    

data ends

    end