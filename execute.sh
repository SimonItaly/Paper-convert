#!/bin/bash
#
# Restore old trash icons and folders colour to Paper-icon-theme
#
# Author:  SimonItaly
# Version: 0.1
#

echo "$(tput setaf 1)$(tput setab 7)Restore old trash icons and folders colour to Paper-icon-theme$(tput sgr 0)"

if dpkg -l paper-icon-theme &> /dev/null; then

	sudo ./scripts/Paper-colour.sh
	sudo ./scripts/Paper-trash.sh

	sudo gtk-update-icon-cache -q /usr/share/icons/Paper
	echo "Icon cache update: done"
	echo "Exiting..."
else
	echo "Paper-icon-theme is not installed"
	echo "Why are you using this?"
fi
