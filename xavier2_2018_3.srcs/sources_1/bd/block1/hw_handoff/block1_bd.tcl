
################################################################
# This is a generated script based on design: block1
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
set scripts_vivado_version 2018.3
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
# source block1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# ADC, Blink, Counter, Counter, Counter, Counter, FX3, FrameCounter, VapBuffer

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-2
   set_property BOARD_PART trenz.biz:te0725_100_2c:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name block1

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
# DESIGN PROCs
##################################################################



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

  # Create ports
  set ADCb [ create_bd_port -dir I -from 13 -to 0 ADCb ]
  set FPGA_CLK [ create_bd_port -dir I -type clk FPGA_CLK ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {20000000} \
 ] $FPGA_CLK
  set FRAME [ create_bd_port -dir O FRAME ]
  set FX3_CLK [ create_bd_port -dir O FX3_CLK ]
  set FX3b [ create_bd_port -dir O -from 31 -to 0 FX3b ]
  set LED [ create_bd_port -dir O LED ]
  set NIRS_ADC_CLKA [ create_bd_port -dir O NIRS_ADC_CLKA ]
  set NIRS_ADC_CLKB [ create_bd_port -dir O NIRS_ADC_CLKB ]
  set NIRS_ADC_MUX [ create_bd_port -dir O NIRS_ADC_MUX ]
  set NIRS_MUX_SELA [ create_bd_port -dir O NIRS_MUX_SELA ]
  set NIRS_MUX_SELB [ create_bd_port -dir O NIRS_MUX_SELB ]
  set RUN [ create_bd_port -dir I RUN ]
  set SPAD1b [ create_bd_port -dir I -from 3 -to 0 SPAD1b ]
  set VAP [ create_bd_port -dir I -from 3 -to 0 VAP ]
  set nRESET [ create_bd_port -dir I -type rst nRESET ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $nRESET

  # Create instance: ADC_0, and set properties
  set block_name ADC
  set block_cell_name ADC_0
  if { [catch {set ADC_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ADC_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Blink_0, and set properties
  set block_name Blink
  set block_cell_name Blink_0
  if { [catch {set Blink_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Blink_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Counter_0, and set properties
  set block_name Counter
  set block_cell_name Counter_0
  if { [catch {set Counter_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Counter_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Counter_1, and set properties
  set block_name Counter
  set block_cell_name Counter_1
  if { [catch {set Counter_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Counter_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Counter_2, and set properties
  set block_name Counter
  set block_cell_name Counter_2
  if { [catch {set Counter_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Counter_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Counter_3, and set properties
  set block_name Counter
  set block_cell_name Counter_3
  if { [catch {set Counter_3 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Counter_3 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: FX3_0, and set properties
  set block_name FX3
  set block_cell_name FX3_0
  if { [catch {set FX3_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $FX3_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: FrameCounter_0, and set properties
  set block_name FrameCounter
  set block_cell_name FrameCounter_0
  if { [catch {set FrameCounter_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $FrameCounter_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: VapBuffer_0, and set properties
  set block_name VapBuffer
  set block_cell_name VapBuffer_0
  if { [catch {set VapBuffer_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $VapBuffer_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {500.0} \
   CONFIG.CLKOUT1_DRIVES {BUFGCE} \
   CONFIG.CLKOUT1_JITTER {621.795} \
   CONFIG.CLKOUT1_PHASE_ERROR {346.848} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {20.000} \
   CONFIG.CLKOUT2_DRIVES {BUFGCE} \
   CONFIG.CLKOUT2_JITTER {820.791} \
   CONFIG.CLKOUT2_PHASE_ERROR {346.848} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {5.000} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {BUFGCE} \
   CONFIG.CLKOUT3_JITTER {820.791} \
   CONFIG.CLKOUT3_PHASE_ERROR {346.848} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {5.000} \
   CONFIG.CLKOUT3_REQUESTED_PHASE {90} \
   CONFIG.CLKOUT3_USED {false} \
   CONFIG.CLKOUT4_DRIVES {BUFGCE} \
   CONFIG.CLKOUT5_DRIVES {BUFGCE} \
   CONFIG.CLKOUT6_DRIVES {BUFGCE} \
   CONFIG.CLKOUT7_DRIVES {BUFGCE} \
   CONFIG.CLK_OUT1_PORT {clk_20} \
   CONFIG.CLK_OUT2_PORT {clk_5} \
   CONFIG.CLK_OUT3_PORT {clk_5N} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {32.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {50.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {32.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {128} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {1} \
   CONFIG.MMCM_CLKOUT2_PHASE {90.000} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.PRIMITIVE {MMCM} \
   CONFIG.PRIM_IN_FREQ {20.000} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_RESET {false} \
   CONFIG.USE_SAFE_CLOCK_STARTUP {true} \
 ] $clk_wiz_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {3} \
   CONFIG.IN1_WIDTH {3} \
   CONFIG.IN2_WIDTH {3} \
   CONFIG.IN3_WIDTH {3} \
   CONFIG.NUM_PORTS {4} \
 ] $xlconcat_0

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {4} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {4} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_1

  # Create instance: xlslice_2, and set properties
  set xlslice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {2} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {4} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_2

  # Create instance: xlslice_3, and set properties
  set xlslice_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_3 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {3} \
   CONFIG.DIN_WIDTH {4} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_3

  # Create port connections
  connect_bd_net -net ADC_0_ADC_DATA [get_bd_pins ADC_0/ADC_DATA] [get_bd_pins FX3_0/ADC]
  connect_bd_net -net ADC_0_CLKA [get_bd_ports NIRS_ADC_CLKA] [get_bd_pins ADC_0/CLKA]
  connect_bd_net -net ADC_0_CLKB [get_bd_ports NIRS_ADC_CLKB] [get_bd_pins ADC_0/CLKB]
  connect_bd_net -net ADC_0_MUX [get_bd_ports NIRS_ADC_MUX] [get_bd_pins ADC_0/MUX]
  connect_bd_net -net ADC_0_SELA [get_bd_ports NIRS_MUX_SELA] [get_bd_pins ADC_0/SELA]
  connect_bd_net -net ADC_0_SELB [get_bd_ports NIRS_MUX_SELB] [get_bd_pins ADC_0/SELB]
  connect_bd_net -net ADCb_1 [get_bd_ports ADCb] [get_bd_pins ADC_0/ADCb]
  connect_bd_net -net Blink_0_ledOut [get_bd_ports LED] [get_bd_pins Blink_0/ledOut]
  connect_bd_net -net Counter_0_data [get_bd_pins Counter_0/data] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net Counter_1_data [get_bd_pins Counter_1/data] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net Counter_2_data [get_bd_pins Counter_2/data] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net Counter_3_data [get_bd_pins Counter_3/data] [get_bd_pins xlconcat_0/In3]
  connect_bd_net -net FPGA_CLK_1 [get_bd_ports FPGA_CLK] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net FX3_0_FX3b [get_bd_ports FX3b] [get_bd_pins FX3_0/FX3b]
  connect_bd_net -net FX3_0_pclk [get_bd_ports FX3_CLK] [get_bd_pins FX3_0/pclk]
  connect_bd_net -net FrameCounter_0_pulse [get_bd_ports FRAME] [get_bd_pins FrameCounter_0/pulse]
  connect_bd_net -net RUN_1 [get_bd_ports RUN] [get_bd_pins ADC_0/run] [get_bd_pins Counter_0/run] [get_bd_pins Counter_1/run] [get_bd_pins Counter_2/run] [get_bd_pins Counter_3/run] [get_bd_pins FX3_0/run] [get_bd_pins FrameCounter_0/run]
  connect_bd_net -net SPAD1b_1 [get_bd_ports SPAD1b] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_1/Din] [get_bd_pins xlslice_2/Din] [get_bd_pins xlslice_3/Din]
  connect_bd_net -net VAP_1 [get_bd_ports VAP] [get_bd_pins VapBuffer_0/VAPin]
  connect_bd_net -net VapBuffer_0_VAPout [get_bd_pins FX3_0/VAP] [get_bd_pins VapBuffer_0/VAPout]
  connect_bd_net -net clk_wiz_0_clk_5 [get_bd_pins ADC_0/SAMPLE_CLKA] [get_bd_pins Counter_0/clk] [get_bd_pins Counter_1/clk] [get_bd_pins Counter_2/clk] [get_bd_pins Counter_3/clk] [get_bd_pins FX3_0/sysclk] [get_bd_pins FrameCounter_0/clkIn] [get_bd_pins VapBuffer_0/clk] [get_bd_pins clk_wiz_0/clk_5]
  connect_bd_net -net clk_wiz_0_clk_20 [get_bd_pins ADC_0/ADC_CLK] [get_bd_pins Blink_0/clk] [get_bd_pins clk_wiz_0/clk_20]
  connect_bd_net -net nRESET_1 [get_bd_ports nRESET] [get_bd_pins ADC_0/reset] [get_bd_pins Counter_0/reset] [get_bd_pins Counter_1/reset] [get_bd_pins Counter_2/reset] [get_bd_pins Counter_3/reset] [get_bd_pins FX3_0/reset] [get_bd_pins FrameCounter_0/reset] [get_bd_pins VapBuffer_0/reset]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins FX3_0/SPAD] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins Counter_0/pulse] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins Counter_1/pulse] [get_bd_pins xlslice_1/Dout]
  connect_bd_net -net xlslice_2_Dout [get_bd_pins Counter_2/pulse] [get_bd_pins xlslice_2/Dout]
  connect_bd_net -net xlslice_3_Dout [get_bd_pins Counter_3/pulse] [get_bd_pins xlslice_3/Dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


