#..............................................................................#
#                           SPI Module Slot SLOTNUM                            #
#..............................................................................#
#Common Constraints for SPI Modules. FUNC is used as part of SPI so we
#constraint it with the SPI lines. These constraints assume that
#either CrioCommInt or CrioStock are used.

#The common Constraints assume that the module uses SPI as its main
#communication protocol, where SpiClk, Func, Conv_n, MOSI and Cs_n are dedicated
#to SPI output, MISO is dedicated to SPI Input, Done, Trig and OClk are only
#used for asynchronous Input or Output.

#First let's get the Top Level Clock, we can get it from the SpiClk since
#we know that it's driven by it
set CrioTopLevelClkSLOTNUM [get_clocks -of_objects [all_fanin -flat \
                                                      -startpoints_only  \
                                                      [get_ports CRIOPIN_SpiClk]]]

#Get the Clock Period for both the top level Clk and the 40 MHz Clock
set CrioClk40PeriodSLOTNUM [get_property period [get_clocks Clk40]]
set CrioClkPeriodSLOTNUM   [get_property period $CrioTopLevelClkSLOTNUM]

#Get the Clk Multiplier
set CrioSpiClkMultiplierSLOTNUM CLKMULTIPLIER

#Specify constants
set CrioSkewSLOTNUM       CONST_SKEW_SPI
set CrioAsyncHoldSLOTNUM  CONST_TH_ASYNC
set CrioAsyncSetupSLOTNUM CONST_TSU_ASYNC
set CrioAsyncTcoSLOTNUM   CONST_TCO_ASYNC

#FpgaCapability_Remove_CrioIroncladCarrier
#Specific Constants for non-Ironclad Targets
set CrioSpiTcoSLOTNUM     CONST_TCO_SPI
set CrioSpiSetupSLOTNUM   CONST_TSU_SPI
set CrioSpiHoldSLOTNUM    CONST_TH_SPI
set CrioSpiClkOutDelaySLOTNUM     [expr $CrioClkPeriodSLOTNUM - $CrioSpiTcoSLOTNUM]
set CrioSpiMaxInputDelaySLOTNUM   [expr $CrioClkPeriodSLOTNUM - $CrioSpiSetupSLOTNUM]
#FpgaCapability_EndRemove_CrioIroncladCarrier

#FpgaCapability_Keep_CrioIroncladCarrier
#Specific Constants for Ironclad Targets
set CrioSpiRoundtripMaxSLOTNUM CONST_ROUNDTRIP_MAX_SPI
set CrioSpiRoundtripMinSLOTNUM CONST_ROUNDTRIP_MIN_SPI

#FpgaCapability_EndKeep_CrioIroncladCarrier

#Transform the numbers given by RIO into the XDC constraints
set CrioAsyncOutputDelaySLOTNUM   [expr $CrioClkPeriodSLOTNUM - $CrioAsyncTcoSLOTNUM]
set CrioAsyncMaxInputDelaySLOTNUM [expr $CrioClkPeriodSLOTNUM - $CrioAsyncSetupSLOTNUM]

#Group pins
#   -SpiPins: MOSI, CS_n, Func, Conv_n
#   -AsyncPins: Id_Sel, Done, Trig, Oclk (Spi Pins also go on the async groups
#               in order to constraint their enable path)
set CrioSpiPinsSLOTNUM [get_ports {CRIOPIN_Mosi CRIOPIN_Cs_n CRIOPIN_Conv_n CRIOPIN_Func}]
set CrioAsyncInputPinsSLOTNUM [get_ports {CRIOPIN_IdSel CRIOPIN_Done_n CRIOPIN_Trig CRIOPIN_OClk}]
set CrioAsyncOutputPinsSLOTNUM [get_ports {CRIOPIN_IdSel CRIOPIN_Trig CRIOPIN_Done_n CRIOPIN_OClk CRIOPIN_Mosi CRIOPIN_Cs_n CRIOPIN_Conv_n CRIOPIN_Func CRIOPIN_SpiClk}]

#SPI Timing:
#Create the skew constraints for the SPI output lines, Since the Hold and Setup
#are half a tau (1 Clk40 each), The Multi Cycle Path Constraint will be with
#respect to the Top Level Clock: The Setup path will be the number of Top
#Level ticks from the launch edge to the Latch Edge (Which happens to be the
#same as the Clk Multiplier). The edge for the Hold analysis will change to 1
#Top Level Tick before the Latch edge, We need to move it back to the next
#launch edge (Which is the ClkMultiplier + 1 ticks)
#Clk40  _/¯¯¯¯¯¯¯\_______/¯¯¯¯¯¯¯\_______/¯¯¯¯¯¯¯\_______/¯¯¯¯¯¯¯\_______/¯¯¯
#SpiClk _/¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\_______________/¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\_______________/¯¯¯
#Data    ============XXXXXXXXX=======================XXXXXXXXX=================
#        |               ^               ^           |<-Skew>|
#        |      BP Launch|               |           |<--|-->|-MaxOutDel->|
#        |               |   Module Latch|    Min Out Del
#        |<----Hold------|-----Setup---->|

#............................#
#        OUTPUT PINS         #
#............................#
#Get all the SPI Pins Drivers, we are assuming that
set CrioAllSpiPinsDriversSLOTNUM [all_fanin -only_cells -flat -startpoints_only $CrioSpiPinsSLOTNUM]

set CrioSpiOutDriversSLOTNUM [filter -regexp -nocase $CrioAllSpiPinsDriversSLOTNUM {(NAME !~ ".*Crio9..._?ResourceSLOTNUM.*(CrioStock|CrioCommInt).*" ||
                                NAME =~ ".*Crio9..._?ResourceSLOTNUM.*cRioStock.*SpiEngine\/cOutShiftReg_reg.7.*" ||
                                NAME =~ ".*Crio9..._?ResourceSLOTNUM.*cRioStock.*SpiEngine\/cCs_n_reg" ||
                                NAME =~ ".*Crio9..._?ResourceSLOTNUM.*cRioStock.*ModeSelector\/cFuncOut_reg" ||
                                NAME =~ ".*Crio9..._?ResourceSLOTNUM.*cRioStock.*cRioStockModeTransx\/cSpiFuncInt_reg" ||
                                NAME =~ ".*Crio9..._?ResourceSLOTNUM.*CrioCommInt.*CrioCiSpiEngine.*SpiEnabled.CcSpiLogic.*oMosi_reg" ||
                                NAME =~ ".*Crio9..._?ResourceSLOTNUM.*CrioCommInt.*CrioCiSpiEngine.*SpiEnabled.CcSpiLogic.*oCartSelectInt_n_reg" ||
                                NAME =~ ".*Crio9..._?ResourceSLOTNUM.*CrioCommInt.*CrioCiModeSelectorx\/CrioCiPinConfigx\/cPinConfConstOutInt_reg.4.*"
                             )}]
set CrioNonSpiOutDriversSLOTNUM [filter -regexp -nocase $CrioAllSpiPinsDriversSLOTNUM {(NAME =~ ".*Crio9..._?ResourceSLOTNUM.*(CrioStock|CommInt).*" &&
                                  NAME !~ ".*Crio9..._?ResourceSLOTNUM.*cRioStock.*SpiEngine\/cOutShiftReg_reg.7.*" &&
                                  NAME !~ ".*Crio9..._?ResourceSLOTNUM.*cRioStock.*SpiEngine\/cCs_n_reg" &&
                                  NAME !~ ".*Crio9..._?ResourceSLOTNUM.*cRioStock.*ModeSelector\/cFuncOut_reg" &&
                                  NAME !~ ".*Crio9..._?ResourceSLOTNUM.*cRioStock.*cRioStockModeTransx\/cSpiFuncInt_reg" &&
                                  NAME !~ ".*Crio9..._?ResourceSLOTNUM.*CrioCommInt.*CrioCiSpiEngine.*SpiEnabled.CcSpiLogic.*oMosi_reg" &&
                                  NAME !~ ".*Crio9..._?ResourceSLOTNUM.*CrioCommInt.*CrioCiSpiEngine.*SpiEnabled.CcSpiLogic.*oCartSelectInt_n_reg" &&
                                  NAME !~ ".*Crio9..._?ResourceSLOTNUM.*CrioCommInt.*CrioCiModeSelectorx\/CrioCiPinConfigx\/cPinConfConstOutInt_reg.4.*"
                                )}]

set CrioSpiClkDriversSLOTNUM [filter -regexp -nocase [all_registers] {(
                                NAME =~ ".*Crio9..._?ResourceSLOTNUM.*cRioStock.*SpiEngine\/cSpiClk_reg" ||
                                NAME =~ ".*Crio9..._?ResourceSLOTNUM.*CrioCommInt.*CrioCiSpiEnginex\/SpiEnabled.CcSpiLogicx\/oSpiClkInt_reg"
                             )}]
set CrioNonSpiClkDriversSLOTNUM [filter -regexp -nocase [all_registers] {( NAME =~ ".*Crio9..._?ResourceSLOTNUM.*" &&
                                  NAME !~ ".*Crio9..._?ResourceSLOTNUM.*cRioStock.*SpiEngine\/cSpiClk_reg" &&
                                  NAME !~ ".*Crio9..._?ResourceSLOTNUM.*CrioCommInt.*CrioCiSpiEnginex\/SpiEnabled.CcSpiLogicx\/oSpiClkInt_reg"
                                )}]
#Create a loose Output constraint for the Asynchronous output
set_output_delay -clock $CrioTopLevelClkSLOTNUM \
                 -max $CrioAsyncOutputDelaySLOTNUM \
                 $CrioAsyncOutputPinsSLOTNUM

set_output_delay -clock $CrioTopLevelClkSLOTNUM \
                 -min 0 \
                 $CrioAsyncOutputPinsSLOTNUM

#Set SpiClk as a generated clock and its output delay

#FpgaCapability_Remove_CrioIroncladCarrier
#Constraint SPI Clock Output flop for non-Ironclad targets instead of roundtrip
create_clock -name CrioSpiClkVclkSLOTNUM -period $CrioClkPeriodSLOTNUM
set_output_delay -clock [get_clocks CrioSpiClkVclkSLOTNUM] \
                 -max $CrioSpiClkOutDelaySLOTNUM \
                 [get_ports CRIOPIN_SpiClk] \
                 -add_delay

set_false_path -from $CrioNonSpiClkDriversSLOTNUM -to [get_clocks CrioSpiClkVclkSLOTNUM]
set_false_path -from $CrioSpiClkDriversSLOTNUM -to [get_clocks -filter {NAME!=CrioSpiClkVclkSLOTNUM}]
#FpgaCapability_EndRemove_CrioIroncladCarrier

#Set SpiClk as a generated clock
create_generated_clock -name CrioSpiClkSLOTNUM \
                       -divide_by [expr 2 * $CrioSpiClkMultiplierSLOTNUM] \
                       -source [get_pins -of_objects $CrioSpiClkDriversSLOTNUM -filter {DIRECTION == OUT}] \
                       [get_ports CRIOPIN_SpiClk]

set_multicycle_path -from $CrioSpiOutDriversSLOTNUM \
                    -to $CrioSpiPinsSLOTNUM \
                    -start -setup \
                    $CrioSpiClkMultiplierSLOTNUM

set_multicycle_path -from $CrioSpiOutDriversSLOTNUM \
                    -to $CrioSpiPinsSLOTNUM \
                    -start -hold \
                    [expr $CrioSpiClkMultiplierSLOTNUM - 1]

#Define the After Skew in terms of the generated Clock, both the After and
#Before Skew are given by the Skew number obtained from RIO's spreadsheet
set CrioAfeSkewSLOTNUM $CrioSkewSLOTNUM
set CrioBfeSkewSLOTNUM $CrioSkewSLOTNUM
set CrioSkewMaxOutDelSLOTNUM [expr $CrioClk40PeriodSLOTNUM - $CrioAfeSkewSLOTNUM]

#Create the skew constraints for the SPI output lines
set_output_delay -clock CrioSpiClkSLOTNUM \
                 -max $CrioSkewMaxOutDelSLOTNUM \
                 $CrioSpiPinsSLOTNUM \
                 -add_delay

set_output_delay -clock CrioSpiClkSLOTNUM \
                 -min $CrioBfeSkewSLOTNUM \
                 $CrioSpiPinsSLOTNUM \
                 -add_delay

#Disable the SPI analysis on anything that is not an SPI driver and also disable
#the analysis on any other clock between the Spi Out drivers
set_false_path -from $CrioNonSpiOutDriversSLOTNUM -to [get_clocks CrioSpiClkSLOTNUM]
set_false_path -from $CrioSpiOutDriversSLOTNUM -to [get_clocks -filter {NAME != CrioSpiClkSLOTNUM}]

#For SpiClk, also remove the analysis on itself
set_false_path -from [get_ports CRIOPIN_SpiClk] -to [get_ports CRIOPIN_SpiClk]

#............................#
#         INPUT PINS         #
#............................#
#Set the Input delay Constraint for MISO

#FpgaCapability_Keep_CrioIroncladCarrier
#Generally we are ok with simply constraining the Clock-to-out of the SPI Clk
#and the Setup and hold of the MISO line. For Ironclad Targets this isn't enough
#since the Ironclad introduces a lot of delay that won't be resolved by the
#previous system, enter Roundtrip constraints where we say that the MISO line is
#clocked by the Spi Clock generated clock that was previously created
set_input_delay -clock CrioSpiClkSLOTNUM -clock_fall \
                -min $CrioSpiRoundtripMinSLOTNUM \
                [get_ports CRIOPIN_Miso]

set_input_delay -clock CrioSpiClkSLOTNUM -clock_fall \
                -max $CrioSpiRoundtripMaxSLOTNUM \
                [get_ports CRIOPIN_Miso]

#MISO should be dedicated so there is no need to put a flop as an end point of
#the multi cycle path. The latch edge will be 2 clk40 cycles after the launching
#relative to the clk40 (end clock), and the hold point will be the launching
#edge so we have to return it there
set_multicycle_path -from [get_ports CRIOPIN_Miso] \
                    -end -setup \
                    [expr $CrioSpiClkMultiplierSLOTNUM * 2]

set_multicycle_path -from [get_ports CRIOPIN_Miso] \
                    -end -hold \
                    [expr ($CrioSpiClkMultiplierSLOTNUM * 2) - 1]
                    
#Finally remove the analysis from the SpiClk Flop so the tools can deal with the 
#delay on the round trip.
set_false_path -from $CrioSpiClkDriversSLOTNUM -to [get_ports CRIOPIN_SpiClk]
#FpgaCapability_EndKeep_CrioIroncladCarrier


#FpgaCapability_Remove_CrioIroncladCarrier
#For non-Iroclad targets, constraint MISO with respect to the Clock using the
#Setup and Hold numbers
set_input_delay -clock $CrioTopLevelClkSLOTNUM \
                -max $CrioSpiMaxInputDelaySLOTNUM \
                [get_ports CRIOPIN_Miso]

set_input_delay -clock $CrioTopLevelClkSLOTNUM \
                -min $CrioSpiHoldSLOTNUM \
                [get_ports CRIOPIN_Miso]
#FpgaCapability_EndRemove_CrioIroncladCarrier

#Set loose constraints for the rest of CRIO Bus Inputs:
set_input_delay -clock $CrioTopLevelClkSLOTNUM \
                -max $CrioAsyncMaxInputDelaySLOTNUM \
                $CrioAsyncInputPinsSLOTNUM

set_input_delay -clock $CrioTopLevelClkSLOTNUM \
                -min $CrioAsyncHoldSLOTNUM \
                $CrioAsyncInputPinsSLOTNUM
