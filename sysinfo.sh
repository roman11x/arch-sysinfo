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

#allow the user to know how many packages they have in their system in total
package_amount=$(pacman -Qq | wc -l)
user=$(whoami)

foreign_packages=$(pacman -Qm | wc -l)
native_packages=$(pacman -Qn | wc -l)

echo "$(date +"%F")"
echo "Hello $user you have $package_amount of packages installed in total"
echo "Out of $package_amount, $native_packages are official  and $foreign_packages are foreign (from the AUR or built from source)"


