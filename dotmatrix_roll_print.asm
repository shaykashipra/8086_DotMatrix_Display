
.model small
.stack 100h
.data

 arr2 db 00110010b,01001001b,01001001b,01001001b,01001110b
 arr0 db 00011100b,00100010b,01000001b,00100010b,00011100b 
 arr7 db 00000001b,01100001b,00010001b,00001101b,00000011b
 arr1 db 01000010b,01000001b,01111111b,01000000b,01000000b
 

.code

main proc
    
   mov ax,@data
   mov ds,ax
    
   
   mov si,0  
   mov ax,0  
   mov dx,2000h ; starting port address 
   mov cx,5
    
  ;print 2
  lp2:
  mov al,arr2[si]
  out dx,al  
  inc si 
  mov ax,0 
  add dx,1h
  
  loop lp2
  
   
  ;print 0
   mov si,0  
   mov ax,0 
   mov cx,5 
  lp20:
  mov al,arr0[si]
  out dx,al  
  inc si 
  mov ax,0 
  add dx,1h
  
  loop lp20 
   
    
   ;print 0 
    
   mov si,0  
   mov ax,0 
   mov cx,5 
  lp200:
  mov al,arr0[si]
  out dx,al  
  inc si 
  mov ax,0 
  add dx,1h
  
  loop lp200  
    
      
   ;print 7
   mov si,0  
   mov ax,0 
   mov cx,5 
  lp2007:
  mov al,arr7[si]
  out dx,al  
  inc si 
  mov ax,0 
  add dx,1h
  
  loop lp2007
  
   
   ;print 1
   mov si,0  
   mov ax,0 
   mov cx,5 
  lp20071:
  mov al,arr1[si]
  out dx,al  
  inc si 
  mov ax,0 
  add dx,1h
  
  loop lp20071    
  
  
  ;print 1
   mov si,0  
   mov ax,0 
   mov cx,5 
  lp200711:
  mov al,arr1[si]
  out dx,al  
  inc si 
  mov ax,0 
  add dx,1h
  
  loop lp200711
   
   
   ;print 0
   
   mov si,0  
   mov ax,0 
   mov cx,5 
  lp2007110:
  mov al,arr0[si]
  out dx,al  
  inc si 
  mov ax,0 
  add dx,1h
  
  loop lp2007110
    
exit:
mov ah,4ch
int 21h    
    
    
    
main endp
end main