# Traffic Light Controller

A simple **Traffic Light Controller** designed using **Verilog HDL** and a **Finite State Machine (FSM)**.

## Overview

This project controls traffic signals in a predefined sequence:

**RED → GREEN → YELLOW → RED**

The controller uses a clock, reset, state machine, and counter to control the traffic lights.

## Features

- Red, Green and Yellow signal control
- FSM-based design
- Clock-based state transitions
- Reset functionality
- Verilog HDL implementation
- Testbench verification
- Waveform generation using VCD

## Project Structure

```text
traffic-light-controller/
│
├── traffic_light.v
├── traffic_light_tb.v
└── README.md
```

## Working

The controller operates in three states:

- **RED** – Stops vehicles
- **GREEN** – Allows vehicles to move
- **YELLOW** – Warns that the signal is about to change

The sequence continuously repeats:

```text
RED → GREEN → YELLOW → RED
```

## Simulation

The testbench generates a clock and reset signal and monitors the traffic light outputs.

The waveform is generated using:

```verilog
$dumpfile("traffic_light.vcd");
$dumpvars(0, traffic_light_tb);
```

The simulation output verifies the correct traffic light sequence.

## Expected Output

```text
RED=1   YELLOW=0   GREEN=0
RED=0   YELLOW=0   GREEN=1
RED=0   YELLOW=1   GREEN=0
RED=1   YELLOW=0   GREEN=0
```

## Tools Used

- Verilog HDL
- EDA Playground
- Icarus Verilog
- EPWave

## Authors

- Bhoomika K
- Nandini I P
- Sneaha

**Department of Electronics and Communication**  
**Atria Institute of Technology**

**Academic Year: 2026–2027**
