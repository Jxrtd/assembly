; Filename: PRELIM.ASM
; CS243 Lab Prelim Exam First Semester SY 2024 - 2025
; Student name: Jexter Alido 
; Date Finished: SEPTEMBER 12, 2024
 
.model small
.stack 100
.data
text    db '                                                                         ', 0dh, 0ah
        db '                   CEBU Institute of Technology - University               ', 0dh, 0ah
        db '                       VEHICLE STICKER APPLICATION FORM                   ', 0dh, 0ah
        db '                        Please fill out the form below.                    ', 0dh, 0ah, 0ah
        db '   Personnel Type:           _______ V     Vehicle Sticker Type:  _________ V ', 0dh, 0ah
        db '   Name of Applicant/Driver: __________    ID Number:             ____________', 0dh, 0ah
        db '   Mobile Number:            __________    Address:               ____________ ', 0dh, 0ah
        db '   Vehicle Make(s)/Brand:    __________    Plate Number:          ____________ ', 0dh, 0ah
        db '   Vehicle Color:            _______ V     Vehicle Type:          _________ V ', 0dh, 0ah, 0ah, 0ah
        db '                                      SUBMIT                      ', 0dh, 0ah, 0ah
        db '                           Copyright 2024 Jexter Alido      ', 0dh, 0ah, 0ah, 0ah
        db '                                     Thank You!            ', 0dh, 0ah, '$'
 
.code
start:
    mov ax, 3
    int 10h
 
   
    mov ah, 06h
    mov ch, 3
    mov cl, 2
    mov dh, 3  
    mov dl, 2
    mov bh, 070h
    int 10h
 

    mov ah, 06h
    mov ch, 1
    mov cl, 78
    mov dh, 3  
    mov dl, 78  
    mov bh, 070h
    int 10h
 
 
    mov ah, 06h
    xor al, al
    xor cx, cx
    mov cl, 3
    mov ch, 1
    mov dl, 77
    mov bh, 4Fh
    int 10h
 

    mov ah, 06h
    mov ch, 3
    mov cl, 3
    mov dh, 3
    mov dl, 76
    mov bh, 0CEh
    int 10h
 
 
    mov ah, 06h
    mov ch, 4
    mov cl, 2
    mov dh, 4
    mov dl, 78
    mov bh, 7Fh
    int 10h
 

    mov ah, 06h
    mov ch, 5;
    mov cl, 2
    mov dh, 5
    mov dl, 28
    mov bh, 070h
    int 10h
 

    mov ah, 06h
    mov ch, 5
    mov cl, 39
    mov dh, 5
    mov dl, 65
    mov bh, 070h
    int 10h
 

    mov ah, 06h
    mov ch, 5
    mov cl, 78
    mov dh, 5
    mov dl, 78
    mov bh, 070h
    int 10h
   

    mov ah, 06h
    mov ch, 6
    mov cl, 2
    mov dh, 6
    mov dl, 28
    mov bh, 070h
    int 10h
 
    mov ah, 06h
    mov ch, 6
    mov cl, 39
    mov dh, 6
    mov dl, 65 ;
    mov bh, 070h
    int 10h
 
    mov ah, 06h
    mov ch, 6
    mov cl, 78
    mov dh, 6
    mov dl, 78
    mov bh, 070h
    int 10h
 
    mov ah, 06h
    mov ch, 7
    mov cl, 2
    mov dh, 7
    mov dl, 28
    mov bh, 070h
    int 10h
 
    mov ah, 06h
    mov ch, 7
    mov cl, 39
    mov dh, 7
    mov dl, 65
    mov bh, 070h
    int 10h
 

    mov ah, 06h
    mov ch, 7
    mov cl, 78
    mov dh, 7
    mov dl, 78
    mov bh, 070h
    int 10h
 

    mov ah, 06h
    mov ch, 8
    mov cl, 2;
    mov dh, 8
    mov dl, 28
    mov bh, 070h
    int 10h
 
    mov ah, 06h
    mov ch, 8
    mov cl, 39;
    mov dh, 8
    mov dl, 65 ;
    mov bh, 070h
    int 10h
 
    mov ah, 06h
    mov ch, 8
    mov cl, 78
    mov dh, 8
    mov dl, 78
    mov bh, 070h
    int 10h
 

    mov ah, 06h
    mov ch, 9
    mov cl, 2
    mov dh, 9
    mov dl, 28
    mov bh, 070h
    int 10h
 

    mov ah, 06h
    mov ch, 5
    mov cl, 36
    mov dh, 5
    mov dl, 38
    mov bh, 3Fh
    int 10h
 
    mov ah, 06h
    mov ch, 5
    mov cl, 75
    mov dh, 5
    mov dl, 77
    mov bh, 3Fh
    int 10h

    mov ah, 06h
    mov ch, 9
    mov cl, 36
    mov dh, 9
    mov dl, 39
    mov bh, 3Fh
    int 10h

    mov ah, 06h
    mov ch, 9
    mov cl, 75
    mov dh, 9
    mov dl, 77
    mov bh, 3Fh
    int 10h
 

    mov ah, 06h
    mov ch, 9
    mov cl, 39
    mov dh, 9
    mov dl, 65
    mov bh, 070h
    int 10h
 
    mov ah, 06h
    mov ch, 9
    mov cl, 78
    mov dh, 9
    mov dl, 78
    mov bh, 070h
    int 10h
 
    mov ah, 06h
    mov ch, 10
    mov cl, 2
    mov dh, 10
    mov dl, 78
    mov bh, 070h
    int 10h

    mov ah, 06h
    mov ch, 11
    mov cl, 2
    mov dh, 13
    mov dl, 36
    mov bh, 070h
    int 10h
 
    mov ah, 06h
    mov ch, 11
    mov cl, 37
    mov dh, 13
    mov dl, 78
    mov bh, 070h
    int 10h
 

    mov ah, 06h
    mov ch, 12
    mov cl, 36
    mov dh, 12
    mov dl, 45
    mov bh, 4Eh
    int 10h
 
 
    mov ah, 06h
    mov ch, 14
    mov cl, 2
    mov dh, 15
    mov dl, 78
    mov bh, 070h
    int 10h

    mov ah, 06h
    mov ch, 17
    mov cl, 0
    mov dh, 17  
    mov dl, 78 ;
    mov bh, 08EH;
    int 10h

    mov ax, @data
    mov ds, ax
 

    mov ah, 09h
    lea dx, text
    int 21h
               
int 27h
end start
 