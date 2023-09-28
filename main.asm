section .data
    hello db 'Hello, World!',0  ; Null-terminated string to print

section .text
    global _start

_start:
    ; Write "Hello, World!" to stdout (file descriptor 1)
    mov eax, 4         ; Syscall number for sys_write
    mov ebx, 1         ; File descriptor 1 (stdout)
    mov ecx, hello     ; Pointer to the string to print
    mov edx, 13        ; Length of the string
    int 0x80           ; Interrupt to invoke syscall

    ; Exit the program
    mov eax, 1         ; Syscall number for sys_exit
    mov ebx, 0         ; Exit code 0
    int 0x80           ; Interrupt to invoke syscall
