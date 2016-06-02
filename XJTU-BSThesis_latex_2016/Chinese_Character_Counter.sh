#!/bin/sh

#########################################################
# Author    : J.Mx                                      #
# Homepage  : id9502.github.io                          #
# Date      : 2016-06-03                                #
#                                                       #
# Usage     : run this script inside the folder which   #
#             contains your *.tex file                  #
#########################################################

printf "Chinese characters count (with punctuation):\n\n"
for path in *.tex
do
  only_char=`cat $path | tr -d "[:print:][:cntrl:]" | wc -m`
  printf "%-15s >> %d\n" $path $only_char
done
