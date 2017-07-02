#!/bin/bash

# Exit script if return code != 0
set -e

source /root/functions.sh

echo "Installing wkhtmltopdf"
pacman -S --noconfirm --noprogressbar --color=never wkhtmltopdf xvfb

# Cleanup
pacman_cleanup
