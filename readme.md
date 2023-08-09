# Risc-v Programs

This repo will contain simple programs that I write in riscv assembly. Not sure where it will end up going, but just playing around for now.

## Running on Ubuntu

Running on ubuntu is as easy as:

1. Running makefile for intended file
2. Running the binary output

### Makefile

The makefile outputs a binary that you can run. You need to call the make file with the program that you want to run.

To run the `hello.s` file:
```
make filename=hello
```

This outputs a binary file called `target`, which is used in the next step:

### Running

To run the output, just use the following command:

```
qemu-riscv64 ./target
```

