#!/bin/bash

##
# @brief A Script to introduce some constants to the build system.
# @copyright GNU Public Licence v3 (GPLv3) and others.
# @api Ccoffee-build-script-alpha-preview.
# @author pavl_g.
##

svg="svg"
png="png"

# Bash colors using ANSI
# favored the 24-bit (3 colors * 8-bit for each one<255>) color system
# Colors
# process failure color
RED_C='\033[38;2;255;50;50m'
# success color
GREEN_C='\e[38;2;0;180;0m'
# extra
WHITE_C='\e[38;2;255;255;255m'

RESET_Cs='\033[0;0m'
