[org 0x0100]
jmp start
multiplicand: dw 6
multiplier: dw 5
result: dw 0
start:
    mov cx, 16
    mov ax, [multiplier]
checkbit:
    shr ax, 1
    jnc skip

    mov dx, word [multiplicand]
    add [result], dx

skip:
    shl word [multiplicand], 1
    dec cx
    jnz checkbit

    mov ax, 0x4c00
    int 0x21