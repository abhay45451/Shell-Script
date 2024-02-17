#!/bin/bash
<< comment
$1 is folder name
$2 is first range
$3 is last range
comment

for (( i=$2; i<=$3; i++ ))
do 
	mkdir $1$i
done
