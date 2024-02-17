#!/bin/bash

<< info
This is if else 
script
info

function is_loyal() {
read -p "$1 ne mud ke kise dekha: " bandi
read -p "$1 ka pyar %; " pyar

if [[ bandi == "daya bhabhi" ]]
then
	echo "$1 is loyal"

elif [[ $pyar -ge 100 ]]

then 
	echo "$1 is loyal"
else 
	echo "$1 is not loyal"
fi
}

is_loyal jetha

