#!/bin/bash

idir="src/interpreted" # Interpreted languages directory
cdir="src/compiled" # Interpreted languages directory

# Check for time argument, default to 3 if it isn't specified
if [ $# -gt 0 ]; then
    time=$1
else
    time=3
fi

clear

# Bash
cat $idir/tomelleri.sh
sleep $time
clear
# BASIC
cat $cdir/tomelleri.bas
sleep $time
clear
# Brainfuck
cat $idir/tomelleri.bf
sleep $time
clear
# C
cat $cdir/tomelleri.c
sleep $time
clear
# C++
cat $cdir/tomelleri.cpp
sleep $time
clear
# C#
cat $cdir/tomelleri.cs
sleep $time
clear
# Common Lisp
cat $cdir/tomelleri.lisp
sleep $time
clear
# FORTRAN
cat $cdir/tomelleri.f90
sleep $time
clear
# Go
cat $cdir/tomelleri.go
sleep $time
clear
# Haskell
cat $cdir/tomelleri.hs
sleep $time
clear
# I use arch btw
cat $idir/tomelleri.archbtw
sleep $time
clear
# Java
cat $cdir/tomelleri.java
sleep $time
clear
# JavaScript
cat $cdir/tomelleri.js
sleep $time
clear
# Kotlin
cat $cdir/tomelleri.kt
sleep $time
clear
# Lua
cat $idir/tomelleri.lua
sleep $time
clear
# Pascal
cat $cdir/tomelleri.pas
sleep $time
clear
# Perl
cat $idir/tomelleri.pl
sleep $time
clear
# PHP
cat $idir/tomelleri.php
sleep $time
clear
# Python
cat $idir/tomelleri.py
sleep $time
clear
# Ruby
cat $idir/tomelleri.rb
sleep $time
clear
# Rust
cat $cdir/tomelleri.rs
sleep $time
clear

exit 0
