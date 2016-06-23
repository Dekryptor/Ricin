# Ricin
This branch has nothing to do with the `master` one. Here's a complete rewrite
of the Ricin source code, to make it more elegant, flexible and containing lot
less bugs.

The main goal of this rewrite is to allow me working in an efficient way than
before - for example on plugins, groupchats, audio/video, etc.

As refactoring the old code would have been a pain, I decided to restart from
scratch, and since I learned from my previous code design errors, this one will
be really better - I hope so.

## Compiling
As a rewrite, i decided to stop using obscure build systems, let's enjoy cmake
here!

Ricin build system is CMake powered by `autovala`, which permits me to integrate
Vala without pains. You'll so need [autovala] to develop, not to compile. But I
prefer to mention that before getting useless bug reports.

```shell
mkdir -f build && cd build

# Here let's build Ricin.
cmake ..
make

# Finally, launch the app!
./src/Ricin
```
