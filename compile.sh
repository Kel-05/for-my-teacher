#!/bin/bash
cdir="src/compiled" # Compiled languages directory

# Check if output directory exists, then delete it
if [ -d out ]; then
    rm -rf out
fi
mkdir out

echo "Compiling..."

# BASIC
cp $cdir/tomelleri.c $cdir/tomelleri.c.bak
fbc -x out/tomelleriBASIC $cdir/tomelleri.bas
mv $cdir/tomelleri.c.bak $cdir/tomelleri.c

# C
gcc $cdir/tomelleri.c -o out/tomelleriC
# C++
g++ $cdir/tomelleri.cpp -o out/tomelleriCPP
# C#
mcs $cdir/tomelleri.cs -out:out/tomelleriCS
# FORTRAN
gfortran $cdir/tomelleri.f90 -o out/tomelleriFORTRAN
# Go
go build -o out/tomelleriGo $cdir/tomelleri.go
# Haskell
ghc -dynamic -o out/tomelleriHaskell -outputdir out/ $cdir/tomelleri.hs
# Java
javac -d out/ $cdir/tomelleri.java
# Kotlin
kotlinc $cdir/tomelleri.kt -include-runtime -d out/tomelleriKotlin.jar
# Pascal
fpc -FEout -otomelleriPascal $cdir/tomelleri.pas
# Rust
rustc -o out/tomelleriRust $cdir/tomelleri.rs

echo "Done!"

exit 0
