#!/bin/bash

#Arch System Information and Pakcge Management Tool
#Author: Roman Nizkar, third year I.S student in Haifa University
#Date: 26th of October, 2025
#Description: Displays system information and manages packages for Arch/Arch based systems

echo "Arch System Info Tool v.01"
echo "========================="
echo ""
echo "Todo: System stats and package management"
echo ""

package_amount=$(pacman -Qq | wc -l)
user=$(whoami)

echo "$(date +"%F")"
echo "Hello $user you have $package_amount of packages installed via pacman"

