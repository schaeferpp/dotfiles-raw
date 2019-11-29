#!/bin/bash
# this function uses 3 arguments:
#     $1 is the first page of the range to extract
#     $2 is the last page of the range to extract
#     $3 is the input file
#     output file will be named "inputfile_pXX-pYY.pdf"
gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER \
   -dFirstPage=${1} \
   -dLastPage=${2} \
   -sOutputFile=${3%.pdf}_p${1}-p${2}.pdf \
   ${3}
