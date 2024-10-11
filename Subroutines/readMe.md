# Functions in x86 Assembly

This guide provides an overview of how to create and call functions in x86 assembly language, using a Bubble Sort implementation as an example. Functions in assembly help modularize code, making it easier to read, maintain, and reuse.

## Overview

The example program includes:
- **Data Section**: Defines variables, such as an array of integers to be sorted and a flag to indicate if any swaps occurred during sorting.
- **Functions**: Organizes tasks into separate labeled sections for sorting and swapping elements.

### Key Components of a Function

1. **Function Definition**: 
   - A function is defined with a label, which acts as the function's entry point. 
   - It ends with an instruction to return control back to the caller.

2. **Calling a Function**:
   - The `call` instruction is used, followed by the function’s label. This instruction automatically handles returning to the point right after the `call`.

3. **Returning from a Function**:
   - Functions return control to the calling code by using a return instruction, which brings execution back to the address following the `call`.

## Example Functions

### Swap Function

This function is responsible for swapping two adjacent elements in an array and setting a flag to indicate that a swap has occurred. 

- **Label**: Marks the function's starting point.
- **Purpose**: Swaps two elements and signals that a swap has taken place, allowing the sorting process to continue if needed.
- **Usage**: The function is called from within the sorting function when two elements need to be swapped.

### Bubble Sort Function

The Bubble Sort function organizes an array by repeatedly comparing and swapping adjacent elements if they are out of order.

- **Label**: Marks the start of the Bubble Sort routine.
- **Purpose**: Sorts an array of integers in ascending order.
- **Usage**: This function initializes the sorting loop, calls the swap function as needed, and repeats until the array is sorted.

### Function Call Flow

1. **Data Initialization**: An array is defined, and a flag is set to track swaps.
2. **Swap Operation**: The swap function temporarily stores an element, moves the adjacent element, and restores the original element to its new position.
3. **Sorting Process**: The Bubble Sort function goes through the array, compares elements, and calls the swap function if needed. It then checks if any swaps occurred; if so, it repeats the process until no swaps are needed.

## How to Assemble and Run

To work with this example, you will need an assembler for compiling the assembly code and an emulator or x86 environment for execution.

### Assembling:
1. Use an assembler to convert the assembly code into an executable format.
2. Load the executable into an emulator or compatible environment for running.

### Running:
1. Start the emulator and load the compiled program.
2. Observe the sorting process if output is displayed or verify by inspecting the memory.

## Tips for Assembly Functions

- **Use Descriptive Labels**: Each function should have a unique label describing its purpose.
- **Keep Functions Modular**: Separate distinct tasks into their own functions to simplify debugging and modification.
- **Manage Registers**: Be aware of register usage to avoid accidental overwrites, particularly when functions are nested.

Organizing tasks into functions helps in developing cleaner and more understandable assembly code, especially for larger projects or when implementing algorithms like Bubble Sort.
