; in this code we will be seeing what does cmp command does in assembly 

[org 100h]
    mov ax, 10
    mov bx, 5

    cmp ax, bx  ; check which falg is set ZF or CF
    cmp bx, ax  ; check which falg is set ZF or CF

    mov ax, 5
    cmp ax, bx  ; check which falg is set ZF or CF


    mov ax, 4c00h
    int 21h
