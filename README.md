# 4-Bit Ripple Carry Adder using Verilog

## Project Overview

This project implements a **4-Bit Ripple Carry Adder (RCA)** using Verilog HDL and verifies its functionality using a testbench simulation.

A Ripple Carry Adder is a combinational circuit used to add two binary numbers. It is constructed using multiple Full Adders connected in series, where the carry output from one Full Adder propagates to the next stage.

---

# Objective

- Design a 4-bit Ripple Carry Adder using Verilog
- Perform binary addition of two 4-bit numbers
- Generate Sum and Carry outputs
- Verify the design using a testbench and waveform simulation

---

# Concepts Used

- Verilog HDL
- Combinational Logic
- Full Adder Design
- Structural Modeling
- Ripple Carry Propagation
- Testbench Writing
- Waveform Simulation

---

# Architecture

The design uses:

- 4 Full Adders
- Carry propagation between stages

Carry flow:

Cin → FA0 → FA1 → FA2 → FA3 → Cout

---

# Full Adder Logic

## Sum Equation

Sum = A ⊕ B ⊕ Cin

## Carry Equation

Cout = AB + ACin + BCin

---

# Files Included

| File Name | Description |
|------------|-------------|
| design.sv | Main design code for Full Adder and 4-Bit Ripple Carry Adder |
| testbench.sv | Testbench used for simulation and verification |

---

# Design Code Description

The design contains:

1. Full Adder module
2. Ripple Carry Adder module

Each Full Adder adds one bit of the input operands along with the carry input.

---

# Testbench Description

The testbench:

- Applies different input combinations
- Verifies Sum and Carry outputs
- Generates waveform file (.vcd)
- Displays simulation results

---

# Simulation Tool

Simulation performed using:

- EDA Playground
- Icarus Verilog Simulator
- EPWave Viewer

---

# Test Cases

| A | B | Cin | Sum | Cout |
|---|---|---|---|---|
| 0001 | 0010 | 0 | 0011 | 0 |
| 0101 | 0011 | 0 | 1000 | 0 |
| 1111 | 0001 | 0 | 0000 | 1 |
| 1010 | 0101 | 1 | 0000 | 1 |

---

# Expected Output

A=0001 B=0010 Cin=0 Sum=0011 Cout=0

A=0101 B=0011 Cin=0 Sum=1000 Cout=0

A=1111 B=0001 Cin=0 Sum=0000 Cout=1

A=1010 B=0101 Cin=1 Sum=0000 Cout=1

---

# Waveform Verification

The following signals were observed in waveform simulation:

- A[3:0]
- B[3:0]
- Cin
- Sum[3:0]
- Cout
- c1, c2, c3

These signals verify correct ripple carry propagation and binary addition.

---

# Advantages

- Simple design
- Easy to implement
- Good for understanding digital arithmetic circuits

---

# Limitation

Ripple Carry Adders are slower for large bit-width additions because carry propagation occurs sequentially.

---

# Conclusion

The 4-Bit Ripple Carry Adder was successfully designed and verified using Verilog HDL. The simulation results and waveforms confirmed correct binary addition and carry propagation functionality.

---