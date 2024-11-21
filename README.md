# Greatest Even Number Finder Processor

## Description
The Greatest Even Number Finder Processor is an implementation designed to solve the problem of identifying the greatest even number in a sequence of integers. This project utilizes a complete architecture based on the MIPS (Microprocessor without Interlocked Pipeline Stages) architecture, incorporating various components to create an efficient processing unit.

## Components
The processor architecture consists of the following components:
- **UC (Control Unit)**: Manages the flow of data and instructions within the processor.
- **IF (Instruction Fetch)**: Responsible for fetching instructions from memory.
- **ID (Instruction Decode)**: Decodes the fetched instructions and prepares them for execution.
- **EX (Execution)**: Executes the decoded instructions and performs arithmetic operations.
- **MEM (Memory Access)**: Handles reading from and writing to memory.
- **SSD (Seven Segment Display)**: Displays the greatest even number found in a user-friendly format.
- **MPG (Debouncer)**: Ensures stable input signals by filtering out noise and preventing false triggering from rapid changes in input.

## Testing Environment
The testing and validation of the processor were conducted within a simulated environment using **Vivado**. This allowed for thorough testing of the architecture and its components, ensuring that the processor correctly identifies the greatest even number in a given sequence.

## Features
- **Efficient Processing**: The architecture is designed to efficiently process sequences of numbers and find the greatest even number.
- **MIPS Architecture Compliance**: Implements a complete MIPS architecture, making it suitable for educational purposes and further development.
- **Simulated Testing**: Provides a controlled environment for testing and validating the functionality of the processor.

## Technologies Used
- MIPS Assembly Language
- Vivado (for simulation and synthesis)
