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
echo "System uptime: $(uptime -p)"
echo "$(df / -h | awk '{print $2, $3, $5}')"
echo "$(free -h | grep "Mem:" | awk '{print "Total Ram: " $2, "Used: " $3, "Available: " $7}')"
echo "$(free -h | grep "Swap:" | awk '{print "Total Swap: " $2, "Used: " $3, "Available: " $4}')"
echo "Hello $user you have $package_amount of packages installed in total"
echo "Out of $package_amount, $native_packages are official  and $foreign_packages are foreign (from the AUR or built from source)"
echo
echo "Your most recent AUR package upgrades are:"
grep "upgraded" /var/log/pacman.log | grep -f <(pacman -Qmq) | tail -n 10 | awk '{print $1, $4}'


#use the aur helper installed on the user's system for package managment
AUR_helper=""
if command -v paru &> /dev/null; then
	AUR_helper="paru"
elif command -v yay &> /dev/null; then
	AUR_helper="yay"
else
	AUR_helper="pacman"
fi
echo "Your aur helper is $AUR_helper"




