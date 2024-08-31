[org 0x0100]
    mov ax, 10
    mov bx, 10
    add ax, bx
    add ax, bx
    add ax, bx
    
    mov ax, 0x4C00
    int 0x21
