.model small
.stack 100
.data
    msg db '    CEBU INSTITUTE OF TECHNOLOGY UNIVERSITY$'
    msg1 db '           Collage Enrollment Form$'
    msg2 db '            ____________    ____________ $'
    msg3 db 'Full Name: |____________|  |____________|$'
    msg4 db '            FIRST NAME      LAST NAME $'
    msg5 db '            _______________________________ $'
    msg6 db 'ADDRESS:   |_______________________________|$'
    msg7 db '            STREET ADDRESS $'
    msg8 db '            __________________      __________________ $'
    msg9 db '           |__________________|    |__________________|$'
    msg10 db '           CITY                    STATE/PROVINCE $'
    msg11 db '            ____________     ____________    ____________ $'
    msg12 db 'BIRTH:     |____________|   |____________|  |____________|$'
    msg13 db '            MONTH            DAY             YEAR $'
    msg14 db '             _               _                  _   $'
    msg15 db 'GENDER:     |_| MALE        |_| FEMALE         |_| N/A$'
    msg16 db '                 _______________________________________ $'
    msg17 db 'STUDENT NUMBER: |_______________________________________|$'
    msg18 db '                 ID NUMBER$'
    msg19 db '                _______________________________________ $'
    msg20 db 'STUDENT EMAIL: |_______________________________________|$'
    msg21 db '                 example@cit.edu$'
    msg22 db '           _                              _                       $'
    msg23 db 'COURSES:  |_| BS Architecture            |_| BS Accountancy  $'
    msg24 db '           _                              _   $'
    msg25 db '          |_| BS Industrial Engineering  |_| BS Information Technology$'
    msg26 db '           _                              _                           $'
    msg27 db '          |_| BS Chemical Engineering    |_| BS Tourism Management   $'
    msg28 db '           _                              _                          $'
    msg29 db '          |_| BS Civil Engineering       |_| BS Computer Science  $'
    msg30 db '       ___________________               ______________      $'
    msg31 db 'DATE: |___________________|             |  Signature   |  $'
    msg32 db '                                        |              |$'
    msg33 db '                                        |              |$'
    msg34 db '                                        |              |$'
    msg35 db '                                        |              |$'
    msg36 db '                                        | (Your Name)  |$'
    msg37 db '                                        |______________|        $'
.code
start:
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    lea dx, msg
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 
    
    mov ah, 09h
    lea dx, msg1
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg2
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg3
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg4
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg5
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg6
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg7
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg8
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg9
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg10
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg11
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg12
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg13
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg14
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg15
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg16
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg17
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg18
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg19
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg20
    int 21h    

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg21
    int 21h   

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg22
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg23
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg24
    int 21h    

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg25
    int 21h  

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg26
    int 21h   

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg27
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg28
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg29
    int 21h    

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h  

    mov ah, 09h
    lea dx, msg30
    int 21h    

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h  

    mov ah, 09h
    lea dx, msg31
    int 21h   

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg32
    int 21h   

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg33
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg34
    int 21h

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg35
    int 21h    

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg36
    int 21h  

    mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h 

    mov ah, 09h
    lea dx, msg37
    int 21h   

int 27h
end start 