
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
fact macro p1
   
    mov bl,p1 
    dec bl    
    mov cl,bl
    l1:
        mul bl
        dec bl 
        
    loop l1 
    
    mov dl,al
    mov ah,2
    int 21h
        

endm 

org 100h
.data   

.code
; add your code here  
mov al,4h
fact al 

exit:
mov ah,4ch
int 21h
ret




