;Filename: EXER15.ASM
;Programmer Name: JEXTER A. ALIDO
;Date: 9/20/24
; Description: This assembly language program will display multiple string variables on a single line.

.model small
.stack 200h
.data
    inputChar1 db ?
    Prompt db 'Enter a character: $'
    notA   db 13, 10,'No, you have not entered letter A. You entered characher $'
    isA   db 13, 10,'Yes, you have entered letter A.',13,10, '$'

.code
ProgramStart:

    mov ax,@data
    mov ds,ax

    
    mov dx, OFFSET Prompt
    mov ah,09h
    int 21h
    

    mov ah,01h 
    int 21h
    mov inputChar1,al 
    
   
    cmp al, 'a'
    jz IfA
    cmp al,'A'
    jnz IfNotA
    
    IfA:
            mov dx,OFFSET isA
            mov ah, 09h
            int 21h
    IfNotA:
            mov dx,OFFSET notA
            mov ah, 09h
            int 21h
            mov dl, inputChar1
            mov ah,02h
            int 21h
  

    mov ah,4ch
    int 21h

END ProgramStart