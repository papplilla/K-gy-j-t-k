# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "hactive" -parent ${Page_0}
  ipgui::add_param $IPINST -name "hbackporch" -parent ${Page_0}
  ipgui::add_param $IPINST -name "hfrontporch" -parent ${Page_0}
  ipgui::add_param $IPINST -name "hsyncpolarity" -parent ${Page_0}
  ipgui::add_param $IPINST -name "hsyncpulse" -parent ${Page_0}
  ipgui::add_param $IPINST -name "htotal" -parent ${Page_0}
  ipgui::add_param $IPINST -name "vactive" -parent ${Page_0}
  ipgui::add_param $IPINST -name "vbackporch" -parent ${Page_0}
  ipgui::add_param $IPINST -name "vfrontporch" -parent ${Page_0}
  ipgui::add_param $IPINST -name "vga_write_pixels" -parent ${Page_0}
  ipgui::add_param $IPINST -name "vsyncpolarity" -parent ${Page_0}
  ipgui::add_param $IPINST -name "vsyncpulse" -parent ${Page_0}
  ipgui::add_param $IPINST -name "vtotal" -parent ${Page_0}
  ipgui::add_param $IPINST -name "wait_for_origo" -parent ${Page_0}
  ipgui::add_param $IPINST -name "wait_for_wlast" -parent ${Page_0}


}

proc update_PARAM_VALUE.hactive { PARAM_VALUE.hactive } {
	# Procedure called to update hactive when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.hactive { PARAM_VALUE.hactive } {
	# Procedure called to validate hactive
	return true
}

proc update_PARAM_VALUE.hbackporch { PARAM_VALUE.hbackporch } {
	# Procedure called to update hbackporch when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.hbackporch { PARAM_VALUE.hbackporch } {
	# Procedure called to validate hbackporch
	return true
}

proc update_PARAM_VALUE.hfrontporch { PARAM_VALUE.hfrontporch } {
	# Procedure called to update hfrontporch when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.hfrontporch { PARAM_VALUE.hfrontporch } {
	# Procedure called to validate hfrontporch
	return true
}

proc update_PARAM_VALUE.hsyncpolarity { PARAM_VALUE.hsyncpolarity } {
	# Procedure called to update hsyncpolarity when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.hsyncpolarity { PARAM_VALUE.hsyncpolarity } {
	# Procedure called to validate hsyncpolarity
	return true
}

proc update_PARAM_VALUE.hsyncpulse { PARAM_VALUE.hsyncpulse } {
	# Procedure called to update hsyncpulse when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.hsyncpulse { PARAM_VALUE.hsyncpulse } {
	# Procedure called to validate hsyncpulse
	return true
}

proc update_PARAM_VALUE.htotal { PARAM_VALUE.htotal } {
	# Procedure called to update htotal when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.htotal { PARAM_VALUE.htotal } {
	# Procedure called to validate htotal
	return true
}

proc update_PARAM_VALUE.vactive { PARAM_VALUE.vactive } {
	# Procedure called to update vactive when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.vactive { PARAM_VALUE.vactive } {
	# Procedure called to validate vactive
	return true
}

proc update_PARAM_VALUE.vbackporch { PARAM_VALUE.vbackporch } {
	# Procedure called to update vbackporch when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.vbackporch { PARAM_VALUE.vbackporch } {
	# Procedure called to validate vbackporch
	return true
}

proc update_PARAM_VALUE.vfrontporch { PARAM_VALUE.vfrontporch } {
	# Procedure called to update vfrontporch when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.vfrontporch { PARAM_VALUE.vfrontporch } {
	# Procedure called to validate vfrontporch
	return true
}

proc update_PARAM_VALUE.vga_write_pixels { PARAM_VALUE.vga_write_pixels } {
	# Procedure called to update vga_write_pixels when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.vga_write_pixels { PARAM_VALUE.vga_write_pixels } {
	# Procedure called to validate vga_write_pixels
	return true
}

proc update_PARAM_VALUE.vsyncpolarity { PARAM_VALUE.vsyncpolarity } {
	# Procedure called to update vsyncpolarity when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.vsyncpolarity { PARAM_VALUE.vsyncpolarity } {
	# Procedure called to validate vsyncpolarity
	return true
}

proc update_PARAM_VALUE.vsyncpulse { PARAM_VALUE.vsyncpulse } {
	# Procedure called to update vsyncpulse when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.vsyncpulse { PARAM_VALUE.vsyncpulse } {
	# Procedure called to validate vsyncpulse
	return true
}

proc update_PARAM_VALUE.vtotal { PARAM_VALUE.vtotal } {
	# Procedure called to update vtotal when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.vtotal { PARAM_VALUE.vtotal } {
	# Procedure called to validate vtotal
	return true
}

proc update_PARAM_VALUE.wait_for_origo { PARAM_VALUE.wait_for_origo } {
	# Procedure called to update wait_for_origo when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.wait_for_origo { PARAM_VALUE.wait_for_origo } {
	# Procedure called to validate wait_for_origo
	return true
}

proc update_PARAM_VALUE.wait_for_wlast { PARAM_VALUE.wait_for_wlast } {
	# Procedure called to update wait_for_wlast when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.wait_for_wlast { PARAM_VALUE.wait_for_wlast } {
	# Procedure called to validate wait_for_wlast
	return true
}


proc update_MODELPARAM_VALUE.htotal { MODELPARAM_VALUE.htotal PARAM_VALUE.htotal } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.htotal}] ${MODELPARAM_VALUE.htotal}
}

proc update_MODELPARAM_VALUE.vtotal { MODELPARAM_VALUE.vtotal PARAM_VALUE.vtotal } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.vtotal}] ${MODELPARAM_VALUE.vtotal}
}

proc update_MODELPARAM_VALUE.hactive { MODELPARAM_VALUE.hactive PARAM_VALUE.hactive } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.hactive}] ${MODELPARAM_VALUE.hactive}
}

proc update_MODELPARAM_VALUE.vactive { MODELPARAM_VALUE.vactive PARAM_VALUE.vactive } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.vactive}] ${MODELPARAM_VALUE.vactive}
}

proc update_MODELPARAM_VALUE.hfrontporch { MODELPARAM_VALUE.hfrontporch PARAM_VALUE.hfrontporch } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.hfrontporch}] ${MODELPARAM_VALUE.hfrontporch}
}

proc update_MODELPARAM_VALUE.hsyncpulse { MODELPARAM_VALUE.hsyncpulse PARAM_VALUE.hsyncpulse } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.hsyncpulse}] ${MODELPARAM_VALUE.hsyncpulse}
}

proc update_MODELPARAM_VALUE.hbackporch { MODELPARAM_VALUE.hbackporch PARAM_VALUE.hbackporch } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.hbackporch}] ${MODELPARAM_VALUE.hbackporch}
}

proc update_MODELPARAM_VALUE.vfrontporch { MODELPARAM_VALUE.vfrontporch PARAM_VALUE.vfrontporch } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.vfrontporch}] ${MODELPARAM_VALUE.vfrontporch}
}

proc update_MODELPARAM_VALUE.vsyncpulse { MODELPARAM_VALUE.vsyncpulse PARAM_VALUE.vsyncpulse } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.vsyncpulse}] ${MODELPARAM_VALUE.vsyncpulse}
}

proc update_MODELPARAM_VALUE.vbackporch { MODELPARAM_VALUE.vbackporch PARAM_VALUE.vbackporch } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.vbackporch}] ${MODELPARAM_VALUE.vbackporch}
}

proc update_MODELPARAM_VALUE.hsyncpolarity { MODELPARAM_VALUE.hsyncpolarity PARAM_VALUE.hsyncpolarity } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.hsyncpolarity}] ${MODELPARAM_VALUE.hsyncpolarity}
}

proc update_MODELPARAM_VALUE.vsyncpolarity { MODELPARAM_VALUE.vsyncpolarity PARAM_VALUE.vsyncpolarity } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.vsyncpolarity}] ${MODELPARAM_VALUE.vsyncpolarity}
}

proc update_MODELPARAM_VALUE.wait_for_wlast { MODELPARAM_VALUE.wait_for_wlast PARAM_VALUE.wait_for_wlast } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.wait_for_wlast}] ${MODELPARAM_VALUE.wait_for_wlast}
}

proc update_MODELPARAM_VALUE.wait_for_origo { MODELPARAM_VALUE.wait_for_origo PARAM_VALUE.wait_for_origo } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.wait_for_origo}] ${MODELPARAM_VALUE.wait_for_origo}
}

proc update_MODELPARAM_VALUE.vga_write_pixels { MODELPARAM_VALUE.vga_write_pixels PARAM_VALUE.vga_write_pixels } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.vga_write_pixels}] ${MODELPARAM_VALUE.vga_write_pixels}
}

