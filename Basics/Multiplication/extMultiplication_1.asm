[org 0x0100]
jmp start
multiplicand: dd 12
multiplier: dw 5
result: dd 0
start:
    mov cx, 16
    mov ax, [multiplier]

checkbit:
    shr ax,1
    jnc skip

    mov dx, [multiplicand]
    add [result], dx
    mov dx, [multiplicand+2]
    adc [result+2], dx

skip:
    shl word [multiplicand],1
    rcl word [multiplicand+2], 1
    dec cx
    jnz checkbit

mov ax, 0x4c00
int 0x21
