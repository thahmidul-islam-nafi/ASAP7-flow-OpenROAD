#!/bin/bash

# Set default values
export FLOW_HOME="/home/pst_nafi/OpenROAD-flow-scripts/flow"
export DESIGN_HOME="${FLOW_HOME}/designs"
export PLATFORM_HOME="${FLOW_HOME}/platforms"
export WORK_HOME="/home/pst_nafi/OpenROAD-flow-scripts/flow"
export UTILS_DIR="${FLOW_HOME}/util"
export SCRIPTS_DIR="${FLOW_HOME}/scripts"
export TEST_DIR="${FLOW_HOME}/test"

export PLATFORM="asap7"
export GALLERY_REPORT=0
export SYNTH_HIERARCHICAL=0
export SYNTH_STOP_MODULE_SCRIPT="${WORK_HOME}/objects/mark_hier_stop_modules.tcl"
export HIER_REPORT_SCRIPT="${SCRIPTS_DIR}/synth_hier_report.tcl"
export MAX_UNGROUP_SIZE=0
export RESYNTH_AREA_RECOVER=0
export RESYNTH_TIMING_RECOVER=0
export ABC_AREA=0
export SYNTH_ARGS="-flatten"
export PLACE_PINS_ARGS=""
export FLOW_VARIANT="base"
export GPL_TIMING_DRIVEN=1
export GPL_ROUTABILITY_DRIVEN=1
export ENABLE_DPO=1
export DPO_MAX_DISPLACEMENT="5 1"
export LOG_DIR="${WORK_HOME}/logs/${PLATFORM}/${DESIGN_NICKNAME}/${FLOW_VARIANT}"
export OBJECTS_DIR="${WORK_HOME}/objects/${PLATFORM}/${DESIGN_NICKNAME}/${FLOW_VARIANT}"
export REPORTS_DIR="${WORK_HOME}/reports/${PLATFORM}/${DESIGN_NICKNAME}/${FLOW_VARIANT}"
export RESULTS_DIR="${WORK_HOME}/results/${PLATFORM}/${DESIGN_NICKNAME}/${FLOW_VARIANT}"
export RTLMP_RPT_DIR="${OBJECTS_DIR}/rtlmp"
export RTLMP_RPT_FILE="partition.txt"
export RTLMP_BLOCKAGE_FILE="${OBJECTS_DIR}/rtlmp/partition.txt.blockage"

# Include design and platform configuration
export PLATFORM_DIR="${PLATFORM_HOME}/${PLATFORM}"

# Check if DESIGN_CONFIG is defined and set the variable accordingly
export DESIGN_CONFIG="${DESIGN_CONFIG:-./designs/nangate45/gcd/config.mk}"

# Check if SYNTH_HIERARCHICAL is set to 1
if [ "$SYNTH_HIERARCHICAL" -eq 1 ]; then
  export SYNTH_STOP_MODULE_SCRIPT="${OBJECTS_DIR}/mark_hier_stop_modules.tcl"
  export HIER_REPORT_SCRIPT="${SCRIPTS_DIR}/synth_hier_report.tcl"
  export MAX_UNGROUP_SIZE=0
fi

# Check if RESYNTH_AREA_RECOVER is set to 1
if [ "$RESYNTH_AREA_RECOVER" -eq 1 ]; then
  export RESYNTH_TIMING_RECOVER=0
  export ABC_AREA=0
fi

# Global setting for Synthesis
export SYNTH_ARGS="-flatten"

# Global setting for Floorplan
export PLACE_PINS_ARGS

# Setup working directories

# Setup directories
export DESIGN_DIR="${DESIGN_CONFIG%/*}"
export LOG_DIR="${WORK_HOME}/logs/${PLATFORM}/${DESIGN_NICKNAME}/${FLOW_VARIANT}"
export OBJECTS_DIR="${WORK_HOME}/objects/${PLATFORM}/${DESIGN_NICKNAME}/${FLOW_VARIANT}"
export REPORTS_DIR="${WORK_HOME}/reports/${PLATFORM}/${DESIGN_NICKNAME}/${FLOW_VARIANT}"
export RESULTS_DIR="${WORK_HOME}/results/${PLATFORM}/${DESIGN_NICKNAME}/${FLOW_VARIANT}"
export RTLMP_RPT_DIR="${OBJECTS_DIR}/rtlmp"

# Additional environment variables
export PLATFORM_DIR="${PLATFORM_HOME}/${PLATFORM}"
export GALLERY_REPORT="${GALLERY_REPORT:-0}"
export SYNTH_HIERARCHICAL="${SYNTH_HIERARCHICAL:-0}"
export FLOW_VARIANT="${FLOW_VARIANT:-base}"
export GPL_TIMING_DRIVEN="${GPL_TIMING_DRIVEN:-1}"
export GPL_ROUTABILITY_DRIVEN="${GPL_ROUTABILITY_DRIVEN:-1}"
export ENABLE_DPO="${ENABLE_DPO:-1}"
export DPO_MAX_DISPLACEMENT="${DPO_MAX_DISPLACEMENT:-5 1}"

# ... (Add any additional environment variables as needed)

# Rest of the original Makefile content can be added here, using Bash syntax.

