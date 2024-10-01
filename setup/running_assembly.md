# Running Assembly Language Programs

This guide will walk you through the steps of assembling, linking, and running an assembly language program in both 64-bit and 32-bit modes using `nasm` and `ld`.

## Prerequisites

- **NASM**: The Netwide Assembler is used to assemble the assembly code.
- **LD**: The GNU linker is used to link the object files into executable binaries.
- A Unix-like operating system (Linux) or a properly configured Windows environment with tools such as WSL or Cygwin.

---

## Running 64-bit Assembly Code

### 1. Assemble the Code
First, you need to assemble your `.asm` file into an object file. The command below tells `nasm` to assemble for the 64-bit ELF format (`-f elf64`).

```bash
nasm -f elf64 hello.asm -o hello.o
```

-f elf64: Specifies the output format for 64-bit ELF.
hello.asm: Your assembly source code file.
-o hello.o: The output object file.

### 2. Link the Object File
```bash
ld hello.o -o hello
```
hello.o: The object file produced by nasm.
-o hello: Specifies the name of the output executable.

### 3. Run the Executable
./hello


## Running 32-bit Assembly Code
```bash
nasm -f elf32 hello.asm -o hello.o

ld -m elf_i386 hello.o -o hello

./hello

```

