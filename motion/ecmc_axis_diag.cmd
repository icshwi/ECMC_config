# Load axis diagnostic string record containing most important diagnostic for one axis
dbLoadRecords("${ECMC_CONFIG_DB}ecmcAsynAxisDiagArray.db","PREFIX=${ECMC_PREFIX},PORT=${ECMC_ASYN_PORT},ADDR=0,TIMEOUT=1,SIZE=256,MOTOR_NAME=$(ECMC_MOTOR_NAME),AXIS_NO=$(ECMC_AXIS_NO)")
