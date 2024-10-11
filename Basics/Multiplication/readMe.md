# Multiplication and Extended Multiplication in Assembly

## Overview
This document provides an explanation of the methods used for performing multiplication in Assembly as implemented in the `multiplication.asm` and `extendedMultiplication.asm` files. These programs demonstrate bitwise multiplication using shifting and addition, covering both standard 16-bit multiplication and extended 32-bit multiplication.

## Table of Contents
1. [Introduction](#introduction)
2. [Bitwise Multiplication](#bitwise-multiplication)
   - [Standard Multiplication](#standard-multiplication)
   - [Extended Multiplication](#extended-multiplication)
3. [Program Flow](#program-flow)
4. [Registers and Instructions](#registers-and-instructions)
5. [Key Concepts](#key-concepts)

## Introduction
Multiplication in Assembly can be performed using a bitwise approach. This involves iterating through each bit of the multiplier, checking whether it contributes to the final product, and adding the appropriate shifted value of the multiplicand to the result. This approach is demonstrated in two versions:
- `multiplication.asm`: For 16-bit unsigned multiplication.
- `extendedMultiplication.asm`: For 32-bit extended multiplication to handle larger numbers.

## Bitwise Multiplication

### Standard Multiplication
The `multiplication.asm` file performs 16-bit unsigned multiplication. The algorithm involves:
1. **Loading the Multiplier**: The multiplier is checked bit-by-bit to determine if it should contribute to the result.
2. **Shifting the Multiplicand**: After each check, the multiplicand is shifted left by one position, corresponding to the next bit in the multiplier.
3. **Conditional Addition**: If a bit in the multiplier is set (i.e., 1), the current value of the multiplicand is added to the result.

This method is effective for basic unsigned multiplication of 16-bit integers.

### Extended Multiplication
The `extendedMultiplication.asm` file builds upon the standard method by extending the multiplicand to 32 bits. This allows for a product that exceeds 16 bits:
1. **Double-Word Multiplicand**: A 32-bit multiplicand allows for larger values, with the result stored across two words.
2. **Extended Shifting and Addition**: Shifting and addition operations account for the upper and lower parts of the multiplicand and the result. The most significant bits are carefully managed to prevent overflow.
3. **Result Storage**: The result is stored as a 32-bit double word, accommodating the potential larger product.

## Program Flow
Both programs follow a similar flow:
1. **Initialization**: Registers and memory locations are set up for multiplication.
2. **Bitwise Loop**: A loop iterates through each bit of the multiplier, determining whether to add the multiplicand based on the bit’s value.
3. **Shift Operations**: The multiplicand is shifted to align with the current bit position.
4. **Termination**: Once all bits are processed, the program exits.

## Registers and Instructions
These implementations make use of specific registers and instructions:
- **AX and DX**: Used to store parts of the operands and results.
- **SHR and SHL**: Shift right and shift left instructions manage the bitwise operations.
- **ADD and ADC**: These handle addition and addition with carry to accumulate the partial products into the result.

### Key Instructions:
- **`SHR AX, 1`**: Shifts the multiplier to check each bit.
- **`SHL [multiplicand], 1`**: Shifts the multiplicand to align with the corresponding bit position in the multiplier.
- **`ADD` and `ADC`**: Add the shifted multiplicand to the result, with `ADC` handling the carry for extended multiplication.

## Key Concepts
- **Bitwise Operation**: Multiplication is handled through shifts and additions, iterating over each bit of the multiplier.
- **Conditional Accumulation**: Only the multiplicand values corresponding to set bits in the multiplier contribute to the final product.
- **Extended Precision**: In `extendedMultiplication.asm`, double precision is used to handle larger numbers, demonstrating how Assembly can manage large results across multiple registers.

## Conclusion
These Assembly programs provide examples of low-level multiplication operations, illustrating how bitwise logic can be used for both standard and extended multiplications. Understanding these implementations helps in grasping fundamental arithmetic operations at the hardware level and gives insight into handling larger integer calculations in Assembly.

## Contact

Need assistance or further explanation about the implementation of Circular and Linear Queues? Feel free to reach out! I offer personal help with coding problems, and further detailed explanations, including code walkthroughs. Please note that assistance may be **paid**.

📧 Contact me at: **[sjdgithub1214@gmail.com](mailto:sjdgithub1214@gmail.com)**

---

Thank you for exploring Queues! 🚀 Happy Coding! 😊