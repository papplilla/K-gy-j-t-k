
################################################################
# This is a generated script based on design: cpu_system
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source cpu_system_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# vgaSync

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7k70tfbg676-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name cpu_system

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}


##################################################################
# MIG PRJ FILE TCL PROCs
##################################################################

proc write_mig_file_cpu_system_mig_7series_0_0 { str_mig_prj_filepath } {

   file mkdir [ file dirname "$str_mig_prj_filepath" ]
   set mig_prj_file [open $str_mig_prj_filepath  w+]

   puts $mig_prj_file {<?xml version='1.0' encoding='UTF-8'?>}
   puts $mig_prj_file {<!-- IMPORTANT: This is an internal file that has been generated by the MIG software. Any direct editing or changes made to this file may result in unpredictable behavior or data corruption. It is strongly advised that users do not edit the contents of this file. Re-run the MIG GUI with the required settings if any of the options provided below need to be altered. -->}
   puts $mig_prj_file {<Project NoOfControllers="1" >}
   puts $mig_prj_file {    <ModuleName>cpu_system_mig_7series_0_0</ModuleName>}
   puts $mig_prj_file {    <dci_inouts_inputs>1</dci_inouts_inputs>}
   puts $mig_prj_file {    <dci_inputs>1</dci_inputs>}
   puts $mig_prj_file {    <Debug_En>OFF</Debug_En>}
   puts $mig_prj_file {    <DataDepth_En>1024</DataDepth_En>}
   puts $mig_prj_file {    <LowPower_En>ON</LowPower_En>}
   puts $mig_prj_file {    <XADC_En>Enabled</XADC_En>}
   puts $mig_prj_file {    <TargetFPGA>xc7k70t-fbg676/-1</TargetFPGA>}
   puts $mig_prj_file {    <Version>4.1</Version>}
   puts $mig_prj_file {    <SystemClock>No Buffer</SystemClock>}
   puts $mig_prj_file {    <ReferenceClock>No Buffer</ReferenceClock>}
   puts $mig_prj_file {    <SysResetPolarity>ACTIVE HIGH</SysResetPolarity>}
   puts $mig_prj_file {    <BankSelectionFlag>FALSE</BankSelectionFlag>}
   puts $mig_prj_file {    <InternalVref>1</InternalVref>}
   puts $mig_prj_file {    <dci_hr_inouts_inputs>50 Ohms</dci_hr_inouts_inputs>}
   puts $mig_prj_file {    <dci_cascade>0</dci_cascade>}
   puts $mig_prj_file {    <Controller number="0" >}
   puts $mig_prj_file {        <MemoryDevice>DDR3_SDRAM/Components/MT41K256M16XX-107</MemoryDevice>}
   puts $mig_prj_file {        <TimePeriod>2500</TimePeriod>}
   puts $mig_prj_file {        <VccAuxIO>1.8V</VccAuxIO>}
   puts $mig_prj_file {        <PHYRatio>4:1</PHYRatio>}
   puts $mig_prj_file {        <InputClkFreq>100</InputClkFreq>}
   puts $mig_prj_file {        <UIExtraClocks>1</UIExtraClocks>}
   puts $mig_prj_file {        <MMCM_VCO>800</MMCM_VCO>}
   puts $mig_prj_file {        <MMCMClkOut0> 4.000</MMCMClkOut0>}
   puts $mig_prj_file {        <MMCMClkOut1>1</MMCMClkOut1>}
   puts $mig_prj_file {        <MMCMClkOut2>1</MMCMClkOut2>}
   puts $mig_prj_file {        <MMCMClkOut3>1</MMCMClkOut3>}
   puts $mig_prj_file {        <MMCMClkOut4>1</MMCMClkOut4>}
   puts $mig_prj_file {        <DataWidth>32</DataWidth>}
   puts $mig_prj_file {        <DeepMemory>1</DeepMemory>}
   puts $mig_prj_file {        <DataMask>1</DataMask>}
   puts $mig_prj_file {        <ECC>Disabled</ECC>}
   puts $mig_prj_file {        <Ordering>Normal</Ordering>}
   puts $mig_prj_file {        <BankMachineCnt>4</BankMachineCnt>}
   puts $mig_prj_file {        <CustomPart>FALSE</CustomPart>}
   puts $mig_prj_file {        <NewPartName></NewPartName>}
   puts $mig_prj_file {        <RowAddress>15</RowAddress>}
   puts $mig_prj_file {        <ColAddress>10</ColAddress>}
   puts $mig_prj_file {        <BankAddress>3</BankAddress>}
   puts $mig_prj_file {        <MemoryVoltage>1.5V</MemoryVoltage>}
   puts $mig_prj_file {        <C0_MEM_SIZE>1073741824</C0_MEM_SIZE>}
   puts $mig_prj_file {        <UserMemoryAddressMap>ROW_BANK_COLUMN</UserMemoryAddressMap>}
   puts $mig_prj_file {        <PinSelection>}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="Y2" SLEW="" name="ddr3_addr[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="AC3" SLEW="" name="ddr3_addr[10]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="W4" SLEW="" name="ddr3_addr[11]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="AA3" SLEW="" name="ddr3_addr[12]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="U2" SLEW="" name="ddr3_addr[13]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="U1" SLEW="" name="ddr3_addr[14]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="Y3" SLEW="" name="ddr3_addr[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="W1" SLEW="" name="ddr3_addr[2]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="W3" SLEW="" name="ddr3_addr[3]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="Y5" SLEW="" name="ddr3_addr[4]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="W5" SLEW="" name="ddr3_addr[5]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="V2" SLEW="" name="ddr3_addr[6]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="V1" SLEW="" name="ddr3_addr[7]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="V3" SLEW="" name="ddr3_addr[8]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="V4" SLEW="" name="ddr3_addr[9]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="AA5" SLEW="" name="ddr3_ba[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="AA4" SLEW="" name="ddr3_ba[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="AA2" SLEW="" name="ddr3_ba[2]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="AB2" SLEW="" name="ddr3_cas_n" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL15" PADName="AD5" SLEW="" name="ddr3_ck_n[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL15" PADName="AD6" SLEW="" name="ddr3_ck_p[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="AC4" SLEW="" name="ddr3_cke[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="AB1" SLEW="" name="ddr3_cs_n[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="AD9" SLEW="" name="ddr3_dm[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="AD1" SLEW="" name="ddr3_dm[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="AA13" SLEW="" name="ddr3_dm[2]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="AE8" SLEW="" name="ddr3_dm[3]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AA7" SLEW="" name="ddr3_dq[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AE3" SLEW="" name="ddr3_dq[10]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AD3" SLEW="" name="ddr3_dq[11]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AE6" SLEW="" name="ddr3_dq[12]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AE1" SLEW="" name="ddr3_dq[13]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AF3" SLEW="" name="ddr3_dq[14]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AD4" SLEW="" name="ddr3_dq[15]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AC11" SLEW="" name="ddr3_dq[16]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AA12" SLEW="" name="ddr3_dq[17]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AB10" SLEW="" name="ddr3_dq[18]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AD13" SLEW="" name="ddr3_dq[19]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AE7" SLEW="" name="ddr3_dq[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AC13" SLEW="" name="ddr3_dq[20]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AB11" SLEW="" name="ddr3_dq[21]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AA10" SLEW="" name="ddr3_dq[22]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="Y12" SLEW="" name="ddr3_dq[23]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AF10" SLEW="" name="ddr3_dq[24]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AE10" SLEW="" name="ddr3_dq[25]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AE11" SLEW="" name="ddr3_dq[26]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AF9" SLEW="" name="ddr3_dq[27]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AE13" SLEW="" name="ddr3_dq[28]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AF8" SLEW="" name="ddr3_dq[29]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AC9" SLEW="" name="ddr3_dq[2]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AF13" SLEW="" name="ddr3_dq[30]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AD10" SLEW="" name="ddr3_dq[31]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AB9" SLEW="" name="ddr3_dq[3]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AC7" SLEW="" name="ddr3_dq[4]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AB7" SLEW="" name="ddr3_dq[5]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AF7" SLEW="" name="ddr3_dq[6]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AA8" SLEW="" name="ddr3_dq[7]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AF2" SLEW="" name="ddr3_dq[8]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15_T_DCI" PADName="AE2" SLEW="" name="ddr3_dq[9]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="AD8" SLEW="" name="ddr3_dqs_n[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="AF4" SLEW="" name="ddr3_dqs_n[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="AC12" SLEW="" name="ddr3_dqs_n[2]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="AF12" SLEW="" name="ddr3_dqs_n[3]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="AC8" SLEW="" name="ddr3_dqs_p[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="AF5" SLEW="" name="ddr3_dqs_p[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="AB12" SLEW="" name="ddr3_dqs_p[2]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="AE12" SLEW="" name="ddr3_dqs_p[3]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="AC1" SLEW="" name="ddr3_odt[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="AC2" SLEW="" name="ddr3_ras_n" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="LVCMOS15" PADName="Y1" SLEW="" name="ddr3_reset_n" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL15" PADName="AB5" SLEW="" name="ddr3_we_n" IN_TERM="" />}
   puts $mig_prj_file {        </PinSelection>}
   puts $mig_prj_file {        <System_Control>}
   puts $mig_prj_file {            <Pin PADName="No connect" Bank="Select Bank" name="sys_rst" />}
   puts $mig_prj_file {            <Pin PADName="No connect" Bank="Select Bank" name="init_calib_complete" />}
   puts $mig_prj_file {            <Pin PADName="No connect" Bank="Select Bank" name="tg_compare_error" />}
   puts $mig_prj_file {        </System_Control>}
   puts $mig_prj_file {        <TimingParameters>}
   puts $mig_prj_file {            <Parameters twtr="7.5" trrd="6" trefi="7.8" tfaw="35" trtp="7.5" tcke="5" trfc="260" trp="13.91" tras="34" trcd="13.91" />}
   puts $mig_prj_file {        </TimingParameters>}
   puts $mig_prj_file {        <mrBurstLength name="Burst Length" >8 - Fixed</mrBurstLength>}
   puts $mig_prj_file {        <mrBurstType name="Read Burst Type and Length" >Sequential</mrBurstType>}
   puts $mig_prj_file {        <mrCasLatency name="CAS Latency" >6</mrCasLatency>}
   puts $mig_prj_file {        <mrMode name="Mode" >Normal</mrMode>}
   puts $mig_prj_file {        <mrDllReset name="DLL Reset" >No</mrDllReset>}
   puts $mig_prj_file {        <mrPdMode name="DLL control for precharge PD" >Slow Exit</mrPdMode>}
   puts $mig_prj_file {        <emrDllEnable name="DLL Enable" >Enable</emrDllEnable>}
   puts $mig_prj_file {        <emrOutputDriveStrength name="Output Driver Impedance Control" >RZQ/6</emrOutputDriveStrength>}
   puts $mig_prj_file {        <emrMirrorSelection name="Address Mirroring" >Disable</emrMirrorSelection>}
   puts $mig_prj_file {        <emrCSSelection name="Controller Chip Select Pin" >Enable</emrCSSelection>}
   puts $mig_prj_file {        <emrRTT name="RTT (nominal) - On Die Termination (ODT)" >RZQ/6</emrRTT>}
   puts $mig_prj_file {        <emrPosted name="Additive Latency (AL)" >0</emrPosted>}
   puts $mig_prj_file {        <emrOCD name="Write Leveling Enable" >Disabled</emrOCD>}
   puts $mig_prj_file {        <emrDQS name="TDQS enable" >Enabled</emrDQS>}
   puts $mig_prj_file {        <emrRDQS name="Qoff" >Output Buffer Enabled</emrRDQS>}
   puts $mig_prj_file {        <mr2PartialArraySelfRefresh name="Partial-Array Self Refresh" >Full Array</mr2PartialArraySelfRefresh>}
   puts $mig_prj_file {        <mr2CasWriteLatency name="CAS write latency" >5</mr2CasWriteLatency>}
   puts $mig_prj_file {        <mr2AutoSelfRefresh name="Auto Self Refresh" >Enabled</mr2AutoSelfRefresh>}
   puts $mig_prj_file {        <mr2SelfRefreshTempRange name="High Temparature Self Refresh Rate" >Normal</mr2SelfRefreshTempRange>}
   puts $mig_prj_file {        <mr2RTTWR name="RTT_WR - Dynamic On Die Termination (ODT)" >Dynamic ODT off</mr2RTTWR>}
   puts $mig_prj_file {        <PortInterface>AXI</PortInterface>}
   puts $mig_prj_file {        <AXIParameters>}
   puts $mig_prj_file {            <C0_C_RD_WR_ARB_ALGORITHM>ROUND_ROBIN</C0_C_RD_WR_ARB_ALGORITHM>}
   puts $mig_prj_file {            <C0_S_AXI_ADDR_WIDTH>30</C0_S_AXI_ADDR_WIDTH>}
   puts $mig_prj_file {            <C0_S_AXI_DATA_WIDTH>32</C0_S_AXI_DATA_WIDTH>}
   puts $mig_prj_file {            <C0_S_AXI_ID_WIDTH>4</C0_S_AXI_ID_WIDTH>}
   puts $mig_prj_file {            <C0_S_AXI_SUPPORTS_NARROW_BURST>0</C0_S_AXI_SUPPORTS_NARROW_BURST>}
   puts $mig_prj_file {        </AXIParameters>}
   puts $mig_prj_file {    </Controller>}
   puts $mig_prj_file {</Project>}

   close $mig_prj_file
}
# End of write_mig_file_cpu_system_mig_7series_0_0()



##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: microblaze_0_local_memory
proc create_hier_cell_microblaze_0_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_microblaze_0_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 lmb_bram ]
  set_property -dict [ list \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR3_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR3_0 ]
  set UART [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 UART ]

  # Create ports
  set bout [ create_bd_port -dir O -from 1 -to 0 bout ]
  set clk100M_in [ create_bd_port -dir I -type clk clk100M_in ]
  set gout [ create_bd_port -dir O -from 1 -to 0 gout ]
  set hs [ create_bd_port -dir O hs ]
  set rout [ create_bd_port -dir O -from 1 -to 0 rout ]
  set rst_in [ create_bd_port -dir I -type rst rst_in ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $rst_in
  set vs [ create_bd_port -dir O vs ]

  # Create instance: axi_dma_0, and set properties
  set axi_dma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0 ]
  set_property -dict [ list \
   CONFIG.c_include_sg {0} \
   CONFIG.c_m_axis_mm2s_tdata_width {8} \
   CONFIG.c_sg_include_stscntrl_strm {0} \
   CONFIG.c_single_interface {1} \
 ] $axi_dma_0

  # Create instance: axi_smc, and set properties
  set axi_smc [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_smc ]
  set_property -dict [ list \
   CONFIG.NUM_SI {3} \
 ] $axi_smc

  # Create instance: axi_uartlite_0, and set properties
  set axi_uartlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {115200} \
 ] $axi_uartlite_0

  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Empty_Threshold_Assert_Value_axis {510} \
   CONFIG.Empty_Threshold_Assert_Value_rach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wrch {14} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Enable_TLAST {true} \
   CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value_axis {511} \
   CONFIG.Full_Threshold_Assert_Value_rach {15} \
   CONFIG.Full_Threshold_Assert_Value_wach {15} \
   CONFIG.Full_Threshold_Assert_Value_wrch {15} \
   CONFIG.HAS_TKEEP {true} \
   CONFIG.INTERFACE_TYPE {AXI_STREAM} \
   CONFIG.Input_Depth_axis {512} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.TDATA_NUM_BYTES {1} \
   CONFIG.TKEEP_WIDTH {1} \
   CONFIG.TSTRB_WIDTH {1} \
   CONFIG.TUSER_WIDTH {0} \
 ] $fifo_generator_0

  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]

  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:10.0 microblaze_0 ]
  set_property -dict [ list \
   CONFIG.C_ADDR_TAG_BITS {17} \
   CONFIG.C_CACHE_BYTE_SIZE {8192} \
   CONFIG.C_DCACHE_ADDR_TAG {17} \
   CONFIG.C_DCACHE_BYTE_SIZE {8192} \
   CONFIG.C_DCACHE_LINE_LEN {16} \
   CONFIG.C_DCACHE_USE_WRITEBACK {1} \
   CONFIG.C_DEBUG_ENABLED {1} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_ICACHE_LINE_LEN {16} \
   CONFIG.C_I_LMB {1} \
   CONFIG.C_USE_BARREL {1} \
   CONFIG.C_USE_DCACHE {1} \
   CONFIG.C_USE_DIV {1} \
   CONFIG.C_USE_HW_MUL {2} \
   CONFIG.C_USE_ICACHE {1} \
   CONFIG.C_USE_MSR_INSTR {1} \
   CONFIG.C_USE_PCMP_INSTR {1} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {2} \
 ] $microblaze_0_axi_periph

  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory [current_bd_instance .] microblaze_0_local_memory

  # Create instance: mig_7series_0, and set properties
  set mig_7series_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mig_7series:4.1 mig_7series_0 ]

  # Generate the PRJ File for MIG
  set str_mig_folder [get_property IP_DIR [ get_ips [ get_property CONFIG.Component_Name $mig_7series_0 ] ] ]
  set str_mig_file_name mig_a.prj
  set str_mig_file_path ${str_mig_folder}/${str_mig_file_name}

  write_mig_file_cpu_system_mig_7series_0_0 $str_mig_file_path

  set_property -dict [ list \
   CONFIG.BOARD_MIG_PARAM {Custom} \
   CONFIG.MIG_DONT_TOUCH_PARAM {Custom} \
   CONFIG.RESET_BOARD_INTERFACE {Custom} \
   CONFIG.XML_INPUT_FILE {mig_a.prj} \
 ] $mig_7series_0

  # Create instance: rst_mig_7series_0_100M, and set properties
  set rst_mig_7series_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_mig_7series_0_100M ]

  # Create instance: system_ila_0, and set properties
  set system_ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_0 ]
  set_property -dict [ list \
   CONFIG.ALL_PROBE_SAME_MU_CNT {4} \
   CONFIG.C_ADV_TRIGGER {true} \
   CONFIG.C_BRAM_CNT {13} \
   CONFIG.C_DATA_DEPTH {2048} \
   CONFIG.C_EN_STRG_QUAL {1} \
   CONFIG.C_NUM_MONITOR_SLOTS {3} \
   CONFIG.C_PROBE0_MU_CNT {4} \
   CONFIG.C_SLOT {0} \
   CONFIG.C_SLOT_1_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
   CONFIG.C_SLOT_2_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
 ] $system_ila_0

  # Create instance: vgaSync_0, and set properties
  set block_name vgaSync
  set block_cell_name vgaSync_0
  if { [catch {set vgaSync_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $vgaSync_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI [get_bd_intf_pins axi_dma_0/M_AXI] [get_bd_intf_pins axi_smc/S02_AXI]
connect_bd_intf_net -intf_net [get_bd_intf_nets axi_dma_0_M_AXI] [get_bd_intf_pins axi_dma_0/M_AXI] [get_bd_intf_pins system_ila_0/SLOT_0_AXI]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXIS_MM2S [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S] [get_bd_intf_pins fifo_generator_0/S_AXIS]
connect_bd_intf_net -intf_net [get_bd_intf_nets axi_dma_0_M_AXIS_MM2S] [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S] [get_bd_intf_pins system_ila_0/SLOT_1_AXIS]
  connect_bd_intf_net -intf_net axi_smc_M00_AXI [get_bd_intf_pins axi_smc/M00_AXI] [get_bd_intf_pins mig_7series_0/S_AXI]
  connect_bd_intf_net -intf_net axi_uartlite_0_UART [get_bd_intf_ports UART] [get_bd_intf_pins axi_uartlite_0/UART]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_DC [get_bd_intf_pins axi_smc/S00_AXI] [get_bd_intf_pins microblaze_0/M_AXI_DC]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_DP [get_bd_intf_pins microblaze_0/M_AXI_DP] [get_bd_intf_pins microblaze_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_IC [get_bd_intf_pins axi_smc/S01_AXI] [get_bd_intf_pins microblaze_0/M_AXI_IC]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M00_AXI [get_bd_intf_pins axi_uartlite_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M01_AXI [get_bd_intf_pins axi_dma_0/S_AXI_LITE] [get_bd_intf_pins microblaze_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net microblaze_0_debug [get_bd_intf_pins mdm_1/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net mig_7series_0_DDR3 [get_bd_intf_ports DDR3_0] [get_bd_intf_pins mig_7series_0/DDR3]

  # Create port connections
  connect_bd_net -net fifo_generator_0_m_axis_tdata [get_bd_pins fifo_generator_0/m_axis_tdata] [get_bd_pins vgaSync_0/wdata]
  connect_bd_net -net fifo_generator_0_m_axis_tlast [get_bd_pins fifo_generator_0/m_axis_tlast] [get_bd_pins vgaSync_0/wlast]
  connect_bd_net -net fifo_generator_0_m_axis_tvalid [get_bd_pins fifo_generator_0/m_axis_tvalid] [get_bd_pins vgaSync_0/wvalid]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins rst_mig_7series_0_100M/mb_debug_sys_rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins axi_dma_0/m_axi_mm2s_aclk] [get_bd_pins axi_dma_0/m_axi_s2mm_aclk] [get_bd_pins axi_dma_0/s_axi_lite_aclk] [get_bd_pins axi_smc/aclk] [get_bd_pins axi_uartlite_0/s_axi_aclk] [get_bd_pins fifo_generator_0/s_aclk] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_periph/ACLK] [get_bd_pins microblaze_0_axi_periph/M00_ACLK] [get_bd_pins microblaze_0_axi_periph/M01_ACLK] [get_bd_pins microblaze_0_axi_periph/S00_ACLK] [get_bd_pins microblaze_0_local_memory/LMB_Clk] [get_bd_pins mig_7series_0/ui_clk] [get_bd_pins rst_mig_7series_0_100M/slowest_sync_clk] [get_bd_pins system_ila_0/clk] [get_bd_pins vgaSync_0/clk]
  connect_bd_net -net mig_7series_0_mmcm_locked [get_bd_pins mig_7series_0/mmcm_locked] [get_bd_pins rst_mig_7series_0_100M/dcm_locked]
  connect_bd_net -net mig_7series_0_ui_addn_clk_0 [get_bd_pins mig_7series_0/clk_ref_i] [get_bd_pins mig_7series_0/ui_addn_clk_0]
  connect_bd_net -net mig_7series_0_ui_clk_sync_rst [get_bd_pins mig_7series_0/ui_clk_sync_rst] [get_bd_pins rst_mig_7series_0_100M/ext_reset_in]
  connect_bd_net -net rst_mig_7series_0_100M_bus_struct_reset [get_bd_pins microblaze_0_local_memory/SYS_Rst] [get_bd_pins rst_mig_7series_0_100M/bus_struct_reset]
  connect_bd_net -net rst_mig_7series_0_100M_interconnect_aresetn [get_bd_pins microblaze_0_axi_periph/ARESETN] [get_bd_pins rst_mig_7series_0_100M/interconnect_aresetn]
  connect_bd_net -net rst_mig_7series_0_100M_mb_reset [get_bd_pins microblaze_0/Reset] [get_bd_pins rst_mig_7series_0_100M/mb_reset]
  connect_bd_net -net rst_mig_7series_0_100M_peripheral_aresetn [get_bd_pins axi_dma_0/axi_resetn] [get_bd_pins axi_smc/aresetn] [get_bd_pins axi_uartlite_0/s_axi_aresetn] [get_bd_pins fifo_generator_0/s_aresetn] [get_bd_pins microblaze_0_axi_periph/M00_ARESETN] [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] [get_bd_pins microblaze_0_axi_periph/S00_ARESETN] [get_bd_pins mig_7series_0/aresetn] [get_bd_pins rst_mig_7series_0_100M/peripheral_aresetn] [get_bd_pins system_ila_0/resetn] [get_bd_pins vgaSync_0/rst]
  connect_bd_net -net sys_clk_i_0_1 [get_bd_ports clk100M_in] [get_bd_pins mig_7series_0/sys_clk_i]
  connect_bd_net -net sys_rst_0_1 [get_bd_ports rst_in] [get_bd_pins mig_7series_0/sys_rst]
  connect_bd_net -net vgaSync_0_bout [get_bd_ports bout] [get_bd_pins vgaSync_0/bout]
  connect_bd_net -net vgaSync_0_gout [get_bd_ports gout] [get_bd_pins vgaSync_0/gout]
  connect_bd_net -net vgaSync_0_hs [get_bd_ports hs] [get_bd_pins vgaSync_0/hs]
  connect_bd_net -net vgaSync_0_rout [get_bd_ports rout] [get_bd_pins vgaSync_0/rout]
  connect_bd_net -net vgaSync_0_vs [get_bd_ports vs] [get_bd_pins vgaSync_0/vs]
  connect_bd_net -net vgaSync_0_wready [get_bd_pins fifo_generator_0/m_axis_tready] [get_bd_pins vgaSync_0/wready]

  # Create address segments
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces axi_dma_0/Data] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x00010000 -offset 0x41000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_dma_0/S_AXI_LITE/Reg] SEG_axi_dma_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] SEG_axi_uartlite_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00010000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


