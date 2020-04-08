# Haskell test

Haskell project for Haskell development tools testing.

## Tools
You may need some development libraries in the system for tool compilations.
It is a good idea try to install all tools before starting IDEA plugin.
When all builds are successful then you are ready to try the plugin.

**Additional packages** (Debian)
 * libgmp-dev

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

#### Quick Start Guide

##### Start your new project:
```bash
stack new my-project
cd my-project
stack setup
stack build
stack exec my-project-exe
```

- The `stack new` command will create a new directory containing all
  the needed files to start a project correctly.
- The `stack setup` will download the compiler if necessary in an isolated
  location (default `~/.stack`) that won't interfere with any system-level
  installations. (For information on installation paths, please use the
  `stack path` command.).
- The `stack build` command will build the minimal project.
- `stack exec my-project-exe` will execute the command.
- If you just want to install an executable using stack, then all you have to do
  is `stack install <package-name>`.

If you want to launch a REPL:

```bash
stack ghci
```

Run `stack` for a complete list of commands.

##### Workflow

The `stack new` command should have created the following files:

```
.
├── LICENSE
├── Setup.hs
├── app
│   └── Main.hs
├── my-project.cabal
├── src
│   └── Lib.hs
├── stack.yaml
└── test
    └── Spec.hs

    3 directories, 7 files
```

So to manage your library:

1. Edit files in the `src/` directory.

   The `app` directory should preferably contain only files related to
   executables.

2. If you need to include another library (for example the package
   [`text`](https://hackage.haskell.org/package/text)):

   - Add the package `text` to the file `my-project.cabal`
     in the section `build-depends: ...`.
   - Run `stack build` another time.

3. If you get an error that tells you your package isn't in the LTS.
   Just try to add a new version in the `stack.yaml` file in the `extra-deps` section.

That was a really fast introduction on how to start to code in Haskell using `stack`.
If you want to go further, we highly recommend you to read the
[`stack` guide](https://docs.haskellstack.org/en/stable/GUIDE).

### Hindent
Haskell pretty printer.

Install:
```
$ stack install hindent
...
hindent-4.6.4: configure
hindent-4.6.4: build
hindent-4.6.4: copy/register
Completed 32 action(s).

Copied executables to /home/user/.local/bin:
- hindent
- hindent-generate-tests
```

https://github.com/commercialhaskell/hindent

### Stylish-haskell
A simple Haskell code prettifier. The goal is not to format all of the code in a file, since I find those kind of tools often "get in the way". However, manually cleaning up import statements etc. gets tedious very quickly.

This tool tries to help where necessary without getting in the way.

Install:
```
$ stack install stylish-haskell
...
stylish-haskell-0.6.1.0: configure
stylish-haskell-0.6.1.0: build
stylish-haskell-0.6.1.0: copy/register
Completed 14 action(s).

Copied executables to /home/user/.local/bin:
- stylish-haskell
```

https://github.com/jaspervdj/stylish-haskell

### Intero
Complete interactive development program for Haskell.

Install:
```
$ stack install intero
Using latest snapshot resolver: lts-7.14
Writing implicit global project config file to: /home/user/.stack/global-project/stack.yaml
Note: You can change the snapshot via the resolver field there.
ghc-paths-0.1.0.9: download
ghc-paths-0.1.0.9: configure
...

Copied executables to /home/user/.local/bin:
- intero
```

https://github.com/commercialhaskell/intero

### Hoogle
Hoogle is a Haskell API search engine, which allows you to search many standard Haskell libraries 
by either function name, or by approximate type signature.

Install:
```
$ stack install hoogle
...

Copied executables to /home/user/.local/bin:
- hoogle
```

https://www.haskell.org/hoogle/

### IntelliJ-Haskell
Really good IntelliJ plugin for Haskell.

This plugin depends mainly on Stack and Intero. It can create new Stack projects (by using
template hspec) and import existing Stack projects.

http://rikvdkleij.github.io/intellij-haskell/

## How to start development
You may need some development libraries for building all tools. So check the build error output
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
