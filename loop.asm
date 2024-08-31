[org 0x0100]
mov  ax, 0        
mov  cx, 20       
mov  bx, 20       

loop_start:
    add  ax, bx       
    loop loop_start   

mov  [result], ax   
mov  ax, 0x4c00   
int  0x21

result: dw 0
