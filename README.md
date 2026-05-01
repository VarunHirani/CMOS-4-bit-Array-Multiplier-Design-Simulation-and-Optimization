# CMOS 4-bit Array Multiplier: Design, Simulation and Optimization

## 📌 Overview

This project presents the design and SPICE-based simulation of a **4-bit CMOS array multiplier**, built hierarchically from transistor-level logic gates to a complete arithmetic unit. The design is evaluated and optimized for **propagation delay, power consumption, and transistor area**.

---

## ⚙️ Objectives

* Design CMOS logic gates (AND, OR, XOR) at transistor level
* Implement a **Full Adder** using basic gates
* Construct a **4-bit Ripple Carry Adder**
* Design a **4-bit Array Multiplier** using partial product addition
* Perform detailed analysis of:

  * Propagation delay
  * Power consumption
  * Transistor count (area proxy)
* Optimize the multiplier for improved performance

---

## 🏗️ Design Flow

### 1. Basic Gates

* CMOS implementation of AND, OR, XOR
* Voltage Transfer Characteristics (VTC) analysis
* Delay measurement under simultaneous input switching

### 2. Full Adder

* Built using previously designed gates
* Verified using transient simulations
* Delay characterized

### 3. 4-bit Ripple Carry Adder

* Constructed using 4 Full Adders
* Critical path delay determined

### 4. Array Multiplier

* Implemented using AND gates and adders
* Functional verification via SPICE waveforms
* Worst-case delay analyzed

### 5. Optimization

* Design modifications applied to reduce:

  * Critical path delay
  * Power consumption
  * Transistor usage
* Performance compared with baseline implementation

---

## 📊 Results

* Verified correct multiplication for multiple input combinations
* Measured:

  * Critical path delay (pre vs post optimization)
  * Power consumption
  * Transistor count
* Demonstrated trade-offs between **speed, power, and area**

> ⚠️ *Detailed numerical results and waveforms are available in the `/results` and `/reports` directories.*

---

## 📁 Repository Structure

```
circuits/        → CMOS gate, adder, and multiplier designs  
simulations/     → VTC, delay, and waveform simulations  
results/         → Plots, measurements, comparison data  
reports/         → Final project report  
tech_files/      → Technology and library files  
```

---

## 🧪 Tools Used

* LTspice / NGspice
* CMOS VLSI design principles

---

## 🚀 Key Insights

* Ripple carry architecture introduces significant delay due to carry propagation
* Critical path optimization is essential in arithmetic circuits
* Trade-offs between **delay, power, and area** are fundamental in VLSI design
* Hierarchical design simplifies complex circuit implementation

---

## ▶️ How to Use

1. Open SPICE files from `/circuits` in LTspice/NGspice
2. Run transient simulations for waveform verification
3. Refer to `/results` for performance metrics

---

## 📎 Reference

EE 635: Digital Integrated Circuit Design
Indian Institute of Technology Goa

---

## 👤 Author

Varun Hirani
Electrical Engineering, IIT Goa
📧 [hirani.varun@gmail.com](mailto:hirani.varun@gmail.com)
