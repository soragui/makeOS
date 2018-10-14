
[org 0x7C00]

mov bx, HELLO
call print

call print_nl

mov bx, GOODBYE
call print

call print_nl

; setup the stack
mov bp, 0x8000 
mov sp, bp

mov bx, 0x9000
mov dh, 2 ; read 2 sectors

call disk_load

mov dx, [0x9000] ; retrieve the first loaded word, 0xDADA
call print_hex

call print_nl

mov dx, [0x9000 + 512]
call print_hex

jmp $

%include 'boot_sect_print_hex.asm'
%include 'boot_sect_print.asm'
%include 'boot_sect_disk.asm'

; data
HELLO:
    db 'VISUAL STUDIO CODE', 0

GOODBYE:
    db 'Goodbye', 0

; padding and magic number
times 510-($-$$) db 0
dw 0xAA55
