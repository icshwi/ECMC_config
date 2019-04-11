${SCRIPTEXEC} ${ECMC_CONFIG_ROOT}${HW_DESC}.cmd

#*********************NOTE:Timestamps not configured yet!! Only like normal I/O!

ecmcAsynPortDriverAddParameter(${ECMC_ASYN_PORT},"ec${ECMC_EC_MASTER_ID}.s${ECMC_EC_SLAVE_NUM}.INPIN_1","asynInt32",${ECMC_ASYN_SKIP_CYCLES})
ecmcAsynPortDriverAddParameter(${ECMC_ASYN_PORT},"ec${ECMC_EC_MASTER_ID}.s${ECMC_EC_SLAVE_NUM}.INPIN_2","asynInt32",${ECMC_ASYN_SKIP_CYCLES})
dbLoadTemplate("${ECMC_CONFIG_DB}ecmcEL1252.substitutions","P=${ECMC_PREFIX}, PORT=${ECMC_ASYN_PORT}, ADDR=${ECMC_ASYN_ADDR}, TIMEOUT=${ECMC_ASYN_TIMEOUT}, MASTER_ID=${ECMC_EC_MASTER_ID}, SLAVE_POS=${ECMC_EC_SLAVE_NUM}, HWTYPE=${ECMC_EC_HWTYPE}")
