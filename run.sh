#!/bin/bash

idir="src/interpreted" # Interpreted languages directory

# Check for time argument, default to 3 if it isn't specified
if [ $# -gt 0 ]; then
    time=$1
else
    time=3
fi

# Check if output directory exists, run compile.sh if not
if [ ! -d out ]; then
    ./compile.sh || exit 1
fi

konsole &> /dev/null -e ./cat.sh $time &
konsole &> /dev/null -e cava &
sleep 10; mpv song.webm &> /dev/null &
clear

# Bash
bash $idir/tomelleri.sh
sleep $time
clear
# BASIC
out/tomelleriBASIC
sleep $time
clear
# Brainfuck
brainfuck $idir/tomelleri.bf
sleep $time
clear
# C
out/tomelleriC
sleep $time
clear
# C++
out/tomelleriCPP
sleep $time
clear
# C#
out/tomelleriCS
sleep $time
clear
# Common Lisp
clisp src/compiled/tomelleri.lisp
sleep $time
clear
# FORTRAN
out/tomelleriFORTRAN
sleep $time
clear
# Go
out/tomelleriGo
sleep $time
clear
# Haskell
out/tomelleriHaskell
sleep $time
clear
# I use arch btw
i-use-arch-btw $idir/tomelleri.archbtw
sleep $time
clear
# Java
java -cp out tomelleri
sleep $time
clear
# JavaScript
node src/compiled/tomelleri.js
sleep $time
clear
# Kotlin
java -jar out/tomelleriKotlin.jar
sleep $time
clear
# Lua
lua $idir/tomelleri.lua
sleep $time
clear
# Pascal
out/tomelleriPascal
sleep $time
clear
# Perl
perl $idir/tomelleri.pl
sleep $time
clear
# PHP
php $idir/tomelleri.php
sleep $time
clear
# Python
python $idir/tomelleri.py
sleep $time
clear
# Ruby
ruby $idir/tomelleri.rb
sleep $time
clear
# Rust
out/tomelleriRust
sleep $time
clear

kate tomelleri.txt
pkill cava
pkill mpv
pkill konsole

exit 0
