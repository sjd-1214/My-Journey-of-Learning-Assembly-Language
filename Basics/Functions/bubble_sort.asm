[org 0x0100]
    nums: dw  0, 5, 4, 8, 7, 3, 6, 9, 2, 1  
    isSwap: db 0

start: 
    mov bx, 0
    mov byte[isSwap], 0

loop1:
    mov ax, [nums+bx]      ; Load current element
    cmp ax, [nums+bx+2]    ; Compare with the next element

    jbe noSwap             ; If nums[bx] <= nums[bx+1], no swap

    mov cx, ax             ; Swap the elements
    mov ax, [nums+bx+2]
    mov [nums+bx+2], cx
    mov byte[isSwap], 1    ; Set flag to indicate a swap occurred

noSwap:
    add bx, 2              ; Move to the next element
    cmp bx, 8            ; 18 = (10 elements - 1) * 2 (since each word is 2 bytes)
    jne loop1

    cmp byte[isSwap], 1    ; If a swap occurred, repeat the sorting process
    je start
    mov ax, 0x4c00
    int 0x21               ; Exit program
