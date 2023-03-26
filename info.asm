;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Xsharp -- public domain
;; Again feel free to use this
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; a simple hello world


section .text                   

                           
    global  _start          
			                   

_start:

                                

    mov     edx,len            
    mov     ecx,msg            
    mov     ebx,1               
    mov     eax,4              
    int     0x80            

                                ;and exit

  	mov     ebx,0               ;first syscall argument: exit code
    mov     eax,1               ;system call number (sys_exit)
    int     0x80                ;call kernel

section .data                   ;section declaration

msg db      "Hello, world!",0xa ;our dear string
len equ     $ - msg             ;length of our dear string
