#!/bin/bash

awk 'BEGIN{FS = ","} {arr[$13]+=$NF} END {for (i in arr) {if(arr[i] != 0) print i,arr[i]}}' Sample-Superstore.csv | sort -gk2 | head -n1
