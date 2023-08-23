.model small 
.stack 100h
.data
.code
main proc  
    mov cx,5 
    
    mov bx,1
    
    L1:
       push cx 
       mov cx,bx
        
       L2:
        mov dx,'*'
        mov ah,2
        int 21h 
       
       loop L2 
       call enterkey
       inc bx
       
       pop cx 
       
    loop L1
    exit:
    mov ah,4ch
    int 21h
    
main endp 

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