; function code가 1인 system call
; 입력된 문자의 ascii 코드는 al에 저장
; echo가 있는 입력, 입력값이 출력됨
; mov ah,1
; int 21h

; function code가 8인 system call
; 입력된 문자의 ascii 코드는 al에 저장
; echo가 없는 입력, 입력값이 출력되지 않음

; mov ah,8
; int 21h
code segment
    assume cs:code, ds: code

    mov ax,code
    mov ds,ax

    ; 키입력, AL에 ascii코드 저장
    mov ah,1  
    int 21h
    mov keep,al

    mov dl,keep
    add dl,1

    mov ah,2
    int 21H

    mov ah,4ch
    int 21H
    
    keep db ?

code ends

end