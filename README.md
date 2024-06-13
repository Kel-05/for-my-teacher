# For my dear teacher

This program was realized to celebrate the retirement of my CS teacher.
This is basically a fork of the ["Arch is the best"](https://wiki.archlinux.org/title/Arch_is_the_best) project, readapted and enhanced for this special occasion.

## Languages used

- Bash
- BASIC
- Brainfuck
- C
- C++
- C#
- Common Lisp
- FORTRAN
- Go
- Haskell
- I use arch btw
- Java
- JavaScript
- Kotlin
- Lua
- Pascal
- Perl
- PHP
- Python
- Ruby
- Rust

# Dependencies

## Arch

```bash
sudo pacman -S mpv konsole kate lua ruby perl php python fpc gcc gcc-fortran mono freebasic go ghc jdk-openjdk kotlin nodejs clisp rust
```

You'll need to install [cava](https://github.com/karlstav/cava) from the AUR, for this an AUR helper can be used.

```bash
yay -S cava
```

You'll also need to install [Brainfuck](https://github.com/fabianishere/brainfuck) and [i-use-arch-btw](https://github.com/overmighty/i-use-arch-btw). Check their respective repositories for installation instructions.

# Usage

execute `run.sh`. The script will compile all sources and put them in an `out` directory. If sources have already been compiled the script won't recompile them, so you can just re-execute it.
