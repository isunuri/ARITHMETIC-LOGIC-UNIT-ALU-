# ARITHMETIC-LOGIC-UNIT-ALU-

*COMPANY* : CODTECH IT SOLUTIONS

*NAME* : Chetana Isunuri

*INTERN ID* : CT04DF2543

*DOMAIN* : VLSI

*DURATION* : 4 WEEKS

*MENTOR* : VAISHALI

## Description of the task:-
## Objective:
The objective of this task was to design a simple Arithmetic Logic Unit (ALU) in Verilog HDL that supports fundamental arithmetic and logical operations. This is one of the most important components of a processor or microcontroller.
# What is an ALU?
-> An Arithmetic Logic Unit (ALU) is a digital combinational circuit that performs arithmetic and logical operations on binary data. It is a fundamental building block of the central processing unit (CPU) of a computer or processor-based system.

-> The ALU has two main input operands (commonly named A and B) and produces an output (usually named Result or Y) depending on the operation code (opcode) provided.
# Why is ALU Important?
An Arithmetic Logic Unit (ALU) is one of the most essential components of any computing system. It performs both arithmetic and logical operations on the binary data received from the processor's registers. The ALU acts as the execution engine of a CPU, enabling it to process instructions such as additions, comparisons, and bit manipulations.

Typical ALU operations include:
1. Arithmetic operations: addition, subtraction, increment, and decrement.
2. Logical operations: AND, OR, NOT, XOR, and variations like AND-NOT.
3. Comparison operations: equal to, greater than, or less than (used in branching).
ALUs are found not just in CPUs but also in microcontrollers, digital signal processors (DSPs), and graphics processing units (GPUs). They form the computational core that carries out program logic.
# Operations Supported: 
Addition (ADD), Subtraction (SUB), AND, OR, AND-NOT (A & ~B)
# Architecture and Functional Behavior
The ALU accepts two 8-bit inputs (A and B) and a 3-bit opcode (sel) that determines the operation to be performed. The result is stored in an 8-bit output Y. The design was purely combinational, meaning the output responds immediately to any change in inputs or opcode without waiting for a clock edge.
Example operation mapping:
Opcode 000: A + B
Opcode 001: A - B
Opcode 010: A & B
Opcode 011: A | B
Opcode 100: A & ~B
These are just a few of the possible logical patterns; however, they demonstrate the principle of operation encoding, which is fundamental to instruction decoding in real processors.
# Tools Used:
-> Design & Simulation Tool: Xilinx Vivado
-> Language: Verilog HDL
-> Simulation Environment: Vivado Simulation (Testbench written in Verilog)
-> Waveform Analysis: Vivado built-in waveform viewer
# Simulation and Testing
A comprehensive Verilog testbench was created to apply different combinations of input values and opcodes. Simulation results were monitored using the $monitor system task and visualized using waveform dumps. Each operation was validated for functional correctness, ensuring the ALU performed as expected under different scenarios.
# Functional Verification:
-> A testbench was created to simulate various operations with different inputs.
-> Output results were verified in the waveform viewer.
-> All operations produced correct results confirming ALU functionality.
# Applications of ALU:
ALUs are the heart of any processing system, and are widely used in:
1. Microprocessors and Microcontrollers
2. DSPs (Digital Signal Processors)
3. Embedded Systems
4. Graphics Processing Units (GPUs)
5. Scientific Calculators
6. Cryptographic Engines
7. Signal and Image Processing Pipelines
# Learning Outcome:
@ Understood how arithmetic and logic operations are encoded using opcodes.
@ Gained experience in writing and debugging Verilog code.
@ Learned how to simulate and validate digital designs in Vivado.
@ understood the core role of ALU in CPU architecture.
