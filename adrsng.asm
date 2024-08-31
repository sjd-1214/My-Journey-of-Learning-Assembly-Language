[org 0x0100]
    
    num1: dw 5,10,15,0

    mov bx, num1
    mov ax, [bx]
    add bx, 2
    add ax,[bx]
    add bx, 2
    add ax,[bx]
    add bx, 2
    mov [bx], ax

    mov ax, 0x4c00
    int 0x21