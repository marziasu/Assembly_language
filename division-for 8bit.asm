
.model small
.data
quo db ?
rem db ?

.code
main proc
    mov ax,26
    mov bl,5
  
    
    div bl
    mov quo,al
    mov rem,ah
    
    mov dl,quo
    add dl,48
    mov ah,2
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,rem
    add dl,48
    mov ah,2
    int 21h
    
    
    
main endp
end main