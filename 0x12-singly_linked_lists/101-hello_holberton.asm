section .data
hello db "Hello, Holberton",0
format db "%s",0

section .text
global main
extern printf

main:
push rbp
mov rdi, format
mov rsi, hello
call printf
pop rbp

; Exit the program
mov rax, 60         ; syscall number for exit (60)
xor rdi, rdi        ; status: 0
syscall

