SECTION .data
num1 DD 30
num2 DD 70
num3 DD 99
soma DD 00
subtracao DD 00

SECTION .text
GLOBAL _start

_start:
    ; Soma num1 + num2
    MOV EAX, [num1]
    MOV EBX, [num2]
    ADD EAX, EBX
    ADD [soma], EAX ; Armazena o resultado da soma em 'soma'

    ; Subtração num1 - num3
    MOV EAX, [num1] ; Recarrega num1 em EAX
    SUB EAX, [num3]
    ADD [subtracao], EAX ; Armazena o resultado da subtração em 'subtracao'

    ; Finaliza o programa
    MOV EAX, 1       ; Código de saída do sistema
    MOV EBX, 0       ; Código de retorno
    INT 0x80         ; Interrompe o sistema