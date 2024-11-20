#!/bin/bash

# Set additional variables
export DESIGN_NICKNAME="riscv32i"
export DESIGN_NAME="riscv_top"
export PLATFORM="asap7"

# Use find to get a list of Verilog files matching the pattern and sort them
export VERILOG_FILES=$(find "./designs/src/${DESIGN_NICKNAME}/" -name "*.v" | sort)

export SDC_FILE="./designs/${PLATFORM}/${DESIGN_NICKNAME}/constraint.sdc"
export ADDITIONAL_LEFS="./platforms/${PLATFORM}/lef/fakeram7_256x32.lef"
export ADDITIONAL_LIBS="./platforms/${PLATFORM}/lib/fakeram7_256x32.lib"

export DIE_AREA="0 0 120 120"
export CORE_AREA="5 5 110 110"

export PLACE_DENSITY=0.65

export SYNTH_HIERARCHICAL=1
export RTLMP_FLOW=true
# export MACRO_PLACEMENT_TCL=~/OpenROAD-flow-scripts/flow/custom_scripts/custom_macro_placer.tcl
# RTL_MP Settings
export RTLMP_MAX_INST=10000
export RTLMP_MIN_INST=5000
export RTLMP_MAX_MACRO=4
export RTLMP_MIN_MACRO=1
export HAS_IO_CONSTRAINTS=1
export PLACE_PINS_ARGS="-exclude left:* -exclude right:* -exclude top:*"

# Include the rest of the original Makefile content as needed

