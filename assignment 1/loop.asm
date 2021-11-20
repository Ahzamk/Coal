 print macro p1
mov dl,p1   
mov ah,02
int 21h  
 endm     
      
Output macro p1
mov dx,offset p1   
mov ah,09
int 21h  
endm 

.model small
.stack 100h
.data 
 
 counter db ?
 str db 100 dup("$")
 x db "Enter Your Text==> $" 
 x2 db "Enter Counter==> $" 

 num db 0          
 newline db 0AH,0DH,"$"
.code  

main proc

mov ax , @data
mov ds, ax


output x  


         
mov si, offset str  

        
  
takingInputString:
mov ah,1
int 21h

cmp al,13  

je InputStringEnd 
 
mov [si],al 
inc si

jmp takingInputString   
  
    
    
    
InputStringEnd: 
 
output newline
output x2 


mov ah ,1
int 21h   
 
mov counter ,al  

mov [si] , offset counter
mov cx , [si]

L1:
Output newLine
lea dx, str 
mov ah,09
int 21h 
 
inc num
mov bl,num 
add bl,48
cmp bl,counter  
je End


loop L1
  
  End:
 
mov ah,4ch
int 21h     

output newline


main endp
end main

