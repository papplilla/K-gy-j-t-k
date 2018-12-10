# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "inSync" -parent ${Page_0}
  ipgui::add_param $IPINST -name "waitForData" -parent ${Page_0}
  ipgui::add_param $IPINST -name "waitForTlast" -parent ${Page_0}


}

proc update_PARAM_VALUE.inSync { PARAM_VALUE.inSync } {
	# Procedure called to update inSync when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.inSync { PARAM_VALUE.inSync } {
	# Procedure called to validate inSync
	return true
}

proc update_PARAM_VALUE.waitForData { PARAM_VALUE.waitForData } {
	# Procedure called to update waitForData when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.waitForData { PARAM_VALUE.waitForData } {
	# Procedure called to validate waitForData
	return true
}

proc update_PARAM_VALUE.waitForTlast { PARAM_VALUE.waitForTlast } {
	# Procedure called to update waitForTlast when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.waitForTlast { PARAM_VALUE.waitForTlast } {
	# Procedure called to validate waitForTlast
	return true
}


proc update_MODELPARAM_VALUE.waitForTlast { MODELPARAM_VALUE.waitForTlast PARAM_VALUE.waitForTlast } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.waitForTlast}] ${MODELPARAM_VALUE.waitForTlast}
}

proc update_MODELPARAM_VALUE.waitForData { MODELPARAM_VALUE.waitForData PARAM_VALUE.waitForData } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.waitForData}] ${MODELPARAM_VALUE.waitForData}
}

proc update_MODELPARAM_VALUE.inSync { MODELPARAM_VALUE.inSync PARAM_VALUE.inSync } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.inSync}] ${MODELPARAM_VALUE.inSync}
}

