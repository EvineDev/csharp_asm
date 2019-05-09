@echo off
set Source_Dir=%CD%
pushd ..
if exist build del /Q build
if not exist build mkdir build
pushd build

:: Copy source into build. Will be problematic if you want to work in visual studio.
robocopy %Source_Dir% . -E > nul

ml64 /nologo /Zi /c lib.asm && link /nologo /debug /NOENTRY /DLL /DEF:lib.def lib.obj && csc /nologo /debug /unsafe main.cs && main.exe

popd
popd

:: ml64 assembly compiler
:: link linker to produce dll file
:: csc C# compiler

:: /nologo no logo
:: /Zi and /debug is debugging symbols
:: /NOENTRY don't use dllmain entrypoint
:: /DEF:file definition file for export symbols
:: /unsafe allow the use of unsafe constructs
