# Running C and Assembly Programs with GDB

## Compilation, Debugging, and Memory Inspection

### Compiling and Running C Programs
gcc -g -o my_program my_program.c

Explanation:  
- gcc: GNU Compiler Collection for compiling C programs.  
- -g: Includes debugging information for GDB.  
- -o my_program: Specifies the output executable name as my_program.  
- my_program.c: The C source file.

Example:  
gcc -g -o hello_world hello_world.c  
./hello_world

### Assembling and Running Assembly Programs (64-bit)
nasm -f elf64 my_program.asm -o my_program.o -g  
ld my_program.o -o my_program  
./my_program

Explanation:  
- nasm: Assembler for generating object files.  
- -f elf64: Specifies ELF 64-bit format.  
- ld: Links object files to create an executable.

### Assembling and Running Assembly Programs (32-bit)
nasm -f elf32 my_program.asm -o my_program.o -g  
ld -m elf_i386 my_program.o -o my_program  
./my_program

Explanation:  
- -f elf32: Assembling for 32-bit.  
- -m elf_i386: Instructs ld to use the 32-bit linker for compatibility.

### Starting GDB
gdb -silent my_program

Explanation:  
- –silent: Suppresses startup information.  
- gdb my_program: Starts GDB debugging session with my_program.

### GDB Layout Commands  
- Assembly Layout: (gdb) layout asm  
- Register Layout: (gdb) layout reg

### Setting Breakpoints and Running Programs in GDB  
- Setting a Breakpoint: break _start (Sets a breakpoint at the program’s entry point _start.)  
- Running the Program: (gdb) run

### Inspecting Functions and Registers in GDB  
- info functions (Lists all functions in the program.)  
- disassemble function_name (Shows the assembly code for a function.)  
- info registers (Displays the contents of CPU registers.)  
- info reg eflags (Displays the flags in the CPU registers.)

### Memory Inspection in GDB  
- Inspect 1 Byte: x/b &var_name (Displays 1 byte of memory.)  
- Inspect 4 Bytes: x/w &var_name (Displays 4 bytes of memory as a word.)  
- Inspect a String: x/s &msg (Displays the string at memory address msg.)

### Advanced Memory Inspection in GDB  
- x/5c &start_message (Displays 5 bytes as characters from memory address start_message.)  
- x/5b &start_message (Displays 5 bytes in hexadecimal format.)  
- print *(char[5]*)&start_message (Prints the first 5 characters as a string.)  
- x/5s &start_message (Displays a 5-byte string from memory.)  
- x/5c &my_string  
- x/5b &my_string  
- print *(char[5]*)&my_string  
- x/5s &my_string
