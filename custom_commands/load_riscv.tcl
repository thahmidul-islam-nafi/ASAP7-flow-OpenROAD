pwd
exec bash -c "source source_3.sh"
exec env
source ./scripts/load.tcl
load_design 1_synth.v 1_synth.sdc "Loading Floorplan"
