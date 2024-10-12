## ARM Assembly
This repository contains assembly program code for ARM processor more specifically, **ARMv7 microprocessor**.

## Introduction to ARM Assembly Language

ARM Assembly Language is a low-level programming language used to write programs for ARM processors, which are widely found in mobile devices, embedded systems, and increasingly in general-purpose computing environments. ARM processors are known for their power efficiency and simple, yet highly efficient, instruction set architecture (ISA).

### Why Learn ARM Assembly Language?

Understanding ARM assembly can provide deep insights into how computer hardware operates at a low level, enabling developers to write highly optimized code for performance-critical applications. It also helps in debugging and reverse engineering software, and is essential for developing firmware and operating system kernels.

### Basics of ARM Assembly

ARM assembly is based on a Reduced Instruction Set Computing (RISC) architecture, which means it uses a small set of simple and consistent instructions. Some key features of ARM assembly language include:

- **Registers**: ARM processors have 16 general-purpose registers (`r0` to `r15`). These registers are used for arithmetic operations, memory access, and more.
- **Instructions**: The ARM instruction set includes a variety of operations such as data movement (`MOV`, `LDR`, `STR`), arithmetic (`ADD`, `SUB`), logic (`AND`, `ORR`, `TST`), and branching (`B`, `BL`, `CMP`).
- **Condition Codes**: ARM instructions can be conditionally executed based on the results of previous operations, providing a powerful way to implement complex logic without branching.
- **Load/Store Architecture**: ARM assembly follows a load/store architecture where operations are performed on registers, and memory access is done using specific load (`LDR`) and store (`STR`) instructions.

### Example: Simple ARM Assembly Code

Here is a basic example that adds two numbers and stores the result:

```asm
.global _start

_start:
    MOV r0, #5        // Load immediate value 5 into register r0
    MOV r1, #10       // Load immediate value 10 into register r1
    ADD r2, r0, r1    // Add values in r0 and r1, store the result in r2

    // End of program
    SWI 0             // Software interrupt to exit
```

### Resources

- [Official ARM Developer Documentation](https://developer.arm.com/documentation/)
- [ARM Cortex-A Series Programming Guide](https://developer.arm.com/ip-products/processors/cortex-a)

This repository contains a variety of ARM assembly code examples, tutorials, and exercises to help you get familiar with ARM assembly language and the ARM architecture. Feel free to explore the examples, modify them, and experiment with the instructions to enhance your understanding of low-level programming on ARM processors.
