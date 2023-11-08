#!/bin/bash


function entry_decode() { echo "${*}" | base64 --decode ; }
IFS=',' read -r -a define_items <<< "$DART_DEFINES"
echo $IFS

# for index in "${!define_items[@]}"
# do
#     define_items[$index]=$(entry_decode "${define_items[$index]}");
# done

#printf "%s\n" "${define_items[@]}"|grep 'ˆDEFINE_' > ${SRCROOT}/Flutter/Define.xcconfig