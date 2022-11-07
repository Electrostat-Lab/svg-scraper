#!/bin/bash

##
# @brief A Script to introduce some variables to the build system.
# @copyright GNU Public Licence v3 (GPLv3) and others.
# @api Ccoffee-build-script-alpha-preview.
# @author pavl_g.
##

canonical_link=`readlink -f ${0}`
project_dir=`dirname $canonical_link`

bin="${project_dir}/bin"

usr_partition_icons="/usr/share/icons"

#* add more to the search location *#
# ................................. # 
search_locations=($usr_partition_icons)
