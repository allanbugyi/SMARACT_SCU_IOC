#!../../bin/linux-x86_64/scu

< envPaths

cd "${TOP}"

# Configure StreamDevice paths
epicsEnvSet("STREAM_PROTOCOL_PATH", "../../proto")

## Register all support components
dbLoadDatabase ("${TOP}/dbd/scu.dbd")
scu_registerRecordDeviceDriver pdbbase

drvAsynIPPortConfigure("stt", "10.31.35.16:4001", 0, 0, 0)
asynSetTraceMask("stt", -1, 0x9)
asynSetTraceIOMask("stt", -1, 0x2)

## Load record instances
dbLoadRecords("${TOP}/db/scu.db","P=SMARACT:, R=STT1:, PORT=stt")

cd "${TOP}/iocBoot/${IOC}"
iocInit

dbpf SMARACT:STT1:AMPLITUDE 1000
dbpf SMARACT:STT1:FREQUENCY 1000
dbpf SMARACT:STT1:STEPS 100
dbpf SMARACT:STT1:CHANNEL 1
#dbpf SMARACT:STT1:SET_STEP_PARAMETERS.PROC 1
#dbpf SMARACT:STT1:MOVEUP.PROC 1
dbpf SMARACT:STT1:ERROR_CODE.PROC 1
