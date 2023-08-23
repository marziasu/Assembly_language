
; swap two numbers
;create macro for print of 16 bits address
print macro p1
    mov dx,p1
    mov ah,2
    int 21h
       
endm

.model small 
.stack 100h
.data
n1 dw '2'
n2 dw '3' 
string1 db 'after swaping:$'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    print n1
    call enterkey 
    
    print n2
    call enterkey 
    
    ;mov si,offset string1
    lea dx,string1
    mov ah,9
    int 21h
    call enterkey 
    
    mov ax,n1
    push ax
    
    mov bx,n2
    push bx
    pop ax
    print ax
    call enterkey
     
    pop bx
    print bx
    
    
    
main endp 

;create procedure for newline
enterkey proc
    mov dl,10
    mov ah,2
    int 21h  
    
    mov dl,13
    mov ah,2
    int 21h 
    ret
enterkey endp

end main     





