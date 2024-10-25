; FILENAME : EXER11.ASM
; NAME : JEXTER ALIDO

.MODEL SMALL
.STACK 100
.DATA
 
TEXT    db '   Log Out '
        db 13, 10, 10, '                        Dear Customers, Welcome to Bank X             ', 13, 10, 10
        db 13, 10, 10, '        <    Withdrawal                                   Payment    >', 13, 10, 10
        db 13, 10, 10, '        <    Balance Inquiry                   Recent Transaction    >', 13, 10, 10
        db 13, 10, 10, '        <    Transfer                      Credit Card Operations    >', 13, 10, 10
        db 13, 10, 10, '        <    Change PIN                                   Deposit    >', 13, 10, 10, 10, 10, '$'
 
.CODE
START:
    mov ax, 3  
    int 10h     
    mov ah, 06h 
    xor al, al  
    xor cx, cx  

    mov ch, 1   
    mov cl, 0   
    mov dh, 22  
    mov dl, 80  
    mov bh, 17h 
    int 10h
    
    mov ch, 1   
    mov cl, 0   
    mov dh, 3   
    mov dl, 80  
    mov bh, 31h 
    int 10h

    mov ch, 0   
    mov cl, 0   
    mov dh, 0   
    mov dl, 80  
    mov bh, 71h 
    int 10h

    mov ch, 6   
    mov cl, 10  
    mov dh, 6   
    mov dl, 32  
    mov bh, 31h 
    int 10h

    mov ch, 6   
    mov cl, 7   
    mov dh, 6   
    mov dl, 9   
    mov bh, 71h 
    int 10h

    mov ch, 6   
    mov cl, 41  
    mov dh, 6   
    mov dl, 67  
    mov bh, 31h 
    int 10h

    mov ch, 6   
    mov cl, 68  
    mov dh, 6   
    mov dl, 70  
    mov bh, 71h 
    int 10h

    mov ch, 10  
    mov cl, 10  
    mov dh, 10  
    mov dl, 32  
    mov bh, 31h 
    int 10h

    mov ch, 10   
    mov cl, 7   
    mov dh, 10  
    mov dl, 9   
    mov bh, 71h 
    int 10h

    mov ch, 10  
    mov cl, 41  
    mov dh, 10  
    mov dl, 67  
    mov bh, 31h 
    int 10h

    mov ch, 10   
    mov cl, 68  
    mov dh, 10   
    mov dl, 70  
    mov bh, 71h 
    int 10h

    mov ch, 14  
    mov cl, 10  
    mov dh, 14  
    mov dl, 32  
    mov bh, 31h 
    int 10h

    mov ch, 14   
    mov cl, 7   
    mov dh, 14  
    mov dl, 9   
    mov bh, 71h 
    int 10h

    mov ch, 14  
    mov cl, 41  
    mov dh, 14  
    mov dl, 67  
    mov bh, 31h 
    int 10h

    mov ch, 14   
    mov cl, 68  
    mov dh, 14   
    mov dl, 70  
    mov bh, 71h 
    int 10h

    mov ch, 18  
    mov cl, 10  
    mov dh, 18  
    mov dl, 32  
    mov bh, 31h 
    int 10h

    mov ch, 18   
    mov cl, 7   
    mov dh, 18  
    mov dl, 9   
    mov bh, 71h 
    int 10h

    mov ch, 18  
    mov cl, 41  
    mov dh, 18  
    mov dl, 67  
    mov bh, 31h 
    int 10h

    mov ch, 18   
    mov cl, 68  
    mov dh, 18   
    mov dl, 70  
    mov bh, 71h 
    int 10h

    mov ax, @data
    mov ds, ax
    mov ah, 09h
    lea dx, text
    int 21h    

int 27h
END START
