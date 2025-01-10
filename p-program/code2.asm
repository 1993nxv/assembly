section .data
    msg db 'Hello, World!', 0
    title db 'Mensagem', 0

section .text
    global main
    extern MessageBoxA, ExitProcess

main:
    ; Alinha a pilha a 16 bytes
    sub rsp, 40       

    ; Chama MessageBoxA(NULL, msg, title, MB_OK)
    xor rcx, rcx      ; HWND = NULL
    lea rdx, [msg]    ; LPCSTR lpText
    lea r8, [title]   ; LPCSTR lpCaption
    xor r9d, r9d      ; UINT uType = MB_OK
    call MessageBoxA

    ; Chama ExitProcess(0)
    xor ecx, ecx      ; Código de saída
    call ExitProcess
