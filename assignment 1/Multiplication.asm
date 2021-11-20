
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

 msg db " Enter first number>$"    
 var db 0ah, " Enter second number>$"
 var1 db 0ah,"  RESULT----->$" 
 newLine db 0ah,0dh,"$"
.code 
main proc 
    
         
    mov ax,@data
mov ds,ax
mov dx,offset msg
mov ah,09h 
 int 21h  
       
       mov ah,01h
       int 21h
          
       mov bl,al
      sub bl,48
       
               
             
      Output newline
       
            

                
      Output msg
       
       mov ah,01h
       int 21h
       sub al,48 
        
        
          
       mul bl        
       aam
        
       mov bl,al       
     add bl,48
              
      mov ch,ah       
     add ch,48
            
              
     Output  newline
     
     

                    
   Output var1
     
     
    

     mov dl,ch
     mov ah,02h
     int 21h 
     
     
      mov dl,bl
     mov ah,02h
     int 21h     

      
 
Output newline
mov ah,4ch       
int 21h 
    
    
 main endp
end main
