# Linux/x86 - Disable ASLR Security + Polymorphic Shellcode (107 bytes)
 
## Description: 

This shellcode Disable ASLR Security and is polymorphic.

- Author: h4pp1n3s
- Tested on: Linux 4.18.0-25-generic #26 Ubuntu
- Size: 51 bytes

# SYSCALL

This shellcode uses the WRITE_SYSCALL and CLOSE_SYSCALL

### Write SYSCALL

[Write Function Prototype](https://man7.org/linux/man-pages/man2/write.2.html)
```c
ssize_t write(int fd, const void *buf, size_t nbytes);
```

### Close SYSCALL

[Close Function Prototype](https://man7.org/linux/man-pages/man2/close.2.html)
```c
int close(int fd);
```


# Resources

- [Corelan - Exploit writing tutorial part 9](https://www.corelan.be/index.php/2010/02/25/exploit-writing-tutorial-part-9-introduction-to-win32-shellcoding/)
- [Shell-storm](http://shell-storm.org/shellcode/)
- [Phrack - History and Advances in Windows Shellcode](http://www.phrack.org/issues/62/7.html#article)
- [Skape - Understanding Windows Shellcode ](http://www.hick.org/code/skape/papers/win32-shellcode.pdf)
