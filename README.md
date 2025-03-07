# Anqa: A Personal RISC-V Processor Project

**Anqa** is a personal project focused on designing and implementing a RISC-V processor from the ground up. The goal is to develop a functional **RV32I processor** while documenting the process for others to follow and build their own. The project demonstrates a systematic approach to processor design, starting with foundational components.

## Project Overview
- **Processor Type:** RISC-V RV32I (32-bit)
- **Development Tools:** Vivado 2024.2
- **Implementation Language:** Verilog
- **Author:** Yousef Awad
- **Started:** February 2025

## Current Progress

### RV32I ISA Documentation
✅ **Complete documentation** of 36 RV32I instructions, including:
- **Immediate-type Operations** (addi, slti, sltiu, xori, ori, andi, slli, srli, srai)
- **Register-Register Operations** (add, sub, sll, srl, sra, slt, sltu, xor, or, and)
- **Load/Store Instructions** (lb, lh, lw, lbu, sb, sh, sw)
- **Branch Instructions** (beq, bne, blt, bge, bltu, bgeu)
- **Upper Immediate Instructions** (lui, auipc)
- **Jump Instructions** (jal, jalr)

### 32-bit Adder Implementation
✅ **Hierarchical adder design** with a modular approach:
- **Half Adder** - Basic building block with XOR and AND gates
- **Full Adder** - Combines half adders with carry handling
- **Bit-width Extensions** - Progressive implementation of 2-bit, 4-bit, 8-bit, 16-bit, and 32-bit adders
- **Complete Verilog Code** - Fully synthesizable adder components

## Implementation Strategy
The implementation follows a bottom-up approach:
1. Start with basic logic gates
2. Build half adders and full adders
3. Scale up through hierarchical design to the 32-bit adder
4. Progress toward more complex components (ALU, register file, etc.)

## Next Steps

### ALU Design
🔹 Expand the adder to a full ALU supporting:
- Arithmetic operations (add, subtract)
- Logical operations (AND, OR, XOR)
- Shift operations (logical and arithmetic)
- Comparison operations (equals, less than)

### Register File Implementation
🔹 Design and implement a 32-register system:
- 32-bit width per register
- Multiple read ports and write port
- Proper bypassing and synchronization

### Control Path Development
🔹 Create the instruction fetch and decode pipeline:
- Program counter management
- Instruction memory interface
- Instruction decoding logic
- Execution control

## Documentation and References
The repository includes detailed LaTeX documentation with:
- In-depth explanation of the RV32I instruction set
- Circuit diagrams and explanations
- Verilog implementation details
- Important definitions and terminology

## How to Follow Along
This repository serves as both an educational resource and a practical implementation. All code is provided with documentation to help others understand and build their own RISC-V processors.

For more details on specific components, check the corresponding directories and documentation files.
