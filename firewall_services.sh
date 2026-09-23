#!/bin/bash

# ==========================================
# Managing Firewall Services using firewalld
#
# Student Name:
# Roll Number:
# ==========================================

echo "======================================"
# Check current firewall services
echo " Listing all predefined/available services in firewalld..."
firewall-cmd --get-services


echo -e "\n Allowing HTTP service (runtime)..."
# Allow HTTP service
firewall-cmd --add-service=http


echo -e "\n Allowing HTTPS service (runtime)..."
# Allow HTTPS service
firewall-cmd --add-service=https


echo -e "\n Displaying currently enabled services in the default zone..."
# Display enabled services
firewall-cmd --list-services


echo -e "\n Removing HTTP service (runtime)..."
# Remove HTTP service
firewall-cmd --remove-service=http


echo -e "\n Allowing SSH service permanently..."
# Allow SSH permanently
firewall-cmd --permanent --add-service=ssh


echo -e "\n Reloading firewall configuration to apply permanent changes..."
# Reload firewall configuration
firewall-cmd --reload

echo -e "\n Verification after reload:"
firewall-cmd --list-services
