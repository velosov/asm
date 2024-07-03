.global _start
.intel_syntax noprefix  //human readable version + omit registers % prefix

_start:                 //entrypoint
    CALL write
    JMP exit

write:
    MOV rax, 1          //which call
    MOV rdi, 1          //file descriptor for stdout
    LEA rsi, [hello]    //load effective address of buffer; or simply a pointer
    MOV rdx, 14         //allocates its corresponding length
    SYSCALL
    RET

exit:
    MOV rax, 60
    MOV rdi, 69
    SYSCALL
    RET


hello:
    .asciz "Hello, World!\n"