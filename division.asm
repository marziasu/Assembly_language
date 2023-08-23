
.model small
.data
quo dw ?
rem dw ?

.code
main proc
    mov ax,26
    mov dx,0
    mov bx,5
  
    
    div bx 
    aam
    mov ch,ah
    mov cl,al
    mov rem,dx
    
    
    ;for 2 digit ax=ah:al
    mov dl,ch
    add dl,48
    mov ah,2
    int 21h 
    mov dl,cl
    add dl,48
    mov ah,2
    int 21h   
    
    mov dl,10
    mov ah,2
    int 21h 
    mov dl,13
    mov ah,2
    int 21h
    
    mov dx,rem
    add dx,48
    mov ah,2
    int 21h
    
    
    
main endp
end main