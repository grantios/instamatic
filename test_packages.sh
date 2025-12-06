#!/bin/bash

# Test script to show package loading order for hyprstation
echo "=== TESTING HYPRSTATION PACKAGE LOADING ==="
echo

# Reset arrays
unset EXTRA_PACKAGES
unset AUR_PACKAGES
unset SERVICES

echo "1. Loading default.sh..."
source ./insta/confs/default.sh
echo "   EXTRA_PACKAGES: ${#EXTRA_PACKAGES[@]} items"
echo "   AUR_PACKAGES: ${#AUR_PACKAGES[@]} items"
echo "   SERVICES: $SERVICES"
echo

echo "2. Loading station.sh bundle..."
source ./insta/confs/bundles/station.sh
echo "   EXTRA_PACKAGES: ${#EXTRA_PACKAGES[@]} items"
echo "   AUR_PACKAGES: ${#AUR_PACKAGES[@]} items"  
echo "   SERVICES: $SERVICES"
echo

echo "3. Loading hyprstation.sh..."
source ./insta/confs/hyprstation.sh
echo "   EXTRA_PACKAGES: ${#EXTRA_PACKAGES[@]} items"
echo "   AUR_PACKAGES: ${#AUR_PACKAGES[@]} items"
echo "   SERVICES: $SERVICES"
echo

echo "=== FINAL PACKAGE COUNTS ==="
echo "EXTRA_PACKAGES: ${#EXTRA_PACKAGES[@]} total"
echo "AUR_PACKAGES: ${#AUR_PACKAGES[@]} total"
echo "SERVICES: $SERVICES"
echo

echo "=== ALL EXTRA_PACKAGES ==="
printf '%s\n' "${EXTRA_PACKAGES[@]}"
echo

echo "=== ALL AUR_PACKAGES ==="
printf '%s\n' "${AUR_PACKAGES[@]}"
echo

echo "=== SERVICES ==="
echo "$SERVICES"
