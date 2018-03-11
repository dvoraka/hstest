# Haskell test

Haskell project for Haskell development tools testing.

## Tools

### Stack
Stack is a cross-platform program for developing Haskell projects. It is aimed at Haskellers
both new and experienced.

#### Features:
 * Installing GHC automatically, in an isolated location.
 * Installing packages needed for your project.
 * Building your project.
 * Testing your project.
 * Benchmarking your project.

https://docs.haskellstack.org/en/stable/README/

### Intero
Complete interactive development program for Haskell.

https://github.com/commercialhaskell/intero

### IntelliJ-Haskell
Really good IntelliJ plugin for Haskell.

This plugin depends mainly on Stack and Intero. It can create new Stack projects (by using
template hspec) and import existing Stack projects.

http://rikvdkleij.github.io/intellij-haskell/

## How to start development
You may need some development libraries for building tools. So check the error output
and install necessary dev libraries.

### Stack
You need to install Stack first. [Documentation](https://docs.haskellstack.org/en/stable/README/)

### IntelliJ-Haskell
Then you need IDEA plugin. If you already use any Haskell plugin, uninstall it. For the latest
instructions see project
[readme](https://github.com/rikvdkleij/intellij-haskell/blob/master/README.md).

### Download test project
For testing your setup you can download this repository and import to IDEA.

Clone repository.
```
$ git clone https://github.com/dvoraka/hstest.git
Cloning into 'hstest'...
remote: Counting objects: 36, done.
remote: Compressing objects: 100% (21/21), done.
remote: Total 36 (delta 8), reused 33 (delta 5), pack-reused 0
Receiving objects: 100% (36/36), 5.76 KiB | 0 bytes/s, done.
Resolving deltas: 100% (8/8), done.
Checking connectivity... done.
$
```

### Test Stack from a command line
Change directory to the cloned repository.
```
$ cd hstest
$
```

Run ```stack setup``` command. The output can be different if you run it right after fresh **Stack** installation.
```
$ stack setup
stack will use a sandboxed GHC it installed
For more information on paths, see 'stack path' and 'stack exec env'
To use this GHC and packages outside of a project, consider using:
stack ghc, stack ghci, stack runghc, or stack exec
$
```

Run ```stack build``` command.
```
$ stack build
hstest-0.1.0.0: configure
Configuring hstest-0.1.0.0...
hstest-0.1.0.0: build
Preprocessing library hstest-0.1.0.0...
[1 of 2] Compiling Input            ( src/Input.hs, .stack-work/dist/x86_64-linux/Cabal-1.24.0.0/build/Input.o )
[2 of 2] Compiling Data.String.Strip ( src/Data/String/Strip.hs, .stack-work/dist/x86_64-linux/Cabal-1.24.0.0/build/Data/String/Strip.o )
Preprocessing executable 'hstest' for hstest-0.1.0.0...
[1 of 1] Compiling Main             ( app/Main.hs, .stack-work/dist/x86_64-linux/Cabal-1.24.0.0/build/hstest/hstest-tmp/Main.o )
Linking .stack-work/dist/x86_64-linux/Cabal-1.24.0.0/build/hstest/hstest ...
hstest-0.1.0.0: copy/register
Installing library in
/home/user/hstest/.stack-work/install/x86_64-linux/lts-7.14/8.0.1/lib/x86_64-linux-ghc-8.0.1/hstest-0.1.0.0-AdhbzLPXl4DBYfJor6h9HV
Installing executable(s) in
/home/user/hstest/.stack-work/install/x86_64-linux/lts-7.14/8.0.1/bin
Registering hstest-0.1.0.0...
$
```

Run project.
```
$ stack exec hstest-exe
What is your name?
John
Hello, John!
$
```
If everything runs, you have **Stack** prepared.

### Intero testing

You need **Intero** for a development so command:
```
$ stack build intero
Using latest snapshot resolver: lts-7.14
Writing implicit global project config file to: /home/user/.stack/global-project/stack.yaml
Note: You can change the snapshot via the resolver field there.
ghc-paths-0.1.0.9: download
ghc-paths-0.1.0.9: configure
syb-0.6: download
ghc-paths-0.1.0.9: build
syb-0.6: configure
syb-0.6: build
ghc-paths-0.1.0.9: copy/register
syb-0.6: copy/register
intero-0.1.20: download
intero-0.1.20: configure
intero-0.1.20: build
intero-0.1.20: copy/register
$
```
in the project directory must be successul to the correct function of the plugin.
