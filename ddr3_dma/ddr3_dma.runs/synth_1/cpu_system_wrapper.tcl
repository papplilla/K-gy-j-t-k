# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param tcl.collectionResultDisplayLimit 0
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7k70tfbg676-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.cache/wt [current_project]
set_property parent.project_path D:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ip_repo/myVGA_1.0 [current_project]
set_property ip_output_repo d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib D:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/imports/hdl/cpu_system_wrapper.v
add_files D:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/cpu_system.bd
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_microblaze_0_0/cpu_system_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_microblaze_0_0/cpu_system_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_microblaze_0_0/cpu_system_microblaze_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_mig_7series_0_0/cpu_system_mig_7series_0_0/user_design/constraints/cpu_system_mig_7series_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_mig_7series_0_0/cpu_system_mig_7series_0_0/user_design/constraints/cpu_system_mig_7series_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_uartlite_0_0/cpu_system_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_uartlite_0_0/cpu_system_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_uartlite_0_0/cpu_system_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_mdm_1_0/cpu_system_mdm_1_0.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_mdm_1_0/cpu_system_mdm_1_0_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_rst_mig_7series_0_100M_0/cpu_system_rst_mig_7series_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_rst_mig_7series_0_100M_0/cpu_system_rst_mig_7series_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_rst_mig_7series_0_100M_0/cpu_system_rst_mig_7series_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_10/bd_e077_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_19/bd_e077_s01a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_25/bd_e077_s03a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_28/bd_e077_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_29/bd_e077_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_30/bd_e077_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_31/bd_e077_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_32/bd_e077_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_33/bd_e077_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_26/bd_e077_sarn_2_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_27/bd_e077_srn_2_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_20/bd_e077_sarn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_21/bd_e077_srn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_11/bd_e077_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_12/bd_e077_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_13/bd_e077_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_14/bd_e077_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_15/bd_e077_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_2/bd_e077_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_3/bd_e077_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_4/bd_e077_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_5/bd_e077_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_6/bd_e077_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_1/bd_e077_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/bd_0/ip/ip_1/bd_e077_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_smc_0/ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_dma_0_0/cpu_system_axi_dma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_dma_0_0/cpu_system_axi_dma_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_dma_0_0/cpu_system_axi_dma_0_0_clocks.xdc]
set_property used_in_synthesis false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_system_ila_0_0/bd_0/ip/ip_0/bd_38aa_ila_lib_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_system_ila_0_0/bd_0/bd_38aa_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_system_ila_0_0/cpu_system_system_ila_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_xbar_0/cpu_system_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_dlmb_v10_0/cpu_system_dlmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_dlmb_v10_0/cpu_system_dlmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_ilmb_v10_0/cpu_system_ilmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_ilmb_v10_0/cpu_system_ilmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_dlmb_bram_if_cntlr_0/cpu_system_dlmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_ilmb_bram_if_cntlr_0/cpu_system_ilmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_lmb_bram_0/cpu_system_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_fifo_generator_0_0/cpu_system_fifo_generator_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_fifo_generator_0_0/cpu_system_fifo_generator_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_gpio_0_0/cpu_system_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_gpio_0_0/cpu_system_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/ip/cpu_system_axi_gpio_0_0/cpu_system_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all D:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/sources_1/bd/cpu_system/cpu_system_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/constrs_1/new/fpga_pinout.xdc
set_property used_in_implementation false [get_files D:/D_Strabi/D_Dokumentumai/BME/MikrorendszerekTevezese/HF/K-gy-j-t-k/ddr3_dma/ddr3_dma.srcs/constrs_1/new/fpga_pinout.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top cpu_system_wrapper -part xc7k70tfbg676-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef cpu_system_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file cpu_system_wrapper_utilization_synth.rpt -pb cpu_system_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
