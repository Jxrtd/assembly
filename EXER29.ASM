; Programmer Name: JEXTER ALIDO
; Date: 09/28/2024

.model small
.stack 200h
.data 
    num1    dw ?
    num2    dw ?
    quot    dw ?
    firstInt    db 0dh, 0ah, 'Enter first integer: $'
    secondInt   db 0dh, 0ah, 'Enter second integer: $'
    quotient  db 0dh, 0ah, 'Quotient: $'
.code
Start:

    mov ax, @data
    mov ds, ax

    lea dx, firstInt
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    sub al, '0'          
    mov ah, 0
    mov num1, ax

    lea dx, secondInt
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    sub al, '0'          
    mov ah, 0
    mov num2, ax

    mov ax, num1
    mov bx, num2
    xor ah, ah
    div bl
    mov quot, ax

    lea dx, quotient 
    mov ah, 09h
    int 21h

    mov ax, quot
    call Convert

    mov ax, 4C00h
    int 21h

Convert Proc
    push ax
    push bx
    push cx
    push dx
    mov cx, 0           
    mov bx, 10           
    converter_loop1:
        xor dx, dx           
        div bx               
        push dx              
        inc cx               
        cmp ax, 0            
        jne converter_loop1       
    converter_loop2:
        pop dx              
        add dl, '0'          
        mov ah, 02h          
        int 21h              
        dec cx               
        cmp cx, 0            
        jne converter_loop2      
    pop dx
    pop cx
    pop bx
    pop ax
    ret
Convert endp  
