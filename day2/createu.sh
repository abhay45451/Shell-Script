#!/bin/bash

read -p "enter user names: " user

echo "you entered $user"

sudo useradd -m $user

echo "user created"




