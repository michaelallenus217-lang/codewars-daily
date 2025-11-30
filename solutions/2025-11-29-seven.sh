#!/bin/bash

# Author: Michael Allen
# Date: 2025-11-29
# Problem: Seven

seven () {
    local m=$1
    local steps=0
    
    #remove leading minus for abs comparison
    local abs_m=${m#-}
    
    while [ "${#abs_m}" -gt 2 ]; do
      local y=$(echo "$m % 10" | bc)
      local x=$(echo "$m / 10" | bc)
      m=$(echo "$x - 2 * $y" | bc )
      
      #handle negative (absolute value)
      abs_m=${m#-}
      
      ((steps++))
    done
    
    echo "$abs_m, $steps"
}
seven "$1"
