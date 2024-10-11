[org 0x0100]
jmp start
multiplicand: dw 12
multiplier: dd 5
result: dd 0
start:
    mov cx, 32
checkbit:
    shr word [multiplier], 1
    rcr word [multiplier+2],1
    jnc skip

    mov dx, [multiplicand]
    add [result], dx

skip:
    shl word [multiplicand],1
    dec cx
    jnz checkbit

