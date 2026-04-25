#!/bin/bash
set -e

REPO="https://github.com/DoctorPips/End4Custom.git"
INSTALL_DIR="$HOME/.config/hypr"
CONFIG_DIR="$HOME/.config/hypr/custom"

if [ -d "$CONFIG_DIR" ]; then
	echo "Custom folder already exists."

	read -p "Overwrite it? (y/n): " choice

	if [[ "$choice" != "y" && "$choice" != "Y"]]; then
	echo "Aborted."
	exit 0
	fi

fi

echo "Installing Hyprland config..."

git clone "$REPO"