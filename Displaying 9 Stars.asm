section .text
	global_start 	; must ne declared for linker [gcc]
_start:				; tell linker entry point
	mov edx,len		; message length
	mov ecx,msg		; message to write
	mov ebx,1		; file descriptor[stdout]
	mov eax,4		; system call number [sys_write]
	int 0x80		; call kernel
	
	mov edx,9		; message length
	mov ecx,s2		; message ti write
	mov ebx,1		; file descriptor [stdout]
	mov eax,4		; system call number
	int 0x80 		; call kernel
section .data
msg db 'Displaying 9 starts', 0xa ; a message
len equ $ - mesg				  ; len of msg
s2 times 9 db '*'