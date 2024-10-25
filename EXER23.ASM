; Filename: EXER23.ASM
; Programmer Name: JEXTER A. ALIDO
; Date: 9/20/24

.model small
.stack 200h
.data
    userChoice db ?
    introMessage db 0dh, 0ah, 'Cebu Institute of Technology - University', 0dh, 0ah, 'Automated Teller Machine', 0dh, 0ah, '$'
    mainMenu db 0dh, 0ah, 'Main Menu', 0dh, 0ah, '1 Balance Inquiry', 0dh, 0ah, '2 Withdrawal', 0dh, 0ah, '3 Deposit', 0dh, 0ah, '4 Transfer', 0dh, 0ah, '5 Bills Payment', 0dh, 0ah, '6 Change Pin', 0dh, 0ah, '7 Exit$'
    promptChoice db 0dh, 0ah, 'Enter number of your choice: $'
    msgBalanceInquiry db 0dh, 0ah, 0dh, 0ah, 'You have chosen 1 Balance Inquiry.', 0dh, 0ah, '$'
    msgWithdrawal db 0dh, 0ah, 0dh, 0ah, 'You have chosen 2 Withdrawal.', 0dh, 0ah, '$'
    msgDeposit db 0dh, 0ah, 0dh, 0ah, 'You have chosen 3 Deposit.', 0dh, 0ah, '$'
    msgTransfer db 0dh, 0ah, 0dh, 0ah, 'You have chosen 4 Transfer.', 0dh, 0ah, '$'
    msgBillsPayment db 0dh, 0ah, 0dh, 0ah, 'You have chosen 5 Bills Payment.', 0dh, 0ah, '$'
    msgChangePin db 0dh, 0ah, 0dh, 0ah, 'You have chosen 6 Change Pin.', 0dh, 0ah, '$'
    msgExit db 0dh, 0ah, 0dh, 0ah, 'You have chosen 7 Exit.', 0dh, 0ah, '$'
    exitMessage db 0dh, 0ah, 'Thank you for banking with us!', 0dh, 0ah, 'Copyright 2024', 0dh, 0ah, 'Programmer: JEXTER ALIDO$'
.code
ProgramStart:
    mov ax, @data
    mov ds, ax

    mov dx, offset introMessage
    mov ah, 9
    int 21h

    mov dx, offset mainMenu
    mov ah, 9
    int 21h

    mov dx, offset promptChoice
    mov ah, 9
    int 21h

    mov ah, 01h     
    int 21h            
    mov userChoice, al

    cmp al, '1'        
    jz BalInq   
    cmp al, '2'        
    jz Wthdwl  
    cmp al, '3'        
    jz Depo  
    cmp al, '4'        
    jz Trfr  
    cmp al, '5'        
    jz Payment  
    cmp al, '6'        
    jz Pin  
    cmp al, '7'        
    jz Exit          

BalInq:
    mov dx, offset msgBalanceInquiry     
    jmp DisplayAll 

Wthdwl:
    mov dx, offset msgWithdrawal
    jmp DisplayAll 

Depo:
    mov dx, offset msgDeposit  
    jmp DisplayAll 

Trfr:
    mov dx, offset msgTransfer  
    jmp DisplayAll 

Payment:
    mov dx, offset msgBillsPayment  
    jmp DisplayAll 

Pin:
    mov dx, offset msgChangePin 
    jmp DisplayAll  

Exit:
    mov dx, offset msgExit  
    jmp DisplayAll            

DisplayAll:
    mov ah, 9       
    int 21h

    mov dx, offset exitMessage
    mov ah, 9
    int 21h

    mov ah, 4ch         ; DOS terminate program function
    int 21h

end ProgramStart    

