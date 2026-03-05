# SAR ADC 8 bit in IHP SG13G2 

This repository presents the implementation of a Successive Approximation Register (SAR) Analog-to-Digital Converter using open-source design tools, targeting the **IHP SG13G2 technology node**.

The project illustrates a mixed-signal IC design workflow that includes **schematic design, digital verification, analog layout, and system-level simulation** using open-source EDA tools.

---

## 🚀 Overview

This project demonstrates the implementation of a **Successive Approximation Register (SAR) Analog-to-Digital Converter** using open-source design tools.

The design includes both **analog and digital components** and shows how a mixed-signal system can be developed from individual circuit blocks to form a complete ADC.

### Project goals

- Practice full-custom mixed-signal design  
- Develop circuits using a hierarchical block-based approach  
- Integrate analog and digital components  
- Perform verification using open-source EDA tools  
- Illustrate a simple open-source IC design workflow

## 🧱 Architecture

The main building blocks of the SAR ADC include:

Dynamic Comparator

Capacitive DAC (C-DAC)

SAR Digital Logic

Bootstrap Switch

Switch Array

Mixed-signal integration

The design follows a bottom-up hierarchical methodology, where each block is designed and verified individually before being integrated into the complete system.

---

## 📂 Repository Structure

```bash
SAR_ADC_8BIT_IHP/
├── README.md
│
├── docs
│   ├── comparator.md
│   ├── digital_comps.md
│   └── sar_adc.md
│
├── gds
│   ├── C-DAC.gds
│   ├── Cunit.gds
│   ├── DIFF_COMPARATOR.gds
│   ├── T_gate.gds
│   ├── T_gate_switch.gds
│   ├── bootstrap_switch.gds
│   ├── inverter.gds
│   ├── nand_gate.gds
│   ├── sar_logic.gds
│   └── switch_array.gds
│
├── rtl
│   └── verilog
│       ├── Makefile
│       ├── conf.gtkw
│       ├── sar_logic.v
│       └── sar_logic_tb.v
│
├── scripts
│   └── python
│       └── generate_sym.py
│
└── xschem
    ├── SAR_ADC.sch
    ├── SAR_ADC_tb.sch
    ├── dynamic_comparator.sch
    ├── C-DAC.sch
    ├── switch_array.sch
    ├── bootstrap_switch.sch
    ├── nand_gate.sch
    ├── inverter.sch
    ├── T_gate.sch
    └── simulations
  ```


## ▶️ Run the Simulation

This project can be reproduced using open-source analog tools on Linux or WSL.

## Clone the Repository
git clone https://github.com/tienakai/SAR_ADC_8BIT_IHP.git

cd SAR_ADC_8BIT_IHP
## Run Xschem (GUI)

Example: run SAR ADC testbench simulation
```bash
cd xschem
xschem SAR_ADC_tb.sch
```

Inside Xschem:

- Click Netlist

- Click Simulate

## Digital Simulation

Run SAR logic simulation:
```bash
cd rtl/verilog
make
```
Waveforms can be viewed using GTKWave.



## 🧠 Layout and GDS

All layout data is located in:

```bash
gds/
```


Integration status

- Individual modules have passed DRC and LVS verification.

-  Current work focuses on top-level layout integration, including module interconnection and pad ring connectivity.

Layouts can be viewed using:

Magic

KLayout

| Module | Description | DRC | LVS |
|------|-------------|------|------|
| Comparator | Dynamic comparator layout | ✅ | ✅ |
| Capacitive DAC | Capacitor DAC array | ✅ | ✅ |
| SAR Logic | Digital SAR control logic | ✅ | ✅ |
| Bootstrap Switch | Sampling switch | ✅ | ✅ |
| Switch Array | DAC switching network | ✅ | ✅ |
| Basic Digital Gates | Inverter, NAND | ✅ | ✅ |


