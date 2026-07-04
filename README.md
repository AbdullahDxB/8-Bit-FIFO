<h1 align="center">8-Bit Synchronous FIFO</h1>

<p align="center">
  <b>RTL Design & Verification of a Parameterized Data Buffer</b>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Verilog-005288?style=for-the-badge&logo=verilog&logoColor=white" alt="Verilog"/>
  <img src="https://img.shields.io/badge/Vivado-Simulation-orange?style=for-the-badge&logo=amd&logoColor=white" alt="Vivado"/>
</p>

---

## 🚀 Project Overview
This repository contains the Verilog HDL implementation and testbench verification of a parameterized 8-bit Synchronous First-In-First-Out (FIFO) memory buffer. The design safely manages data flow between digital components operating on the same clock domain, utilizing sequential read/write pointers and combinational status flags to prevent data overwrite and underflow.

## 🏗️ Design Features
* **Register File Memory:** Built using D flip-flops to safely buffer data streams.
* **Synchronous Pointers:** Sequential read and write pointers that update synchronously with the shared clock edge.
* **Overflow/Underflow Protection:** Accurate `full` and `empty` flag logic generated via Most Significant Bit (MSB) comparison.
* **Parameterized Scaling:** Modular design allowing immediate adjustment of `DEPTH` and `DWIDTH` parameters.

## 📁 Directory Structure

| Directory/File | Description |
| :--- | :--- |
| **`/src/sync_fifo.v`** | Core RTL Verilog implementation of the synchronous FIFO module. |
| **`/sim/tb.v`** | Testbench environment utilizing automated randomized stimulus to test boundary conditions. |

## 🛠️ Tools Used
* **Design Language:** Verilog
* **Simulation & Verification:** Xilinx Vivado

---
