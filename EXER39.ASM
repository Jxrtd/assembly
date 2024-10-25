; Filename: EXER39.ASM
; Programmer Name: Jexter Alido
; Date: 10/18/2024

.model small
.stack 200h
.data
                    db 'Enter your choice: $'
    num1prompt         db 0dh, 0ah, 'Enter first number : $'
    num2prompt         db 0dh, 0ah, 'Enter second number : $'
    addition        db 0dh, 0ah, 0dh, 0ah, 'Addition$', 0dh, 0ah
    subtraction     db 0dh, 0ah, 0dh, 0ah, 'Subtraction$', 0dh, 0ah
    multiplication  db 0dh, 0ah, 0dh, 0ah, 'Multiplication$', 0dh, 0ah
    division        db 0dh, 0ah, 0dh, 0ah, 'Division$', 0dh, 0ah
    division2       db 0dh, 0ah, 'Enter divisor: $'
    endProgram      db 0dh, 0ah, 0dh, 0ah, 'Exit Program$'
    invalid         db 0dh, 0ah, 0dh, 0ah, 'INVALID CHOICE!$' 
    thankYou        db 0dh, 0ah, 0dh, 0ah, 'Thank you.', 0dh, 0ah, '$'
    sumMessage      db 0dh, 0ah, 'Sum: $'
    prodMessage     db 0dh, 0ah, 'Product: $'
    diffMessage     db 0dh, 0ah, 'Difference: $'
    quotMessage     db 0dh, 0ah, 'Quotient: $'
    continue        db 0dh, 0ah, 0dh, 0ah, 'Press enter to continue.$'
    choice dw ?
    num1 dw ?
    num2 dw ?
    sum dw ?
    difference dw ?
    product dw ?
    quotient dw ?
    calculator      db 'MATH OPERATION', 0dh, 0ah
                    db '1 - Addition', 0dh, 0ah
                    db '2 - Subtraction', 0dh, 0ah
                    db '3 - Multiplication', 0dh, 0ah
                    db '4 - Division', 0dh, 0ah
                    db '                 ', 0dh, 0ah
                    db 'Enter your choice: $'

.code
ProgramStart:
    mov ax, @data
    mov ds, ax

    mov ax, 3
    int 10h


    lea dx, calculator
    mov ah, 09h
    int 21h

    mov ah, 01h    
    int 21h           
    mov choice, ax   

    cmp al, '1'
    je caseAdd
    cmp al, '2'
    je caseSubtract
    cmp al, '3'
    je caseMultiply
    cmp al, '4'
    je caseDivide
    jmp caseInvalid

caseAdd:
    call AdditionProc
    jmp ExitProgram

caseSubtract:
    call SubtractionProc
    jmp ExitProgram

caseMultiply:
    call MultiplicationProc
    jmp ExitProgram

caseDivide:
    call DivisionProc
    jmp ExitProgram


caseInvalid:
    call InvalidInputProc
    jmp ProgramStart

AdditionProc Proc

    lea dx, addition
    mov ah, 09h
    int 21h

    lea dx, num1prompt
    mov ah, 09h
    int 21h

    call Input
    mov num1, ax

    lea dx, num2prompt
    mov ah, 09h
    int 21h   

    call Input
    mov num2, ax

    lea dx, sumMessage
    mov ah, 09h
    int 21h 

    mov dx, num1
    add dx, num2
    mov sum, dx

    mov ax, sum
    call Convert
    ret
AdditionProc endp

SubtractionProc Proc


    lea dx, subtraction
    mov ah, 09h
    int 21h

    lea dx, num1prompt
    mov ah, 09h
    int 21h
    
    call Input
    mov num1, ax

    lea dx, num2prompt
    mov ah, 09h
    int 21h   

    call Input
    mov num2, ax

    lea dx, diffMessage
    mov ah, 09h
    int 21h 

    mov dx, num1
    sub dx, num2
    mov difference, dx

    mov ax, difference
    call Convert
    ret
SubtractionProc endp

MultiplicationProc Proc


    lea dx, multiplication
    mov ah, 09h
    int 21h

    lea dx, num1prompt
    mov ah, 09h
    int 21h
    
    call Input
    mov num1, ax

    lea dx, num2prompt
    mov ah, 09h
    int 21h   

    call Input
    mov num2, ax

    lea dx, prodMessage
    mov ah, 09h
    int 21h 

    mov ax, num1
    mov bx, num2
    mul bx
    mov product, ax

    mov ax, product
    call Convert
    ret
MultiplicationProc endp

DivisionProc Proc


    lea dx, division
    mov ah, 09h
    int 21h

    lea dx, num1prompt
    mov ah, 09h
    int 21h
    
    call Input
    mov num1, ax

    lea dx, num2prompt
    mov ah, 09h
    int 21h   

    call Input
    mov num2, ax


    lea dx, quotMessage
    mov ah, 09h
    int 21h 

    mov ax, num1
    mov bx, num2
    xor ah, ah
    div bl
    mov quotient, ax

    mov ax, quotient
    call Convert
    ret
DivisionProc endp

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

Input Proc
    mov ah, 01h
    int 21h
    sub al, '0'          
    mov ah, 0
    ret
Input endp

DisplayInput Proc
    add al, '0'
    mov dl, al
    mov ah, 02h
    int 21h
    ret
DisplayInput endp


InvalidInputProc Proc

    lea dx, invalid
    mov ah, 09h
    int 21h

    ret
InvalidInputProc endp


ExitProgram:
    mov ax, 4C00h         
    int 21h

end ProgramStart
