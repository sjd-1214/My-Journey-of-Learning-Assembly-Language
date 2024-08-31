[org 0x0100]
    num1: dw 10
    num2: dw 5
    num3: dw 20
    result: dw 0

    mov ax, [num1]
    mov bx, [num2]
    add ax, bx
    mov bx, [num3]
    add ax, bx
    mov [result], ax

    mov ax, 0x4c00
    int 0x21
