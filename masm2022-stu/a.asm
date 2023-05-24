mov a,b ; a=b

push ax ; 스택에 ax내용 푸시
pop ax  ; 스택의 탑을 ax에 팝
add ax,1   ; ax = ax + 1    / 캐리를 포함하지 않음.
adc         ; 캐리 포함
sub ax,1    ; ax = ax - 1   /  캐리를 포함하지 않음.
inc ax      ; ax = ax + 1
dec ax      ; ax = ax - 1

