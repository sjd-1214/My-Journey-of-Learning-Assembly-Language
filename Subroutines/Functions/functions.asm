[org 0x0100]
jmp Start
    nums: dw  0, 5, 4, 8, 7, 3, 6, 9, 2, 1  ; Array with 10 elements
    isSwap: db 0

swap:
      ; Swap the elements
    mov cx, ax
    mov ax, [nums+bx+2]
    mov [nums+bx+2], cx
    mov [nums+bx], ax
    mov byte[isSwap], 1     ; Set flag to indicate a swap occurred
    ret

bubbleSort:
    mov bx, 0
    mov byte[isSwap], 0

loop1:
    mov ax, [nums+bx]       ; Load current element
    cmp ax, [nums+bx+2]     ; Compare with the next element

    jbe noSwap              ; If nums[bx] <= nums[bx+1], no swap

    ; call swap function
    call swap

noSwap:
    add bx, 2               ; Move to the next element
    cmp bx, 18              ; 16 = (10 elements - 2) * 2 (second-to-last element)
    jne loop1

    cmp byte[isSwap], 1     ; If a swap occurred, repeat the sorting process
    je bubbleSort
    ret

Start:
    call bubbleSort
    mov ax, 0x4c00
    int 0x21                ; Exit program
