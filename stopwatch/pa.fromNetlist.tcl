
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name stopwatch -dir "D:/github/POCP/StopWatch/stopwatch/planAhead_run_3" -part xc6slx9ftg256-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/github/POCP/StopWatch/stopwatch/stopwatch7seg.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/github/POCP/StopWatch/stopwatch} }
set_property target_constrs_file "stopwatch7seg_map.ucf" [current_fileset -constrset]
add_files [list {stopwatch7seg_map.ucf}] -fileset [get_property constrset [current_run]]
link_design
