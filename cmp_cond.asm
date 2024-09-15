; in this code we will be seeing how to use cmp with conditionals(jc jz jnc jnz)

; jc ---> jump if carry 
; jnc ---> jump if not carry
; jz ---> jump if zero
; jnz --->jump if not zero

; change the values of ax and bx to check the funtionality of conditionals

[org 100h]
    mov ax, 5
    mov bx, 10
start:
    cmp ax, bx  ; check which falg is set ZF or CF
    jnc end
    
    cmp bx, ax  ; check which falg is set ZF or CF
    jc start

    mov ax, 5
    cmp ax, bx  ; check which falg is set ZF or CF
    jnz start

end:
    mov ax, 4c00h
    int 21h
