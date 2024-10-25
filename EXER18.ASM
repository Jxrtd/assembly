;Filename: EXER15.ASM
;Programmer Name: JEXTER A. ALIDO
;Date: 9/20/24
; Description: This assembly language program will display multiple string variables on a single line.

.model small
.stack 200h
.data
    MAXIMUM_STRING_LENGTH EQU 1000
    StringToReverse db MAXIMUM_STRING_LENGTH DUP (?)
    ReverseString db MAXIMUM_STRING_LENGTH DUP (?)
.code
ProgramStart:

    mov ax,@data
    mov ds,ax
    mov ah,3fh
    mov bx,0
    mov cx,MAXIMUM_STRING_LENGTH

    mov dx, OFFSET StringToReverse
    int 21h
    and ax, ax
    jz Done
    mov cx,ax

    push cx
    mov bx,OFFSET StringToReverse
    mov si, OFFSET ReverseString
    add si , cx
    dec si

    ReverseLoop:
        mov al,[bx]
        mov [si],al
        inc bx
        dec si

        loop ReverseLoop
        pop cx
        mov ah,40h 
        mov bx, 1
        mov dx, OFFSET ReverseString
        int 21h

Done: 
     mov ah,4ch
     int 21h
   

END ProgramStart