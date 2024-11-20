proc set_cell_placement_status {args} {
  if {[ord::get_db_block] == "NULL"} {
    utl::error PAD 9228 "Design must be loaded before calling place_cell."
  }
 
  set db [ord::get_db]
  set block [ord::get_db_block]
 
  sta::parse_key_args "place_cell" args \
    keys {-inst_name -status}
 
  if {[info exists keys(-status)]} {
    set placement_status $keys(-status)
    if {[lsearch {PLACED FIRM} $placement_status] == -1} {
      utl::error PAD 9188 "Invalid placement status $placement_status, must be one of either PLACED or FIRM."
    }
  } else {
    set placement_status "PLACED"
  }
 

 
  if {[info exists keys(-inst_name)]} {
    set inst_name [lindex $keys(-inst_name) 0]
  } else {
    utl::error PAD 9190 "-inst_name is a required argument to the place_cell command."
  }
  
 
  if {[set inst [$block findInst $inst_name]] == "NULL"} {
    utl::error PAD 9199 "Cannot create instance $inst_name of $cell_name."
  }

  $inst setPlacementStatus $placement_status
}
