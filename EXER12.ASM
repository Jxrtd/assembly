;Filename: EXER12.ASM
;Programmer Name: JEXTER A. ALIDO
;Date: 9/20/24
; Description: This assembly language program will display multiple string variables on a single line.

.model small
.stack 200h
.datax  
String1 db 'Line1','$'
String2 db 'Line2','$'
String3 db 'Line3','$'

.code
ProgramStart:

        mov ax,@data
        mov ds,ax
        mov ah,9
        mov dx, OFFSET String1
        int 21h

        mov dx, OFFSET String2
        int 21h

        mov dx,OFFSET String3
        int 21h

        mov ah,4ch
        int 21h

END ProgramStart