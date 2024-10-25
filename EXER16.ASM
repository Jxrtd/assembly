;Filename: EXER15.ASM
;Programmer Name: JEXTER A. ALIDO
;Date: 9/20/24
; Description: This assembly language program will display multiple string variables on a single line.

.model small
.stack 200h
.data
    TimePrompt db 'Is it after 12 noon (Y/N)? $'
     GoodMorningMessage   db 13, 10,'Good morning, world!',13,10, '$'
     GoodAfternoonMessage   db 13, 10,'Good afternoon, world!',13,10, '$'

.code
ProgramStart:

    mov ax,@data
    mov ds,ax
    
    mov dx, OFFSET TimePrompt
    mov ah,09h
    int 21h
    
    mov ah,1
    int 21h
   
    cmp al, 'y'
    jz IsAfternoon
    cmp al,'Y'
    jnz IsMorning
    
    IsAfternoon:
    mov dx, OFFSET GoodAfternoonMessage

    jmp DisplayGreeting

    IsMorning:
        mov dx,OFFSET GoodMorningMessage

    DisplayGreeting:
        mov ah, 9
        int 21h

    mov ah,4ch
    int 21h

END ProgramStart