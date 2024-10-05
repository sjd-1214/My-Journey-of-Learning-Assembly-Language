[org 0x0100]
    mov ax, 2
    mov bx, 2
    add ax, bx
    add ax, bx
    add ax, bx
    add ax, bx
    sub ax, bx
    sub ax, bx
    sub ax, bx
    sub ax, bx
    sub ax, bx
    
    ; exit program
    mov ax, 0x4C00
    int 0x21