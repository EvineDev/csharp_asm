# **Build**

* Install `Visual Studio 2019`.
* Search for and run `x64 Native Tools Command Prompt for VS 2019`
* Change directory to `source` folder in the git repo.
* Run `build.bat`. This builds and runs the program.

# **Debug**

To get line by line stepping in the assembly you need to enable `Mixed` `Debugger Type`

* Open `main.exe` in `Visual Studio`.
* Open properties on `main` in the `Solution Explorer`.
* Change `Debugger Type` from `Auto` to `Mixed`.
* Press `f11` to step into the program and load the source file.