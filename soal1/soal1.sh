#!/bin/bash

#jawaban_1a
awk 'BEGIN{FS = ","} {arr[$13]+=$NF} END {for (i in arr) {if(arr[i] != 0) print i,arr[i]}}' Sample-Superstore.csv | sort -gk2 | head -n1

#jawaban_1b
awk 'BEGIN{FS = ","} {if($13 == "Central") arr[$11]+=$NF} END {for (i in arr) {if(arr[i] != 0) print i,arr[i]}}' Sample-Superstore.csv | sort -nk2 | head -n2

#jawaban_1c
awk 'BEGIN{FS = ","} {if($11 == "Texas" || $11 == "Illinois") arr[$17] += $NF} END{for(i in arr) print i,arr[i]}' Sample-Superstore.csv | sort -nk2
