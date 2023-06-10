bits 32
org 101000h
push ebp
mov eax,21cd4cffh
mov eax,0
mov ds,ax
mov eax,50
mov ebx,50
mov edx,100
mov ebp,100
mov ecx,1
fors:
call BOX
	add eax,10 
	add ebx,10
	add edx,10
	add ebp,10
	inc ecx
	cmp ecx,10
	jnz fors
pop ebp
ret
ret
ret
ret
BOX:                
          push esi                
          push edi                
          push ds                
          push ebp                
          push edx                
          push ecx                
          push ebx                
          push eax                
          and eax,511
          and ebx,255
          and edx,511
          and ebp,255
          cmp eax,edx
          JB BOX1                
          xchg eax,edx
          BOX1:                
          cmp ebx,ebp
          JB BOX2                
          xchg ebx,ebp
          BOX2:                
          mov esi,ebp
          mov ebp,boxxx1
          ds
          mov [ebp],eax
          mov ebp,boxxx2
          ds
          mov [ebp],edx
          mov ebp,boxyy1
          ds
          mov [ebp],ebx
          mov ebp,boxyy2
          ds
          mov [ebp],esi
          mov ebp,boxcolor
          ds
          mov [ebp],ecx
                          
                          
                          
          mov ebp,boxyy1
          ds
          mov eax,[ebp]
          mov ebx,320
          xor edx,edx
          clc                
          imul bx                
          mov ebp,boxxx1
          ds
          mov ebx,[ebp]
          clc                
          add eax,ebx
                          
          mov ebp,boxstart
          ds
          mov [ebp],eax
                          
          mov ebp,boxxx1
          ds
          mov ebx,[ebp]
          mov ebp,boxxx2
          ds
          mov eax,[ebp]
                          
          sub eax,ebx
          mov ebp,boxxxx
          ds
          mov [ebp],eax
          mov ebx,eax
          mov eax,320
          sub eax,ebx
          mov ebp,boxxxxx
          ds
          mov [ebp],ax
                          
                          
          mov ebp,boxyy1
          ds
          mov ebx,[ebp]
          mov ebp,boxyy2
          ds
          mov eax,[ebp]
                          
          sub eax,ebx
          mov ebp,boxyyy
          ds
          mov [ebp],eax
                          
          ;push start -------------------
                          
          mov ebp,boxstart
          ds
          mov eax,[ebp] 
          push eax                
                          
          mov ebp,boxcolor
          ds
          mov eax,[ebp] 
          push eax                
                          
          mov ebp,boxyyy
          ds
          mov eax,[ebp] 
          push eax                
                          
                          
          mov ebp,boxxxx
          ds
          mov eax,[ebp] 
          push eax                
                          
          mov ebp,boxxxxx
          ds
          mov eax,[ebp] 
          mov edx,eax
                          
          pop esi                
          pop ebx                
          pop eax                
          pop ebp                
          clc                
          add ebp,0a0000h               
          clc
          and edx,65535               
                          
          BOXLOOP1:
                    mov cx,si
                    BOXLOOP2:
                              ds
                              mov [ebp],al
                              inc ebp                
                              dec ecx                
                              JNZ BOXLOOP2
                    clc
                    add ebp,edx
                    dec ebx                
                    JNZ BOXLOOP1
                          
                          
                          
                          
                          
                          
          pop eax                
          pop ebx                
          pop ecx                
          pop edx                
          pop ebp                
          pop ds                
          pop edi                
          pop esi                
          ret                
                
                
boxxx1     dd      0
boxxx2     dd      0
boxyy1     dd      0
boxyy2     dd      0
boxxxx     dd      0  
boxyyy     dd      0  
boxxxxx    dd      0  
boxyyyy    dd      0  
boxstart   dd      0  
boxcolor   dd      0  
                
                

