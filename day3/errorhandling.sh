#!/bin/bash

function create_dir() {

  mkdir demo

}
if ! create_dir; then

	echo 'The dir already created'
	exit 1

fi
echo "This line should  not execute if error occure"

