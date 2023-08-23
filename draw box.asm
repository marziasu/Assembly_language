; draw box

.model small
.stack 100h
.data
.code
main proc  
    
   mov ah,6  ;which is mov ah,006h for scroll lines 
   mov al,10  ; for blinking bit
   mov bh,00010000b
   mov ch,20  ;starting top row
   mov cl,20  ;starting left column
   mov dh,45 ;ending bottom row
   mov dl,45 ;ending right column
   int 10h
   
   exit:
   mov ah,4ch
   int 21h
   
    
    
main endp
end main