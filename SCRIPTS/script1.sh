
#!/bin/bash

echo "===================================="
echo " Open Source Audit - $(whoami)"
echo "===================================="

echo "Distro    : $(lsb_release -d | cut -f2)"
echo "Kernel    : $(uname -r)"
echo "User      : $(whoami)"
echo "Home Dir  : $HOME"
echo "Uptime    : $(uptime -p)"
echo "Date/Time : $(date)"

echo "OS License: GNU General Public License v2"
echo "Software  : Python - PSF License"

echo "===================================="
