
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name LED -dir "D:/fpga/LED/planAhead_run_4" -part xc3s400pq208-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/fpga/LED/top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/fpga/LED} }
set_property target_constrs_file "MyUCF.ucf" [current_fileset -constrset]
add_files [list {MyUCF.ucf}] -fileset [get_property constrset [current_run]]
link_design
