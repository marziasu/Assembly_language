.model small
.data


.code
main proc
     ;mov al,3
     ;mov bl,2
     ;mul bl
     
     ;mov dx,ax 
     ;add dx,48
     ;mov ah,2
     ;int 21h
     
     mov ax,5
     mov bx,2
     mul bx
     
     aam
     mov ch,ah
     mov cl,al
     
     mov dl,ch
     add dl,48
     mov ah,2
     int 21h 
     
     mov dl,cl
     add dl,48
     mov ah,2
     int 21h
    
    
main endp
end main