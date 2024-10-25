;Filename: DEMO.ASM
;Displaying single character, numbers, and symbols
;Jexter Alido
;August 30, 2024

.model small
.code
.stack 100
start:
	mov ah,02h
	mov cl,30h;0
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,31h;1
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
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,33h;3
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,34h;4
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,35h;5
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,36h;6
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,37h;
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,38h;8
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,39h;9
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,21h;!
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,22h;"
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,23h;#
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,24h;$
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,25h;%
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,26h;&
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,27h;'
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,28h;(
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,29h;)
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,2Ah;*
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,2Bh;+
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,2Ch;'
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,2Dh;(
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,2Eh;(
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,0Ah;NEW LINE
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,3h;(
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h;space
	mov dl,cl
	int 21h




int 27h
end start