; Filename: EXER30.ASM 
; Programmer Name: JEXTER ALIDO
; Date: 09/28/2024

.model small
.stack 200h
.data 
    num1    db ?
    num2    db ?
    firstInt    db 0dh, 0ah, 'Enter first integer: $'
    secondInt   db 0dh, 0ah, 'Enter second integer: $'
    bigpromt      db 0dh, 0ah, 'The bigger integer is: $'
    smallpromt   db 0dh, 0ah, 'The smaller integer is: $'
    equalpromt   db 0dh, 0ah, 'Both are equal$'
.code
Start:

    mov ax, @data
    mov ds, ax

    lea dx, firstInt
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    sub al, '0'    ; Convert from ASCII
    mov num1, al

    lea dx, secondInt
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    sub al, '0'    ; Convert from ASCII
    mov num2, al

    mov al, num1
    cmp al, num2
    jg Bigger
    jl Smaller
    jmp Equal

Bigger:
    mov dx, offset bigpromt
    mov ah, 09h
    int 21h
    mov al, num1
    
    add al, '0'
    mov dl, al
    mov ah, 02h
    int 21h

    mov dx, offset smallpromt
    mov ah, 09h
    int 21h
    mov al, num2
    
    add al, '0'
    mov dl, al
    mov ah, 02h
    int 21h

    jmp Exit

Smaller:
    mov dx, offset bigpromt
    mov ah, 09h
    int 21h
    mov al, num2
    
    add al, '0'
    mov dl, al
    mov ah, 02h
    int 21h

    mov dx, offset smallpromt
    mov ah, 09h
    int 21h
    mov al, num1
    
    add al, '0'
    mov dl, al
    mov ah, 02h
    int 21h

    jmp Exit

Equal:
    mov dx, offset equalpromt
    mov ah, 09h
    int 21h

    jmp Exit

Exit:
    mov ah, 02h
    mov cl, 0ah     
    mov dl, cl
    int 21h

    mov ax, 4C00h
    int 21h

end Start
