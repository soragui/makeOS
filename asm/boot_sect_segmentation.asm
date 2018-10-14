
mov ah, 0x0E

mov al, [the_secret]
int 0x10 ; we already saw this doesn't work, right?

mov bx, 0x7C0
mov ds, bx
mov al, [the_secret]
int 0x10

jmp $

the_secret:
    db ')'

times 510-($-$$) db 0
dw 0xAA55

