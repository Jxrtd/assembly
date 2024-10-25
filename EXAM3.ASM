.model small
.stack 100h
.data
header db "VOTER'S REGISTRATION FORM"
db 0ah,"Created by: JEXTER ALIDO"
db 0ah,"Date: 10/04/2024"
db 0ah,0ah,"Please enter the following data: ",0ah,'$'
 
    inputFirstString  db 50 dup ('$')
    inputMiddleString db 50 dup ('$')
    inputFamilyString  db 50 dup ('$')
    inputGender  db 50 dup ('$')
    inputMonth  db 50 dup ('$')
    inputDay  db 50 dup ('$')
    inputYear  db 50 dup ('$')
    inputHouseNum  db 100 dup ('$')
    inputStreet  db 50 dup ('$')
    inputBarangay  db 50 dup ('$')
    inputCity  db 50 dup ('$')
    inputProvince  db 50 dup ('$')
    inputSeniorName  db 50 dup ('$')
    inputElemName  db 50 dup ('$')
    inputElemYear  db 50 dup ('$')
    inputjuniorName  db 50 dup ('$')
    inputjuniorYear  db 50 dup ('$')
    inputSeniorYear  db 50 dup ('$')
    inputCollageName  db 50 dup ('$')
    inputCollageYear  db 50 dup ('$')
    FirstString db 'First Name: $'
    MiddleString db 'Middle Name: $'
    FamilyString db 'Family Name: $'
    Gender       db 'Gender: $'
    promt1        db 0dh, 0ah, 'Birthday$', 0dh, 0ah
    month         db           '  Month: $'
    day           db           '  Day: $'
    year          db           '  Year: $'
    promt2        db 0dh, 0ah, 'Address$', 0dh, 0ah
    HouseNum      db           '  House Number: $'
    Street        db           '  Street: $'
    Barangay      db           '  Barangay: $'
    City          db           '  City: $'
    Province      db           '  Province: $'
    promt3        db 0dh, 0ah, 'Educational Background$', 0dh, 0ah
    Elempromt     db 0dh, 0ah, '  Elementary$', 0dh, 0ah
    ElemName      db           '    Name of School: $'
    ElemYear      db           '    Year Graduated: $'
    juniorpromt   db 0dh, 0ah, '  Junior High School$', 0dh, 0ah
    juniorName    db           '    Name of School: $'
    juniorYear    db           '    Year Graduated: $'
    Seniorpromt   db 0dh, 0ah, '  Senior High School$', 0dh, 0ah
    SeniorName    db           '    Name of School: $'
    SeniorYear    db           '    Year Graduated: $'
    Collegepromt  db 0dh, 0ah, '  College$', 0dh, 0ah
    CollageName   db           '    Name of School: $'
    CollageYear   db           '    Year Graduated: $'
    outputHeader db 0ah,0AH, 'SUMMARY OF INFORMATION'
DB 0AH, 'Please verify if all entries are correct. $'

    footer db 0ah,0ah,'Vote Wisely!'
db 0ah,'Thank you for registering.$'
 
.code
Main Proc
    mov ax, @data
    mov ds, ax

    mov ax, 3
int 10h
 
mov ax, 1112h ; BIOS function to enable 80x50 text mode
xor bl, bl ; Select page 0 (ignored in this mode)
int 10h

    mov ah, 06h
xor al, al
xor cx, cx
 
mov ah, 06h
mov ch, 0
mov cl, 0
mov dh, 0
mov dl, 24
mov bh, 05Fh
int 10h
 
mov ah, 06h
mov ch, 1
mov cl, 0
mov dh, 1
mov dl, 34
mov bh, 03Fh
int 10h
 
mov ah, 06h
mov ch, 2
mov cl, 0
mov dh, 2
mov dl, 20
mov bh, 02Fh
int 10h
 
lea dx, header
mov ah, 9
int 21h

    lea dx, FirstString
    mov ah, 09h
    int 21h

    lea dx, inputFirstString
    mov ah, 0ah
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, MiddleString
    mov ah, 09h
    int 21h

    lea dx, inputMiddleString
    mov ah, 0ah
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, FamilyString
    mov ah, 09h
    int 21h

    lea dx, inputFamilyString
    mov ah, 0ah
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, Gender
    mov ah, 09h
    int 21h

    lea dx, inputGender
    mov ah, 0ah
    int 21h
    
    lea dx, promt1
    mov ah, 09h
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, month
    mov ah, 09h
    int 21h

    lea dx, inputMonth
    mov ah, 0ah
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h
  
    lea dx, day
    mov ah, 09h
    int 21h

    lea dx, inputDay
    mov ah, 0ah
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, year
    mov ah, 09h
    int 21h

    lea dx, inputYear
    mov ah, 0ah
    int 21h

    lea dx, promt2
    mov ah, 09h
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, HouseNum
    mov ah, 09h
    int 21h

    lea dx, inputHouseNum
    mov ah, 0ah
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, Street
    mov ah, 09h
    int 21h

    lea dx, inputStreet
    mov ah, 0ah
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, Barangay
    mov ah, 09h
    int 21h

    lea dx, inputBarangay
    mov ah, 0ah
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, City
    mov ah, 09h
    int 21h

    lea dx, inputCity
    mov ah, 0ah
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, Province
    mov ah, 09h
    int 21h

    lea dx, inputProvince
    mov ah, 0ah
    int 21h

    lea dx, promt3
    mov ah, 09h
    int 21h

    lea dx, Elempromt
    mov ah, 09h
    int 21h
    
    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, ElemName
    mov ah, 09h
    int 21h

    lea dx, inputElemName
    mov ah, 0ah
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, ElemYear
    mov ah, 09h
    int 21h

    lea dx, inputElemYear
    mov ah, 0ah
    int 21h


    lea dx, juniorpromt
    mov ah, 09h
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, juniorName
    mov ah, 09h
    int 21h

    lea dx, inputjuniorName
    mov ah, 0ah
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, juniorYear
    mov ah, 09h
    int 21h

    lea dx, inputjuniorYear
    mov ah, 0ah
    int 21h


    lea dx, Seniorpromt
    mov ah, 09h
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, SeniorName
    mov ah, 09h
    int 21h

    lea dx, inputSeniorName
    mov ah, 0ah
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, SeniorYear
    mov ah, 09h
    int 21h

    lea dx, inputSeniorYear
    mov ah, 0ah
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h
;----------------------------------------------------------------------------------------------------------------------------
    
    lea dx, outputHeader
    mov ah, 9
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, FirstString
    mov ah, 09h
    int 21h

    lea dx, inputFirstString + 2
    mov ah, 09h
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, MiddleString
    mov ah, 09h
    int 21h

    lea dx, inputMiddleString + 2
    mov ah, 09h
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, FamilyString
    mov ah, 09h
    int 21h

    lea dx, inputFamilyString + 2
    mov ah, 09h
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, Gender
    mov ah, 09h
    int 21h

    lea dx, inputGender + 2
    mov ah, 09h
    int 21h


    lea dx, promt1
    mov ah, 09h
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, month
    mov ah, 09h
    int 21h

    lea dx, inputMonth + 2
    mov ah, 09h
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, year
    mov ah, 09h
    int 21h

    lea dx, inputYear + 2
    mov ah, 09h
    int 21h


    lea dx, promt2
    mov ah, 09h
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, HouseNum
    mov ah, 09h
    int 21h

    lea dx, inputHouseNum+ 2
    mov ah, 09h
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, Street
    mov ah, 09h
    int 21h

    lea dx, inputStreet + 2
    mov ah, 09h
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, Barangay
    mov ah, 09h
    int 21h

    lea dx, inputBarangay + 2
    mov ah, 09h
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, City
    mov ah, 09h
    int 21h

    lea dx, inputCity + 2
    mov ah, 09h
    int 21h

    lea dx, promt3
    mov ah, 09h
    int 21h

    lea dx, Elempromt
    mov ah, 09h
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, ElemName
    mov ah, 09h
    int 21h

    lea dx, inputElemName + 2
    mov ah, 09h
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, ElemYear
    mov ah, 09h
    int 21h

    lea dx, inputElemYear + 2
    mov ah, 09h
    int 21h


    lea dx, juniorpromt
    mov ah, 09h
    int 21h


    lea dx, juniorName
    mov ah, 09h
    int 21h

    lea dx, inputjuniorName + 2
    mov ah, 09h
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, juniorYear
    mov ah, 09h
    int 21h

    lea dx, inputjuniorYear + 2
    mov ah, 09h
    int 21h


    lea dx, Seniorpromt
    mov ah, 09h
    int 21h


    lea dx, SeniorName
    mov ah, 09h
    int 21h

    lea dx, inputSeniorName + 2
    mov ah, 09h
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    lea dx, SeniorYear
    mov ah, 09h
    int 21h

    lea dx, inputSeniorYear + 2
    mov ah, 09h
    int 21h

    mov ah, 02h
    mov cl, 0ah
    mov dl, cl
    int 21h

    mov ah, 06h
xor al, al
xor cx, cx
 
mov ah, 06h
mov ch, 49
mov cl, 0
mov dh, 49
mov dl, 0
mov bh, 0ceh    ; Set red background (background = 0xC) and light gray text (0xE)
int 10h

lea dx, footer
mov ah, 9
int 21h

    mov ax, 4C00h
    int 21h

Main endp

End Main
