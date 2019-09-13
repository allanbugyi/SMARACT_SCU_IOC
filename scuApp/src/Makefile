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

# Include dbd files from all support applications:
#scu_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#scu_LIBS += xxx

# scu_registerRecordDeviceDriver.cpp derives from scu.dbd
scu_SRCS += scu_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
scu_SRCS_DEFAULT += scuMain.cpp
scu_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#scu_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
scu_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

