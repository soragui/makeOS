; Infinite loop (E9 FD FF)

; loop:
    ; jmp loop

mov ah, 0x0E ; tty mode
mov al, 'V'
int 0x10
mov al, 'I'
int 0x10
mov al, 'S'
int 0x10
mov al, 'U'
int 0x10
mov al, 'A'
int 0x10

jmp $ ; jump to current address = infinite loop

; Fill with 510 zeros minus the size of the previous code
times 510-($-$$) db 0
; Magic number
dw 0xAA55