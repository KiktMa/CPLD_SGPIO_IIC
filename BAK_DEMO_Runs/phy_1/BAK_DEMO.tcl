# Script Created by Tang Dynasty.
proc step_begin { step } {
  set stopFile ".stop.f"
  if {[file isfile .stop.f]} {
    puts ""
    puts " #Halting run"
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.f"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exists ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exists ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Ownner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}
proc step_end { step } {
  set endFile ".$step.end.f"
  set ch [open $endFile w]
  close $ch
}
proc step_error { step } {
  set errorFile ".$step.error.f"
  set ch [open $errorFile w]
  close $ch
}
step_begin opt_place
set ACTIVESTEP opt_place
set rc [catch {
  open_project {BAK_DEMO.prj} -phy
  import_device ef2_1.db -package EF2L15LG100B
  import_db {../syn_1/BAK_DEMO_gate.db}
  read_sdc ../../BAK_DEMO.sdc
  place
  export_db {BAK_DEMO_place.db}
} RESULT]
if {$rc} {
  step_error opt_place
  return -code error $RESULT
} else {
  step_end opt_place
  unset ACTIVESTEP
}
step_begin opt_route
set ACTIVESTEP opt_route
set rc [catch {
  route
  report_area -io_info -file BAK_DEMO_phy.area
  write_verilog simulation/BAK_DEMO_phy_sim.v
  export_db {BAK_DEMO_pr.db}
  start_timer
  report_timing -mode FINAL -net_info  -rpt_autogen true -file BAK_DEMO_phy.timing -sdf simulation/BAK_DEMO.sdf
  write_verilog -sdf "BAK_DEMO.sdf" simulation/BAK_DEMO_phy_sim_sta.v
} RESULT]
if {$rc} {
  step_error opt_route
  return -code error $RESULT
} else {
  step_end opt_route
  unset ACTIVESTEP
}
step_begin bitgen
set ACTIVESTEP bitgen
set rc [catch {
  export_bid BAK_DEMO_inst.bid
  bitgen -bit "BAK_DEMO.bit" -bin "BAK_DEMO.bin"  -hd 00000000AA5599669100050000000000
} RESULT]
if {$rc} {
  step_error bitgen
  return -code error $RESULT
} else {
  step_end bitgen
  unset ACTIVESTEP
}
