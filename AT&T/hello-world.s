.section .data
hello:
    .asciz "Hello, World!\n"
    
.section .text
.globl _start

_start:
    CALL write
    JMP exit

write:
    MOV $1, %rax
    MOVL $1, %edi
    LEAL  (hello), %esi
    MOVL $14, %edx
    SYSCALL
    RET

exit:
    MOV 60, %rax
    MOVL 69, %edi
    SYSCALL
    RET
