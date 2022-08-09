## This file is a general pin assignment for the PlayAll board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project
## Author: Jialu
## Date: 27.07.22
## Version: 1.0
## Change & commit below:
##

##PmodA ACL

#set_property -dict { PACKAGE_PIN AA22  IOSTANDARD LVCMOS33 } [get_ports { JA[1] }]; #IO_L7P_T1_33;Sche = X4
#set_property -dict { PACKAGE_PIN AB22  IOSTANDARD LVCMOS33 } [get_ports { JA[2] }]; #IO_L7N_T1_33;Sche = X6
#set_property -dict { PACKAGE_PIN AA21  IOSTANDARD LVCMOS33 } [get_ports { JA[3] }]; #IO_L8P_T1_33;Sche = X8
#set_property -dict { PACKAGE_PIN AB21  IOSTANDARD LVCMOS33 } [get_ports { JA[4] }]; #IO_L8N_T1_33;Sche = X10
#set_property -dict { PACKAGE_PIN Y20   IOSTANDARD LVCMOS33 } [get_ports { JA[7] }]; #IO_L9P_T1_DQS_33;Sche = X12
#set_property -dict { PACKAGE_PIN Y21   IOSTANDARD LVCMOS33 } [get_ports { JA[8] }]; #IO_L9N_T1_DQS_33;Sche = X14
#set_property -dict { PACKAGE_PIN AB19  IOSTANDARD LVCMOS33 } [get_ports { JA[9] }]; #IO_L10P_T1_33;Sche = X16
#set_property -dict { PACKAGE_PIN AB20  IOSTANDARD LVCMOS33 } [get_ports { JA[10] }]; #IO_L10N_T1_33;Sche = X18

##PmodB Ethernet

#set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { JB[1] }]; #IO_L24N_T3_34;Sche = Y7
#set_property -dict { PACKAGE_PIN P16   IOSTANDARD LVCMOS33 } [get_ports { JB[2] }]; #IO_L24P_T3_34;Sche = Y9
#set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { JB[3] }]; #IO_L23N_T3_34;Sche = Y11
#set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { JB[4] }]; #IO_L23P_T3_34;Sche = Y13
#set_property -dict { PACKAGE_PIN T19   IOSTANDARD LVCMOS33 } [get_ports { JB[7] }]; #IO_L22N_T3_34;Sche = Y15
#set_property -dict { PACKAGE_PIN R19   IOSTANDARD LVCMOS33 } [get_ports { JB[8] }]; #IO_L22P_T3_34;Sche = Y17
#set_property -dict { PACKAGE_PIN T17   IOSTANDARD LVCMOS33 } [get_ports { JB[9] }]; #IO_L21N_T3_DQS_34;Sche = Y19
#set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { JB[10] }]; #IO_L21P_T3_DQS_34;Sche = Y21

##Buttons

set_property -dict { PACKAGE_PIN W15   IOSTANDARD LVCMOS33 } [get_ports { pb[3] }]; #IO_L21P_T3_DQS_33;Sche = X40
set_property -dict { PACKAGE_PIN Y15   IOSTANDARD LVCMOS33 } [get_ports { pb[0] }]; #IO_L21N_T3_DQS_33;Sche = X42
set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS33 } [get_ports { pb[2] }]; #IO_L22P_T3_33;Sche = X44
set_property -dict { PACKAGE_PIN AA14  IOSTANDARD LVCMOS33 } [get_ports { pb[1] }]; #IO_L22N_T3_33;Sche = X46
set_property -dict { PACKAGE_PIN Y13   IOSTANDARD LVCMOS33 } [get_ports { pb[4] }]; #IO_L23P_T3_33;Sche = X48

##LEDs
##From up to down
#set_property -dict { PACKAGE_PIN P20   IOSTANDARD LVCMOS33 } [get_ports { LD0 }]; #IO_L18P_T2_34;Sche = Y10
#set_property -dict { PACKAGE_PIN P22   IOSTANDARD LVCMOS33 } [get_ports { LD1 }]; #IO_L16N_T2_34;Sche = Y16
#set_property -dict { PACKAGE_PIN R20   IOSTANDARD LVCMOS33 } [get_ports { LD2 }]; #IO_L17P_T2_34;Sche = Y14
#set_property -dict { PACKAGE_PIN P21   IOSTANDARD LVCMOS33 } [get_ports { LD3 }]; #IO_L18N_T2_34;Sche = Y8
#set_property -dict { PACKAGE_PIN R21   IOSTANDARD LVCMOS33 } [get_ports { LD4 }]; #IO_L17N_T2_34;Sche = Y12

##Rotary Encoder

set_property -dict { PACKAGE_PIN V7    IOSTANDARD LVCMOS33 } [get_ports { pb[5] }]; #IO_L23P_T3_13;Sche = X102

#set_property -dict { PACKAGE_PIN T6    IOSTANDARD LVCMOS33 } [get_ports { EN_A }]; #IO_L19N_T3_VREF_13;Sche = X88
#set_property -dict { PACKAGE_PIN R6    IOSTANDARD LVCMOS33 } [get_ports { EN_B }]; #IO_L19P_T3_13;Sche = X86

#set_property -dict { PACKAGE_PIN W7    IOSTANDARD LVCMOS33 } [get_ports { RE_LD_R }]; #IO_L23N_T3_13;Sche = X104
#set_property -dict { PACKAGE_PIN AA12  IOSTANDARD LVCMOS33 } [get_ports { RE_LD_G }]; #IO_L7P_T1_13;Sche = X58
#set_property -dict { PACKAGE_PIN W6    IOSTANDARD LVCMOS33 } [get_ports { RE_LD_B }]; #IO_L24P_T3_13;Sche = X106

##Codec

##I2C for configuration SSM2603
set_property -dict { PACKAGE_PIN AA7   IOSTANDARD LVCMOS33 } [get_ports { I2C_scl_io }]; #IO_L14P_T2_SRCC_13;Sche = X89
set_property PULLUP true [get_ports SSM2603_I2C_scl_io]
set_property -dict { PACKAGE_PIN AA6   IOSTANDARD LVCMOS33 } [get_ports { I2C_sda_io }]; #IO_L14N_T2_SRCC_13;Sche = X91
set_property PULLUP true [get_ports SSM2603_I2C_sda_io]

set_property -dict { PACKAGE_PIN B21   IOSTANDARD LVCMOS33 } [get_ports { mute }]; #IO_L18P_T2_AD13P_35;Sche = Y64

set_property -dict { PACKAGE_PIN Y5    IOSTANDARD LVCMOS33 } [get_ports { mclk }]; #IO_L13N_T2_MRCC_13;Sche = X87

set_property -dict { PACKAGE_PIN AA16  IOSTANDARD LVCMOS33 } [get_ports { bclk }]; #IO_L18P_T2_33;Sche = X51

#set_property -dict { PACKAGE_PIN AA17  IOSTANDARD LVCMOS33 } [get_ports { pb_lrclk }]; #IO_L17P_T2_33;Sche = X47
#set_property -dict { PACKAGE_PIN AB17  IOSTANDARD LVCMOS33 } [get_ports { pb_sda }]; #IO_L17N_T2_33;Sche = X49

set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { rec_lrclk }]; #IO_L16P_T2_33;Sche = X43
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { rec_sda }]; #IO_L16N_T2_33;Sche = X45

##TFT Screen

##SPI for control
#set_property -dict { PACKAGE_PIN K21   IOSTANDARD LVCMOS33 } [get_ports { TFT_CS }]; #IO_L9N_T1_DQS_34;Sche = Y47
#set_property -dict { PACKAGE_PIN J20   IOSTANDARD LVCMOS33 } [get_ports { TFT_CLK }]; #IO_L9P_T1_DQS_34;Sche = Y49
#set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS33 } [get_ports { TFT_MOSI }]; #IIO_L8P_T1_AD10P_35;Sche = Y107

##I2C for touch screen
#set_property -dict { PACKAGE_PIN F22   IOSTANDARD LVCMOS33 } [get_ports { TSCL }]; #IO_L23N_T3_35;Sche = Y65
#set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { TSDA }]; #IO_L7P_T1_34;Sche = Y57

##TFT back light
#set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33 } [get_ports { TFT_BL }]; #IO_L9P_T1_DQS_AD3P_35;Sche = Y103

##RGB
#set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { RGB_CLK }]; #IO_L12P_T1_MRCC_35;Sche = Y91
#set_property -dict { PACKAGE_PIN C18   IOSTANDARD LVCMOS33 } [get_ports { RGB_EN }]; #IO_L11N_T1_SRCC_35;Sche = Y93

#set_property -dict { PACKAGE_PIN L19   IOSTANDARD LVCMOS33 } [get_ports { RGB_VS }]; #IO_L12N_T1_MRCC_34;Sche = Y35
#set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { RGB_HS }]; #IO_L12P_T1_MRCC_34;Sche = Y37

#set_property -dict { PACKAGE_PIN B15   IOSTANDARD LVCMOS33 } [get_ports { RGB_R[0] }]; #IO_L7N_T1_AD2N_35;Sche = Y109
#set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVCMOS33 } [get_ports { RGB_R[1] }]; #IO_L7P_T1_AD2P_35;Sche = Y111
#set_property -dict { PACKAGE_PIN J22   IOSTANDARD LVCMOS33 } [get_ports { RGB_R[2] }]; #IO_L8N_T1_34;Sche = Y51
#set_property -dict { PACKAGE_PIN J21   IOSTANDARD LVCMOS33 } [get_ports { RGB_R[3] }]; #IO_L8P_T1_34;Sche = Y53
#set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { RGB_R[4] }]; #IO_L7N_T1_34;Sche = Y55
#set_property -dict { PACKAGE_PIN H22   IOSTANDARD LVCMOS33 } [get_ports { RGB_R[5] }]; #IO_L24P_T3_AD15P_35;Sche = Y63

#set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports { RGB_G[0] }]; #IO_L10P_T1_AD11P_35;Sche = Y99
#set_property -dict { PACKAGE_PIN A17   IOSTANDARD LVCMOS33 } [get_ports { RGB_G[1] }]; #IO_L9N_T1_DQS_AD3N_35;Sche = Y101
#set_property -dict { PACKAGE_PIN K20   IOSTANDARD LVCMOS33 } [get_ports { RGB_G[2] }]; #IO_L11N_T1_SRCC_34;Sche = Y39
#set_property -dict { PACKAGE_PIN L22   IOSTANDARD LVCMOS33 } [get_ports { RGB_G[3] }]; #IO_L10N_T1_34;Sche = Y43
#set_property -dict { PACKAGE_PIN B17   IOSTANDARD LVCMOS33 } [get_ports { RGB_G[4] }]; #IO_L8N_T1_AD10N_35;Sche = Y105
#set_property -dict { PACKAGE_PIN L21   IOSTANDARD LVCMOS33 } [get_ports { RGB_G[5] }]; #IO_L10P_T1_34;Sche = Y45

#set_property -dict { PACKAGE_PIN K19   IOSTANDARD LVCMOS33 } [get_ports { RGB_B[0] }]; #IO_L11P_T1_SRCC_34;Sche = Y41
#set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { RGB_B[1] }]; #IO_L11P_T1_SRCC_35;Sche = Y95
#set_property -dict { PACKAGE_PIN A19   IOSTANDARD LVCMOS33 } [get_ports { RGB_B[2] }]; #IO_L10N_T1_AD11N_35;Sche = Y97
#set_property -dict { PACKAGE_PIN C19   IOSTANDARD LVCMOS33 } [get_ports { RGB_B[3] }]; #IO_L12N_T1_MRCC_35;Sche = Y89
#set_property -dict { PACKAGE_PIN F21   IOSTANDARD LVCMOS33 } [get_ports { RGB_B[4] }]; #IO_L23P_T3_35;Sche = Y67
#set_property -dict { PACKAGE_PIN G22   IOSTANDARD LVCMOS33 } [get_ports { RGB_B[5] }]; #IO_L24N_T3_AD15N_35;Sche = Y61




