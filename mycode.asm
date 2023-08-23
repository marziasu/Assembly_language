 ; program to print a name with character

.model small
.stack 100h
.data
  n1 db 'rupa$' 
  n2 db 'marzia$'
.code
main proc
 
mov ax,@data
mov ds,ax



;mov dx,offset n1  
lea dx,n1
mov ah,9
int 21h 

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h   

lea dx,n2
mov ah,9
int 21h

exit:
mov ah,4ch
INT 21h    
    
    
    
main endp
end main




