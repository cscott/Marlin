#! /bin/bash

IDE_VERSION=$(xip list ArduinoIde | cut -d/ -f2 | tr '.' '0')

make -j8 -f Makefile V=1 ARDUINO_VERSION=$IDE_VERSION ARDUINO_INSTALL_DIR=/opt/arduino AVR_TOOLS_PATH=/usr/bin/ HARDWARE_MOTHERBOARD=302
#make -j8 -f Makefile V=1 ARDUINO_VERSION=10613 ARDUINO_INSTALL_DIR=/opt/arduino AVR_TOOLS_PATH=/usr/bin/ HARDWARE_MOTHERBOARD=302
