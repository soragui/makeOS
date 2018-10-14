

mov ah, 0x0E ; tty mode

mov bp, 0x8000
mov sp, bp

push 'V'
push 'I'
push 'S'
push 'U'
push 'A'
push 'L'

mov al , [0x7FFE] 
int 0x10

pop bx 
mov al, bl
int 0x10

pop bx 
mov al, bl
int 0x10
pop bx 
mov al, bl
int 0x10

pop bx 
mov al, bl
int 0x10

pop bx 
mov al, bl
int 0x10

jmp $

times 510-($-$$) db 0
dw 0xAA55
