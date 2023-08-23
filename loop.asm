

;print 0 to 9 number using loop

.model small
.data
arr db 4,7,9,5 

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset arr
    mov cx,4
    
    L1: 
    
    mov dx,[si] 
    add dx,48
    mov ah,2
    int 21h
    
    inc si
    
    loop L1
    
    exit:
    mov ah,4ch
    int 21h
    
main endp
end main




