# Haskell Robot Lab

This is an introductory Haskell lab. The primary objective is to implement the
`runAll` function that moves the robot given a string of commands. The commands
are `G`, `R` and `L` for Go, Right and Left respectively.

`Robots.hs` defines a simple main function that takes commands as input and
prints the resulting robot and level. Start by implementing `runAll` a couple
of lines down. After that, you can try the extras as well if you want to.

## Prerequisites

All you need is GHC and an editor to get going. It is recommended to keep a REPL
running to try out your functions and experiment with new stuff:

## Starting the REPL

```
$ cd haskell-robot-lab
$ ghci
...
```

### Loading the code

To call your functions from the REPL you need to load the source file.

```
Prelude> :l Robots.hs
[1 of 1] Compiling Main             ( Robots.hs, interpreted )
Ok, modules loaded: Main.
Prelude> runAll (0, 0, 0.0) (20, 20) "GGRR"
...
```

### The `main` function

You can run the `main` function directly from the REPL to try entering robot
commands.

```
Prelude> main
GRGGGGL
...
```

### Reloading the code

After editing `Robots.hs` you might want to reload it in the REPL.

```
Prelude> :r
[1 of 1] Compiling Main             ( Robots.hs, interpreted )
Ok, modules loaded: Main.
```
