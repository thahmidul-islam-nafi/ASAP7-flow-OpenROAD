## Contents 
This repository contains custom scripts, and necessary files used in the RTL to GDSII flow of OpenROAD RISCV32I design with ASAP7 PDK


## OpenROAD Steps
- **Setup Environment**
  - Use the config.mk file on design and platforms (PDK) directory to configure common, design and PDK specific design variables.

- **Prepare Design**
  - Organize Design Files
  - Check Compatibility

- **Synthesis**
  - Run Yosys
  - Generate Reports

- **Floorplanning**
  - Define Chip Layout
  - Define tracks and site rows
  - Create Power Plan

- **Placement**
  - Initial Placement
  - Legalization
  - Optimization
  - **Physical-Only Cells Placement**: Insert tap cells and well ties to ensure proper electrical connectivity and isolation.

- **Clock Tree Synthesis (CTS)**
  - Design Clock Tree
  - Insert Buffers

- **Routing**
  - Global Routing
  - Detailed Routing
  - Check DRC

- **Signoff**
  - Timing Analysis with OpenSTA
  - Power Analysis
  - DRC and LVS
  - Generate GDSII using Klayout

- **ECO (Engineering Change Order)**: Perform iterative buffer sizing and insertion on timing-critical paths to optimize timing and fix hold violations [Automated SoC, Mixed-Signal Design using OpenROAD and OpenFASoC](https://theopenroadproject.org/automated-soc-mixed-signal-design-using-openroad-and-openfasoc/).


## File and Directory Descriptions 



- **load_env_vars_flow.sh** - workaround to run each step of the flow separately. 
- **openroad_alias_list.txt** - List of bash aliases used for OpenROAD. 
- **custom_commands** - **Contains custom commands for the tool**
- **designs**
  - asap7
    - riscv32i
- **logs** - **Contains timing and power report files**
  - asap7
    - riscv32i
      - base
- **objects**
  - asap7
    - riscv32i
      - base
        - lib
          - rtlmp
- **platforms**
  - asap7
    - gds
      - KLayout
        - drc
        - lef
        - lib
        - openlane
          - asap7sc7p5t
        - openRoad
          - pdn
        - yoSys
- **results** - **Contains odb objects for power, timing and IREM analysis, antenna reports** 
  - asap7
    - riscv32i
      - base


