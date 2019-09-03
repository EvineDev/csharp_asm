# **Build**

* Install `Visual Studio 2019`.
* Search for and run `x64 Native Tools Command Prompt for VS 2019`
* Change directory to `source` folder in the git repo.
* Run `build.bat`. This builds and runs the program.

## **Debug**

To get line by line stepping in the assembly you need to enable `Mixed` `Debugger Type`

* Open `main.exe` in `Visual Studio`.
* Open properties on `main` in the `Solution Explorer`.
* Change `Debugger Type` from `Auto` to `Mixed`.
* Press `f11` to step into the assembly program.

## **General Purpose Registers**
16 General Purpose Registers

`rax` `rcx` `rdx` `rbx`

`rsp` `rbp` `rdi` `rsi`

`r8` `r9` `r10` `r11`

`r12` `r13` `r14` `r15`

These can also be referred by smaller segments, eg: `rax` 64bit, `eax` 32bit, `ax` 16 bit, `al` 8bit.

## **Calling Convensions**
The first 4 Arguments are passed in by these registers: `rcx` `rdx` `r8` `r9`

The return value is passed via the `rax` register.

# **Resources**

* [Compiler Explorer](https://godbolt.org) C#, C++ etc. Compiler to assembly
* [x64 assembly tutorial](https://www.youtube.com/watch?v=rxsBghsrvpI) Beginner focused tutorial
* [Intel architecture guide](https://software.intel.com/en-us/articles/intel-sdm) **The** Cpu Manual. Thousands of pages on every aspect of the cpu.
* [Programming an x64 compiler from scratch](https://www.youtube.com/watch?v=N9B2KeAWXgE)

