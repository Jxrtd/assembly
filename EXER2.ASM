;Filename: DEMO.ASM
;Displaying single character, numbers, and symbols
;Jexter Alido
;August 30, 2024

.model small
.code
.stack 100
start:
	mov ah,02h
	mov cl,4Ah;J
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,65h;e
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,78h;x
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,74h;t
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,65h;e
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,72h;r
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h;Space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,41h;A
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,70h;p
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,61h;a
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,72h;r
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,72h;r
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,65h;e
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h;Space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,41h;A
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,6Ch;l
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,69h;i
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,64h;d
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,6Fh;o
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,42h;B
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,61h;a
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,63h;c
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,68h;h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,65h;e
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,6Ch;l
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,6Fh;o
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,72h;r
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,6Fh;o
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,66h;f
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,53h;S
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,63h;c
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,69h;i
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,65h;e
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,6Eh;n
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,63h;c
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,65h;e
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,69h;i
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,6Eh;n
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,43h;C
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,6Fh;o
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,6Dh;m
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,70h;p
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,75h;u
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,74h;t
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,65h;e
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,72h;r
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,53h;S
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,63h;c
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,69h;i
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,65h;e
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,6Eh;n
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,63h;c
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,65h;e
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,32h;2
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,6Eh;n
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,64h;d
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,59h;Y
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,65h;e
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,61h;a
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,72h;r
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,43h;C
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,6Fh;o
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,6Ch;l
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,6Ch;l
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,65h;e
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,67h;g
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,65h;e
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,6Fh;o
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,66h;f
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,43h;C
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,6Fh;o
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,6Dh;m
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,70h;p
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,75h;u
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,74h;t
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,65h;e
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,72h;r
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,53h;S
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,74h;t
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,75h;u
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,64h;d
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,69h;i
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,65h;e
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,73h;s
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,43h;C
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,65h;e
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,62h;b
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,75h;u
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,49h;I
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,6Eh;n
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,73h;s
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,74h;t
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,69h;i
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,74h;t
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,75h;u
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,74h;t
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,65h;e
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,6Fh;o
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,66h;f
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,54h;T
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,65h;e
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,63h;c
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,68h;h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,6Eh;n
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,6Fh;o
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,6Ch;l
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,6Fh;o
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,67h;g
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,79h;y
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,2Dh;-
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,55h;U
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,6Eh;n
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,69h;i
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,76h;v
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,65h;e
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,72h;r
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,73h;s
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,69h;i
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,74h;t
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,79h;y
	mov dl,cl
	int 21h








int 27h
end start