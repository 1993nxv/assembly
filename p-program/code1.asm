section .data
decimal     db 100        ;sem notacao
hexadecimal dd 0xAF       ;NOTACAO PREFIXA ;POSFIXA AFh
binario     db 0b10101111 ;NOTACAO PREFIXA ;POSFIXA 10101111b
octal       dw 0o777      ;NOTACAO PREFIXA ;POSFIXA 777o

;BYTE   CHAR
;WORD   SHORT
;DWORD  INT
;QWORD  DOUBLE

;DB	Define um Byte	        aloca 1 byte
;DW	Define uma Word	        aloca 2 bytes
;DD	Define uma Doubleword	aloca 4 bytes
;DQ	Define uma Quadword	aloca 8 bytes
;DT	Define Dez Bytes	aloca 10 bytes

section .text
global main
main:
    mov eax, 0
    ret