<h1 align="center">8-Bit Synchronous FIFO</h1>

<p align="center">
  <b>Parameterized RTL Design and Verification</b>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Verilog-005288?style=for-the-badge&logo=verilog&logoColor=white" alt="Verilog"/>
  <img src="https://img.shields.io/badge/Vivado-Simulation-orange?style=for-the-badge&logo=amd&logoColor=white" alt="Vivado"/>
</p>

---

## 🚀 Project Overview
This repository contains the Verilog implementation and testbench verification of an 8-bit Synchronous First-In-First-Out (FIFO) memory module. The design acts as a data buffer to safely manage data flow and backpressure between digital components operating on the same clock domain.

## 🏗️ Design Features
* **Parameterized Architecture:** Configurable memory depth (`DEPTH = 8`) and data width (`DWIDTH = 8`).
* **Synchronous Operation:** Read and write operations are evaluated on the identical positive clock edge.
* **Flag Generation:** Accurate `full` and `empty` flag logic utilizing Most Significant Bit (MSB) pointer comparison to prevent data overwrite and underflow.
* **Robust Verification:** Testbench environment simulating randomized read/write bursts to stress-test flag bounds and memory integrity.

## 📁 Repository Structure
Click the files below to view the source code:
* **Design:** [`/src/sync_fifo.v`](src/sync_fifo.v) - Core RTL implementation of the FIFO module.
* **Simulation:** [`/sim/tb.v`](sim/tb.v) - Testbench with randomized stimulus and automated halting logic.

## 🛠️ Tools Used
* **Hardware Description Language:** Verilog HDL
* **Simulation & Verification:** Xilinx Vivado Simulator (XSIM)
* **Design Paradigm:** Register Transfer Level (RTL)

---
