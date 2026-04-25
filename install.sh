#!/bin/bash
set -e

REPO="https://github.com/DoctorPips/End4Custom.git"
REPO_NAME="End4Custom"
INSTALL_DIR="$HOME/.config/hypr"
CONFIG_DIR="$HOME/.config/hypr/custom"

echo -e "\e[34mInstalling End4 custom config...\e[31m"

mkdir -p "$INSTALL_DIR/custom/scripts"
git clone "$REPO"
mv "$REPO_NAME"/custom/*.conf "$INSTALL_DIR/custom"
mv "$REPO_NAME"/custom/scripts/*.sh "$INSTALL_DIR/custom/scripts"
rm -rf "$REPO_NAME"

echo -e "\e[32mInstallation Success!\e[0m"