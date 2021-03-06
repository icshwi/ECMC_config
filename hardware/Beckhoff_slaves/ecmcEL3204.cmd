############################################################
############# Information:
# Description: 4 channel PT100 temperature sensor input  (selectable range and other configs for sensors as SDO (not in this config yet))
#
# Bits: 16
# Connection: 2-wire 
#
# NOTE: NOT TESTED SINCE NO HARDWARE
#
############################################################


epicsEnvSet("ECMC_EC_HWTYPE"             "EL3204")
epicsEnvSet("ECMC_EC_VENDOR_ID"          "0x2")
epicsEnvSet("ECMC_EC_PRODUCT_ID"         "0x0c843052")

ecmcConfigOrDie "Cfg.EcSlaveVerify(0,${ECMC_EC_SLAVE_NUM},${ECMC_EC_VENDOR_ID},${ECMC_EC_PRODUCT_ID})"

#############  Reset terminal
ecmcConfigOrDie "Cfg.EcWriteSdo(${ECMC_EC_SLAVE_NUM},0x1011,0x1,1684107116,4)"

############# Config PDOS: Channel 1
epicsEnvSet("ECMC_EC_CHANNEL_ID"         "1")
epicsEnvSet("ECMC_EC_PDO"                "0x1a00")
epicsEnvSet("ECMC_EC_PDO_ENTRY"          "0x6000")

< ../hardware/ecmcEL32XX-chX-analogInput

############# Config PDOS: Channel 2
epicsEnvSet("ECMC_EC_CHANNEL_ID"         "2")
epicsEnvSet("ECMC_EC_PDO"                "0x1a01")
epicsEnvSet("ECMC_EC_PDO_ENTRY"          "0x6010")

< ../hardware/ecmcEL32XX-chX-analogInput

############# Config PDOS: Channel 3
epicsEnvSet("ECMC_EC_CHANNEL_ID"         "3")
epicsEnvSet("ECMC_EC_PDO"                "0x1a02")
epicsEnvSet("ECMC_EC_PDO_ENTRY"          "0x6020")

< ../hardware/ecmcEL32XX-chX-analogInput

############# Config PDOS: Channel 4
epicsEnvSet("ECMC_EC_CHANNEL_ID"         "4")
epicsEnvSet("ECMC_EC_PDO"                "0x1a03")
epicsEnvSet("ECMC_EC_PDO_ENTRY"          "0x6030")

< ../hardware/ecmcEL32XX-chX-analogInput

