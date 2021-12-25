# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BLOCKNUM" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BLOCKSIZE" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADDR { PARAM_VALUE.ADDR } {
	# Procedure called to update ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR { PARAM_VALUE.ADDR } {
	# Procedure called to validate ADDR
	return true
}

proc update_PARAM_VALUE.BITS { PARAM_VALUE.BITS } {
	# Procedure called to update BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BITS { PARAM_VALUE.BITS } {
	# Procedure called to validate BITS
	return true
}

proc update_PARAM_VALUE.BLOCKNUM { PARAM_VALUE.BLOCKNUM } {
	# Procedure called to update BLOCKNUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BLOCKNUM { PARAM_VALUE.BLOCKNUM } {
	# Procedure called to validate BLOCKNUM
	return true
}

proc update_PARAM_VALUE.BLOCKSIZE { PARAM_VALUE.BLOCKSIZE } {
	# Procedure called to update BLOCKSIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BLOCKSIZE { PARAM_VALUE.BLOCKSIZE } {
	# Procedure called to validate BLOCKSIZE
	return true
}


proc update_MODELPARAM_VALUE.BLOCKSIZE { MODELPARAM_VALUE.BLOCKSIZE PARAM_VALUE.BLOCKSIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BLOCKSIZE}] ${MODELPARAM_VALUE.BLOCKSIZE}
}

proc update_MODELPARAM_VALUE.BLOCKNUM { MODELPARAM_VALUE.BLOCKNUM PARAM_VALUE.BLOCKNUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BLOCKNUM}] ${MODELPARAM_VALUE.BLOCKNUM}
}

proc update_MODELPARAM_VALUE.BITS { MODELPARAM_VALUE.BITS PARAM_VALUE.BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BITS}] ${MODELPARAM_VALUE.BITS}
}

proc update_MODELPARAM_VALUE.ADDR { MODELPARAM_VALUE.ADDR PARAM_VALUE.ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR}] ${MODELPARAM_VALUE.ADDR}
}

