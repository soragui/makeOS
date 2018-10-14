; Infinite loop (E9 FD FF)

; loop:
    ; jmp loop

mov ah, 0x0E ; tty mode

mov al, '1'
int 0x10
mov bx, the_show
add bx, 0x7C00
mov al, [bx]
int 0x10

jmp $ ; jump to current address = infinite loop

the_show:
    dw 'VISUAL STUDIO CODE'

; Fill with 510 zeros minus the size of the previous code
times 510-($-$$) db 0
; Magic number
dw 0xAA55