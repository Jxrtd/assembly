; Filename: EXER38.ASM
; Programmer Name: Jexter Alido
; Date: 10/18/2024
.model small
.stack 200h
.data
    inputChar1 db ?
    Prompt1 db 'Enter a number (0-9): $'
    equal   db 13, 10,'The number is equal to 5.$'
    greater db 13, 10,'The number is greater than 5.$'
    less    db 13, 10,'The number is less than 5.$'

.code
ProgramStart:

    mov ax, @data
    mov ds, ax

    mov dx, OFFSET Prompt1
    mov ah, 09h
    int 21h

    mov ah, 01h 
    int 21h
    sub al, '0'      ; Convert ASCII to integer
    mov inputChar1, al 

    cmp inputChar1, 5
    je IfEqual
    jg IfGreater
    jl IfLess

IfEqual:
    mov dx, OFFSET equal
    jmp DisplayMessage

IfGreater:
    mov dx, OFFSET greater
    jmp DisplayMessage

IfLess:
    mov dx, OFFSET less

DisplayMessage:
    mov ah, 09h
    int 21h

ProgramEnd:
    mov ah, 4ch
    int 21h

END ProgramStart
