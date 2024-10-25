;Filename: EXER15.ASM
;Programmer Name: JEXTER A. ALIDO
;Date: 9/20/24
; Description: This assembly language program will display multiple string variables on a single line.

.MODEL small
.STACK 200h
.DATA
    regMsg db 'REGISTRATION FORM$', 0dh, 0ah
    firstNamePrompt db 0Dh, 0Ah,'Enter your first name: $'
    middleNamePrompt db 0Dh, 0Ah, 'Enter your middle name: $'
    familyNamePrompt db 0Dh, 0Ah, 'Enter your family name: $'
    greetingMessage db 0Dh, 0Ah, 'Hello, $'
    space db ' $'
    firstName db 20, 20 dup(?)
    middleName db 20, 20 dup(?)
    familyName db 20, 20 dup(?)
    exclamation db '!$'
 
 
.CODE
 
Main:
    mov ax, @data
    mov ds, ax
   
    mov dx, OFFSET regMsg
    mov ah, 09h
    int 21h
 
    ; Prompt and get first name
    mov dx, OFFSET firstNamePrompt
    mov ah, 09h
    int 21h
 
    ; Input first name
    lea dx, firstName
    mov ah, 0Ah
    int 21h
 
    ; Prompt and get middle name
    mov dx, OFFSET middleNamePrompt
    mov ah, 09h
    int 21h
 
    ; Input middle name
    lea dx, middleName
    mov ah, 0Ah
    int 21h
 
    ; Prompt and get family name
    mov dx, OFFSET familyNamePrompt
    mov ah, 09h
    int 21h
 
    ; Input family name
    lea dx, familyName
    mov ah, 0Ah
    int 21h
 
    ; Display greeting message
    mov dx, OFFSET greetingMessage
    mov ah, 09h
    int 21h
 
    ; Display first name (character by character)
    lea si, firstName + 2           ; Skip first two bytes (max length and input length)
    mov cl, [firstName+1]           ; Get actual length of first name
DisplayFirstName:
    mov dl, [si]                    ; Move character into DL
    mov ah, 02h                     ; Print character
    int 21h
    inc si                          ; Move to next character
    loop DisplayFirstName          
 
    ; Display space
    mov dl, ' '
    mov ah, 02h
    int 21h
 
    ; Display middle name (character by character)
    lea si, middleName + 2           ; Skip first two bytes (max length and input length)
    mov cl, [middleName+1]           ; Get actual length of middle name
DisplayMiddleName:
    mov dl, [si]                    ; Move character into DL
    mov ah, 02h                     ; Print character
    int 21h
    inc si                          ; Move to next character
    loop DisplayMiddleName          
 
    ; Display space
    mov dl, ' '
    mov ah, 02h
    int 21h
 
    ; Display family name (character by character)
    lea si, familyName + 2           ; Skip first two bytes (max length and input length)
    mov cl, [familyName+1]           ; Get actual length of family name
DisplayFamilyName:
    mov dl, [si]                    ; Move character into DL
    mov ah, 02h                     ; Print character
    int 21h
    inc si                          ; Move to next character
    loop DisplayFamilyName          
 
    ; End program
    mov ax, 4C00h
    int 21h
 
END Main