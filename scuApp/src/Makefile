TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = scu
# scu.dbd will be created and installed
DBD += scu.dbd

# scu.dbd will be made up from these files:
scu_DBD += base.dbd
scu_DBD += stream.dbd
scu_DBD += asyn.dbd
scu_DBD += drvAsynIPPort.dbd

scu_LIBS += asyn stream

# scu_registerRecordDeviceDriver.cpp derives from scu.dbd
scu_SRCS += scu_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
scu_SRCS_DEFAULT += scuMain.cpp
scu_SRCS_vxWorks += -nil-

# Finally link to the EPICS Base libraries
scu_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

