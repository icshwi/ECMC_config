${SCRIPTEXEC}( ${ECMC_config_DIR}ecmc_axis.cmd )
dbLoadRecords("${ECMC_CONFIG_DB}ecmcDefaultAsynParamsAxis.db","P=${ECMC_PREFIX},AXIS_NAME=${ECMC_MOTOR_NAME},AXIS_NO=${ECMC_AXIS_NO},PORT=${ECMC_ASYN_PORT},ADDR=0,TIMEOUT=1")
# Load diagnostic array record (includes most relevant axis data)
${SCRIPTEXEC}( ${ECMC_config_DIR}ecmc_axis_diag.cmd )
