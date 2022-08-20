#!/bin/bash
gpu(){

declare -a MEMORY_LIST=( $(nvidia-smi -q -d MEMORY  | grep -C 3 FB | grep Used | awk '{print $3}') )
max=${MEMORY_LIST[0]}
min=${MEMORY_LIST[0]}

for i in ${MEMORY_LIST[*]}; do
  ((x=x+1))
  let q=$x-1
  (( i >= max )) && max=$i
  (( i <= min )) && min=$i && j=$q
done

export VGL_DISPLAY=":0.$j" ; vglrun $@

#    declare -p GPU_LIST
    MEMORY_LIST=()
unset q
unset g
unset x
unset i
unset j
}
