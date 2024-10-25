;Filename: EXER19.ASM
;Programmer Name: JEXTER A. ALIDO
;Date: 9/20/24
; Description: This assembly language program will display multiple string variables on a single line.

.model small
.stack 200h
.data
    inputChar1 db ?
    inputChar2 db ?
    inputChar3 db ?
    inputMsg1 db 'Enter first character: $'
    inputMsg2 db 'Enter second character: $'
    inputMsg3 db 'Enter third character: $'
    outputMsg1 db 'The first character is $'
    outputMsg2 db 'The second character is $'
    outputMsg3 db 'The third character is $'


.code
ProgramStart:

    mov ax,@data
    mov ds,ax

    
    mov dx, OFFSET inputMsg1
    mov ah,09h
    int 21h
    

    mov ah,01h 
    int 21h
    mov inputChar1,al 

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov dx, OFFSET inputMsg2
    mov ah,09h
    int 21h
    

    mov ah,01h 
    int 21h
    mov inputChar2,al 

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov dx, OFFSET inputMsg3
    mov ah,09h
    int 21h
    

    mov ah,01h 
    int 21h
    mov inputChar3,al

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov dx,OFFSET outputMsg1
    mov ah, 09h
    int 21h

    mov dl, inputChar1
    mov ah,02h
    int 21h
    
    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov dx,OFFSET outputMsg2
    mov ah, 09h
    int 21h

    mov dl, inputChar2
    mov ah,02h
    int 21h
    
    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov dx,OFFSET outputMsg3
    mov ah, 09h
    int 21h

    mov dl, inputChar3
    mov ah,02h
    int 21h
    
    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ax,4C00h
    int 21h

END ProgramStart