; Filename: MIDTERM.ASM
; CS243 Lab Hands-on Midterm Exam
; First Semester SY 2024-2025
; Student Name: JEXTER ALIDO
; Date Finished: 10/11/2024
.model small
.stack 100h
.data
 
    p1 db " Online Grocery Order Form", 13,10
     db ' Programmer: JEXTER ALIDO', 13, 10
    db ' Date: 10/10/2024', 13, 10, 10, '$'
 
    inputPrompt db ' Please enter your 5 grocery items', 13, 10, '$'
    promptItem1 db ' Item No. 1: $'
    promptItem2 db 13, 10, ' Item No. 2: $'
    promptItem3 db 13, 10, ' Item No. 3: $'
    promptItem4 db 13, 10, ' Item No. 4: $'
    promptItem5 db 13, 10, ' Item No. 5: $'
 
 
    userInputItem1 db 50 dup('$')
    userInputItem2 db 50 dup('$')
    userInputItem3 db 50 dup('$')
    userInputItem4 db 50 dup('$')
    userInputItem5 db 50 dup('$')
 
    spaceBuffer db '   $'
    orderSummaryTitle db '             ORDER SUMMARY      ', 13, 10, '$'
 
    newLine db 13, 10, 10, 10, '$'
 
    thankYouMessage db 13,10,10,10,' Thank you for shopping!$'
    repeatOrderMessage db 13,10, ' Order again soon.', 13, 10, 10, '$'
   
.code
   
main:
    mov ax, @data
    mov ds, ax
   
    mov ax, 3
    int 10h
 
    xor al, al
 

    lea dx, p1
    call print
 
   
    lea dx, inputPrompt
    call print
 
    lea dx, promptItem1
    call print
    lea dx, userInputItem1
    call scan
 
    lea dx, promptItem2
    call print
    lea dx, userInputItem2
    call scan
 
    lea dx, promptItem3
    call print
    lea dx, userInputItem3
    call scan
 
    lea dx, promptItem4
    call print
    lea dx, userInputItem4
    call scan
 
    lea dx, promptItem5
    call print
    lea dx, userInputItem5
    call scan
 
    lea dx, newLine
    call print
 
    mov ah, 06h
    xor al, al
    xor cx, cx
    mov ch, 12 
    mov cl, 1 
    mov dh, 17 
    mov dl, 38  
    mov bh, 1Fh 
    int 10h
 
    mov ah, 06h
    mov ch, 12 
    mov cl, 1 
    mov dh, 12  
    mov dl, 38  
    mov bh, 5Ah 
    int 10h
 
    mov ah, 06h
    mov ch, 14
    mov cl, 1
    mov dh, 14  
    mov dl, 38  
    mov bh, 03Fh
    int 10h
 
    mov ah, 06h
    mov ch, 16
    mov cl, 1
    mov dh, 16  
    mov dl, 38  
    mov bh, 03Fh
    int 10h
 
    mov ah, 06h
    mov ch, 21
    mov cl, 1
    mov dh, 21  
    mov dl, 17  
    mov bh, 0Ceh
    int 10h
 
    mov ah, 06h
    mov ch, 13
    mov cl, 14
    mov dh, 17  
    mov dl, 14  
    mov bh, 00h
    int 10h
 
    lea dx, orderSummaryTitle
    call print
   
    lea dx, promptItem1
    call print
    lea dx, spaceBuffer
    call print
    lea dx, userInputItem1+2
    call print
 
    lea dx, promptItem2
    call print
    lea dx, spaceBuffer
    call print
    lea dx, userInputItem2+2
    call print
 
    lea dx, promptItem3
    call print
    lea dx, spaceBuffer
    call print
    lea dx, userInputItem3+2
    call print
 
    lea dx, promptItem4
    call print
    lea dx, spaceBuffer
    call print
    lea dx, userInputItem4+2
    call print
 
    lea dx, promptItem5
    call print
    lea dx, spaceBuffer
    call print
    lea dx, userInputItem5+2
    call print
 
    lea dx, thankYouMessage
    call print
    lea dx, repeatOrderMessage
    call print
 
 
    mov ax, 4C00h
    int 21h
 
    print PROC
    mov ah, 09h
    int 21h
    ret
    print ENDP
   
    scan PROC
    mov ah, 0AH
    int 21h
    ret
    scan ENDP
 
 
end main
