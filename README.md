# Greatest Even Number Finder Processor

## Description
The Greatest Even Number Finder Processor is an implementation designed to solve the problem of identifying the greatest even number in a sequence of integers. This project utilizes a complete architecture based on the MIPS (Microprocessor without Interlocked Pipeline Stages) architecture, incorporating various components to create an efficient processing unit. Additionally, the project includes a hardware implementation of the MIPS 16-bit architecture using VHDL, featuring both single-cycle and pipelined processor variants.

## Components
The processor architecture consists of the following components:
- **UC (Control Unit)**: Manages the flow of data and instructions within the processor.
- **IF (Instruction Fetch)**: Responsible for fetching instructions from memory.
- **ID (Instruction Decode)**: Decodes the fetched instructions and prepares them for execution.
- **EX (Execution)**: Executes the decoded instructions and performs arithmetic operations.
- **MEM (Memory Access)**: Handles reading from and writing to memory.
- **SSD (Seven Segment Display)**: Displays the greatest even number found in a user-friendly format.
- **MPG (Debouncer)**: Ensures stable input signals by filtering out noise and preventing false triggering from rapid changes in input.

## MIPS Processor Features
- **Single-Cycle Processor**: Executes each instruction in a single clock cycle, offering simplicity in design, though less efficient for complex instructions.
- **Pipelined Processor**: Implements a 5-stage pipeline (Fetch, Decode, Execute, Memory Access, Write Back) to enhance performance through instruction-level parallelism.
- **Instruction Support**: Includes a wide range of operations such as ALU (Arithmetic Logic Unit) operations, memory access (load/store), and control flow instructions (branches and jumps).
- **Comprehensive Operation Support**: Facilitates both arithmetic and logical operations as defined in the MIPS instruction set architecture.

## Testing Environment
The testing and validation of both the Greatest Even Number Finder Processor and the MIPS 16-bit Processor were conducted within a simulated environment using **Vivado**. This allowed for thorough testing of the architecture and its components, ensuring that the processors correctly identify the greatest even number and execute MIPS instructions effectively.

## Technologies Used
- MIPS Assembly Language
- VHDL
- MIPS Instruction Set Architecture
- Vivado (for simulation and synthesis)
- Test environment setup 
