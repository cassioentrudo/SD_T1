
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name trabalho1 -dir "C:/cassio/VHDL/trabalho1/planAhead_run_2" -part xc3s100ecp132-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/cassio/VHDL/trabalho1/trabalho1.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/cassio/VHDL/trabalho1} {ipcore_dir} }
add_files [list {ipcore_dir/caixa1_somador.ncf}] -fileset [get_property constrset [current_run]]
set_property target_constrs_file "C:/Users/cassio/Downloads/hw_description (1).ucf" [current_fileset -constrset]
add_files [list {C:/Users/cassio/Downloads/hw_description (1).ucf}] -fileset [get_property constrset [current_run]]
link_design
