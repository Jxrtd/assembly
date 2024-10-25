;Filename: EXER15.ASM
;Programmer Name: JEXTER A. ALIDO
;Date: 9/20/24
; Description: This assembly language program will display multiple string variables on a single line.

.model small
.stack 200h
.data
    inputChar db ?
    inputMsg db 'Enter a character: $'
    outputMsg db 'You entered: $'

.code
ProgramStart:

    mov ax,@data
    mov ds,ax

    
    mov dx, OFFSET inputMsg
    mov ah,09h
    int 21h
    

    mov ah,01h 
    int 21h
    mov inputChar,al 

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov dx,OFFSET outputMsg
    mov ah, 09h
    int 21h

   
    mov dl, inputChar
    mov ah,02h
    int 21h
    
    mov ax,4C00h
    int 21h

END ProgramStart