# FPGA-Based Autonomous MazeSolver Bot using RV32I Processor

An FPGA-based autonomous MazeSolver Bot developed as part of the **e-Yantra Robotics Competition (eYRC), IIT Bombay**. The project integrates a custom 5-stage pipelined RV32I RISC-V processor with FPGA-based hardware modules for autonomous maze navigation, sensor interfacing, motor control, and wireless communication.

![Hardware](https://img.shields.io/badge/Hardware-FPGA-blue)
![Language](https://img.shields.io/badge/Language-Verilog%20HDL-orange)
![Processor](https://img.shields.io/badge/Processor-RV32I%20RISC--V-green)

---

# Project Overview

The objective of this project was to design and implement an autonomous MazeSolver robot completely on an FPGA platform. The system combines a custom RV32I processor with dedicated hardware accelerators to perform real-time navigation inside a dynamically changing maze.

The robot continuously acquires sensor data, processes navigation decisions, controls motor movement, and communicates wirelessly with external devices while operating in real time.

The entire design was developed using Verilog HDL and deployed on an **Altera Cyclone IV FPGA**.

---

# Features

- Custom 5-stage pipelined RV32I RISC-V processor
- FPGA-based autonomous maze navigation
- Real-time ultrasonic sensor interfacing
- Motor control using PWM
- UART-based serial communication
- Wireless communication support
- Modular RTL design
- Fully verified using simulation and custom testbenches

---

# Hardware Platform

- Altera Cyclone IV FPGA
- Ultrasonic Distance Sensor
- DC Motors
- Motor Driver
- Wireless Communication Module
- Power Supply

---

# Software & Tools

- Verilog HDL
- Quartus Prime
- ModelSim
- Git & GitHub

---

# System Architecture

The complete system consists of the following hardware modules:

- RV32I 5-Stage Pipeline Processor
- Instruction Memory
- Data Memory
- UART Controller
- PWM Generator
- Motor Controller
- Ultrasonic Sensor Interface
- Navigation Controller
- Wireless Communication Interface

All modules communicate through the FPGA and operate simultaneously, enabling parallel execution for autonomous navigation.

---

# Project Tasks

## 1. RV32I Processor Design

- Designed a custom 5-stage pipelined RV32I RISC-V processor.
- Implemented instruction fetch, decode, execute, memory access, and write-back stages.
- Verified processor functionality using RTL simulation.

---

## 2. Sensor Interface

- Designed hardware interface for ultrasonic sensor.
- Measured obstacle distance in real time.
- Used sensor feedback for navigation decisions.

---

## 3. Motor Control

- Designed PWM generator.
- Controlled left and right DC motors.
- Generated accurate speed control signals.

---

## 4. UART Communication

- Implemented UART transmitter and receiver.
- Enabled serial communication between FPGA and external devices.

---

## 5. Wireless Communication

- Integrated wireless communication hardware.
- Transmitted navigation and control information.

---

## 6. Autonomous Maze Navigation

- Developed hardware modules for autonomous navigation.
- Integrated processor, sensors, and motor controller.
- Successfully navigated maze environments using real-time sensor feedback.

---

# Verification

The complete design was verified using:

- Custom RTL Testbenches
- Functional Simulation
- Timing Verification
- Hardware Testing on FPGA

---

## 🚀 Live Preview

<p align="center">
<img src="assets/demo.gif" width="700">
</p>

**🎥 Full Demonstration:** https://www.youtube.com/watch?v=Zv05e7HeLQA

# Skills Demonstrated

- Computer Architecture
- RISC-V Processor Design
- Verilog HDL
- RTL Design
- FPGA Development
- Digital System Design
- Embedded Systems
- Sensor Interfacing
- UART Communication
- PWM Design
- Hardware Verification

---

# Competition

**e-Yantra Robotics Competition (eYRC)**

Organized by **IIT Bombay**

Duration:

**August 2025 – January 2026**

---

# Author

**Yashwanth Sri Sai Chitturi**

B.Tech Electrical Engineering

Interested in:

- VLSI Design
- FPGA Systems
- Computer Architecture
- Embedded Systems
- AI Hardware Accelerators
