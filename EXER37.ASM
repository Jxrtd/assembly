; Filename: EXER37.ASM
; Programmer Name: Jexter Alido
; Date: 10/18/2024
.model small
.stack 200h
.data
    inputChar1 db ?
    Prompt db 'Enter a character: $'
    notA   db 13, 10,'You entered not A.$'
    isA    db 13, 10,'You entered A.', 13, 10, '$'

.code
ProgramStart:

    mov ax, @data
    mov ds, ax

    mov dx, OFFSET Prompt
    mov ah, 09h
    int 21h

    mov ah, 01h 
    int 21h
    mov inputChar1, al 
    
    cmp al, 'A'
    je IfA
    
IfNotA:
    mov dx, OFFSET notA
    mov ah, 09h
    int 21h
    jmp ProgramEnd

IfA:
    mov dx, OFFSET isA
    mov ah, 09h
    int 21h

ProgramEnd:
    mov ah, 4ch
    int 21h

END ProgramStart
