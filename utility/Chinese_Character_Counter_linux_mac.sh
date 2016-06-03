#! /bin/bash

#########################################################
# Author    : J.Mx                                      #
# Homepage  : id9502.github.io                          #
# Date      : 2016-06-03                                #
#                                                       #
# Usage     : run this script inside the folder which   #
#             contains your *.tex file                  #
#                                                       #
#             to make it executable, use command:       #
#             chmod +x <this/name>.sh                   #
#########################################################

printf "Chinese characters count (with punctuation):\n\n"
for path in *.tex
do
  only_char=`sed 's/%.*$//' $path | tr -d "[:print:][:cntrl:]" | wc -m`
  printf "%-15s >> %d\n" $path $only_char
done
