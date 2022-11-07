#!/bin/bash

##
# @brief A Script to extract gnu scalables and pngs from linux based systems.
# @copyright GNU Public Licence v3 (GPLv3) and others.
# @api Ccoffee-build-script-alpha-preview.
# @author pavl_g.
##

canonical_link=`readlink -f ${0}`
project_dir=`dirname $canonical_link`

source "${project_dir}/constants.sh"
source "${project_dir}/variables.sh"
source "${project_dir}/abstract-extractables.sh"

function prepareExtractionProcess() {
    print "Started Extracting process ... " $WHITE_C

    prepare $bin

    if [[ ! $? -eq 0 ]]; then
        print "Preparation failed ... " $RED_C
        exit 500
    else 
        print "Preparation succeeded ... " $GREEN_C
    fi
}

function extractScalables() {
    print "Started Extracting scalables ... " $WHITE_C

    prepare "${bin}/${svg}"

    if [[ ! $? -eq 0 ]]; then
	    print "Scalables-Extraction Preparation failed ... " $RED_C
	    exit 500
    else 
	    print "Scalables-Extraction Preparation succeeded ... " $GREEN_C
    fi

    # extracts all the scalables to the bin/svg
    extract $search_locations $svg "${bin}/${svg}"

    if [[ ! $? -eq 0 ]]; then
	    print "Scalables-Extraction failed ... " $RED_C
	    exit 500
    else 
	    print "Scalables-Extraction succeeded ... " $GREEN_C
    fi
}

function extractPortables() {
    print "Started Extracting portables ... " $WHITE_C

    prepare "${bin}/${png}"

    if [[ ! $? -eq 0 ]]; then
	    print "Portables-Extraction Preparation failed ... " $RED_C
	    exit 500
    else 
	    print "Portables-Extraction Preparation succeeded ... " $GREEN_C
    fi

    # extracts all the portables to the bin/png
    extract $search_locations $png "${bin}/${png}"

    if [[ ! $? -eq 0 ]]; then
	    print "Portables-Extraction failed ... " $RED_C
	    exit 500
    else 
	    print "Portables-Extraction succeeded ... " $GREEN_C
    fi
}

prepareExtractionProcess
extractScalables
