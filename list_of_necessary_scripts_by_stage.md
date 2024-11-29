```
Method of obtaining results
combination of kwsearch <TERM>
and sourceorenv (in flow directory)
then echo ${<ENV_VAR>}
```

# Synthesis

- synth_preamble.tcl
- synth.tcl
	- SYNTH_STOP_MODULE_SCRIPT - /home/pst_nafi/OpenROAD-flow-scripts/flow/objects/mark_hier_stop_modules.tcl
	- constr - /home/pst_nafi/OpenROAD-flow-scripts/flow/objects/asap7/riscv32i/base/abc.constr
	- abc_script (area) - /home/pst_nafi/OpenROAD-flow-scripts/flow/scripts/abc.area
	- abc_script (speed) - /home/pst_nafi/OpenROAD-flow-scripts/flow/scripts/abc.speed

# Floorplan

- floorplan.tcl
	- loading - /home/pst_nafi/OpenROAD-flow-scripts/flow/scripts/load.tcl
	- MAKE_TRACKS - /home/pst_nafi/OpenROAD-flow-scripts/flow/platforms/asap7/openRoad/make_tracks.tcl
	- PLATFORM_DIR make tracks - /home/pst_nafi/OpenROAD-flow-scripts/flow/platforms/asap7/make_tracks.tcl
	- FOOTPRINT_TCL - (couldn't find in any design)
	- report_metrics - /home/pst_nafi/OpenROAD-flow-scripts/flow/scripts/report_metrics.tcl
- io_placement_random.tcl
	- IO_CONSTRAINTS - (present in mock-array-big design) /home/pst_nafi/OpenROAD-flow-scripts/flow/designs/asap7/mock-array-big/io.tcl
	- 
- tdms_place.tcl
- macro_place.tcl
	- MACRO_WRAPPERS - (present in bp_dual design) /home/pst_nafi/OpenROAD-flow-scripts/flow/platforms/asap7/bp/wrappers/wrappers.tcl
	- MACRO_PLACEMENT_TCL - (present in mock-array-big) /home/pst_nafi/OpenROAD-flow-scripts/flow/designs/asap7/mock-array-big/macro-placement.tcl
	- MACRO_PLACEMENT - (present in bp_dual) /home/pst_nafi/OpenROAD-flow-scripts/flow/platforms/asap7/bp/auto_fence2_bp_single.macro_placment.cfg
`	- placement_blockage - /home/pst_nafi/OpenROAD-flow-scripts/flow/scripts/placement_blockages.tcl
- tapcell.tcl
	- TAPCELL_TCL - /home/pst_nafi/OpenROAD-flow-scripts/flow/platforms/asap7/openRoad/tapcell.tcl
- pdn.tcl
	- PDN_TCL - /home/pst_nafi/OpenROAD-flow-scripts/flow/platforms/asap7/openRoad/pdn/grid_strategy-M2-M5-M7.tcl
	- POST_PDN_TCL - (not found in any design)

