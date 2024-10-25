;Filename: EXER14.ASM
;Programmer Name: JEXTER A. ALIDO
;Date: 9/20/24
; Description: This assembly language program will display multiple string variables on a single line.

.model small
.stack 200h
.data
.code
ProgramStart:
    EchoLoop:
        mov ah,1
        int 21h
        cmp al, 13

        jz EchoDone 
        mov dl,al
        mov ah,2
        int 21h
        jmp EchoLoop 

    EchoDone:
        mov ah, 4ch
        int 21h
 
END ProgramStart