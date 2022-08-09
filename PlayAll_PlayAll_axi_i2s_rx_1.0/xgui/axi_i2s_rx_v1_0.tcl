# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "idle" -parent ${Page_0}
  ipgui::add_param $IPINST -name "invalid" -parent ${Page_0}
  ipgui::add_param $IPINST -name "valid" -parent ${Page_0}


}

proc update_PARAM_VALUE.idle { PARAM_VALUE.idle } {
	# Procedure called to update idle when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.idle { PARAM_VALUE.idle } {
	# Procedure called to validate idle
	return true
}

proc update_PARAM_VALUE.invalid { PARAM_VALUE.invalid } {
	# Procedure called to update invalid when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.invalid { PARAM_VALUE.invalid } {
	# Procedure called to validate invalid
	return true
}

proc update_PARAM_VALUE.valid { PARAM_VALUE.valid } {
	# Procedure called to update valid when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.valid { PARAM_VALUE.valid } {
	# Procedure called to validate valid
	return true
}


proc update_MODELPARAM_VALUE.idle { MODELPARAM_VALUE.idle PARAM_VALUE.idle } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.idle}] ${MODELPARAM_VALUE.idle}
}

proc update_MODELPARAM_VALUE.valid { MODELPARAM_VALUE.valid PARAM_VALUE.valid } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.valid}] ${MODELPARAM_VALUE.valid}
}

proc update_MODELPARAM_VALUE.invalid { MODELPARAM_VALUE.invalid PARAM_VALUE.invalid } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.invalid}] ${MODELPARAM_VALUE.invalid}
}

