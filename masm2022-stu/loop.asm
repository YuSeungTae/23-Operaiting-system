; loop : cx에 있는 값 만큼 루프
; 1번 돌때마다 cx가 1씩감소
; cx=0일때까지 반복

.model small
.stack 100h
.data
    prompt db 'enter a lower case letter: $'
    msg db 0dh,0ah, 'in upper case it is: '
    char db ?, '$'
.code
main proc
    mov ax,@data ;get data segment
    mov ds,ax

    mov dx, offset prompt
    mov ah,9    ; 9는 문자열 출력, ah가 시작 주소, 끝나는 문자는 '$'
    int 21H

    mov ah,1
    int 21H

    sub al,20H
    mov char,al

    mov dx,offset msg
    mov ah,9
    int 21h 
    
    mov ah,4ch
    int 21H

main endp
end main