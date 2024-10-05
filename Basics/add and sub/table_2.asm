[org 0x0100]
    mov ax, 2
    mov bx, 2
    add ax, bx
    add ax, bx
    add ax, bx
    add ax, bx
    add ax, bx
    add ax, bx
    add ax, bx
    add ax, bx
    add ax, bx
    
    ; Exit program
    mov ax, 0x4C00      ; DOS interrupt to exit
    int 0x21
