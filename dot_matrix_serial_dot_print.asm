
.model small
.stack 100h
.data

 
 arr db 000000000b,000000000b,000000000b,000000000b,000000000b

.code

main proc
    
   mov ax,@data
   mov ds,ax  
   
   
   
   
    
   
   mov si,0  
   mov ax,0  
   mov dx,2000h ; starting port address 
   mov cx,40
   
   
  ;print 2
  lp2:
  mov al,arr[si]
  xor al,01111111b
  out dx,al   
  call delay
  inc si 
  and ax,0
  and al,00000000b 
   
 
  out dx,al
  call delay
  add dx,1h 
  
  cmp si,5
  jne next 
  
  mov si,0
  
  
  next:
  
  loop lp2
  

    
exit:
mov ah,4ch
int 21h    
    
    
    
main endp


delay proc near
    
 push cx
 mov cx,15 
 
 lp: loop lp    
    
    pop cx 
    ret
delay endp


end main