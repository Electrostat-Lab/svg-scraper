#!/bin/bash

function print() {
    local data=$1
    local color=$2
    echo -e "${color} ${data}"
    echo -e $RESET_Cs
}

function prepare() {
    local output=$1
    
    if [[ -e $output ]]; then
        return 0
    fi
    
    mkdir -v $output
    
    return $?
}

function extract() {
    local search_locations=$1
    local extension=$2
    local output=$3
    
    for ((i=0; i<${#search_locations[@]}; i++)); do	
        scalables=`find "${search_locations[i]}" -name "*.${extension}"`
        cp -ruv $scalables $output
    done
    
    return $?
}
