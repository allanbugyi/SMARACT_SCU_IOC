SMARACT SCU IOC for STT mounts
==============================
Brazilian Synchrotron Light National Laboratory - LNLS/CNPEM, Campinas 10/23/2019
Author: Allan S. B. Bugyi
Contact: allan.bugyi@lnls.br
Status: Tested and Validated.

Functionalities
===============
Moves the STT mount up and down on both channels.

Dependencies
============
- EPICS Base 3.15.6;
- SynApps 6.0;
- C and C++ compilers;
- Make.

Running the IOC
===============
The IOC communicates with the SCU controller through ASCII commands. For testing, it was used a serial-to-ethernet converter (Moxa Nport), and it was validated. The PVs that are associated with the movements commands are pretty straightfoward and, they make use of streamdevice for sending commands.

